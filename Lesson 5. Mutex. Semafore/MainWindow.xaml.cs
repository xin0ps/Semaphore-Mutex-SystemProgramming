using System.Collections.ObjectModel;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Lesson_5._Mutex._Semafore
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public ObservableCollection<Thread> CreatingThreads { get; set; }
        public ObservableCollection<Thread> WaitingThreads { get; set; }
        public ObservableCollection<Thread> WorkingThreads { get; set; }

        public Semaphore _semaphore {  get; set; }

        public MainWindow()
        {
            InitializeComponent();

            
            CreatingThreads = new ObservableCollection<Thread>();
            WaitingThreads = new ObservableCollection<Thread>();
            WorkingThreads = new ObservableCollection<Thread>();
            DataContext = this;

        }

        private void BtnClick(object sender, RoutedEventArgs e)
        {

            Thread thread = new Thread(() => 
            {
                var th=Thread.CurrentThread;
                Application.Current.Dispatcher.Invoke(() =>
                {
                    CreatingThreads.Remove(th);
                    WaitingThreads.Add(th);
                    int ct = Convert.ToInt32(counterText.Text);
                    _semaphore =new Semaphore(ct, ct,"Semaphore");

                });
            
              
            _semaphore.WaitOne();

                Application.Current.Dispatcher.Invoke(() =>
                {
                    WaitingThreads.Remove(th);
                    WorkingThreads.Add(th);

                });
                Thread.Sleep(5000);
                _semaphore.Release();

                Application.Current.Dispatcher.Invoke(() =>
                {
                   
                    WorkingThreads.Remove(th);

                });

            });
            thread.Name = "Thread " + thread.ManagedThreadId;
            CreatingThreads.Add(thread);

        }

        private void DoubleClick(object sender, MouseButtonEventArgs e)
        {
            ListView? view = sender as ListView;

            if(view.SelectedItem!=null)
            {
                Thread thread = (Thread)view.SelectedItem;
                thread.Start();

            }


        }
    }
}