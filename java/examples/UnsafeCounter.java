import java.util.concurrent.*;

class UnsafeCounter {
  private int value = 0;

  public UnsafeCounter() {
    super();
  }

  public int getValue() {
    return value;
  }

  public void increment() {
    this.value = this.value + 1;
  }

  public static void main(String[] args) throws InterruptedException {
    final UnsafeCounter counter = new UnsafeCounter();
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