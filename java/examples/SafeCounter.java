import java.util.concurrent.*;

class SafeCounter {
  private int value = 0;

  public SafeCounter() {
    super();
  }

  public synchronized int getValue() {
    return value;
  }

  public synchronized void increment() {
    this.value = this.value + 1;
  }

  public static void main(String[] args) throws InterruptedException {
    final SafeCounter counter = new SafeCounter();
    Runnable task = new Runnable() {
      public void run() {
        for (int i=0; i<1000000; i++) {
          counter.increment();
        }
      }
    };
    ExecutorService executor = Executors.newFixedThreadPool(2);
    executor.execute(task);
    executor.execute(task);
    executor.shutdown();
    executor.awaitTermination(30, TimeUnit.SECONDS);
    System.out.println("Counter is " + counter.getValue());
  }
}