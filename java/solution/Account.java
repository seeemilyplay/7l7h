import java.util.concurrent.*;

class Account {

  private double limit = 0.0;
  private double balance = 0.0;

  public Account() {
    super();
  }

  public synchronized void setLimit(double limit) {
    this.limit = limit;
  }

  public synchronized double getBalance() {
    return balance;
  }

  public synchronized void deposit(double amount) {
    this.balance = this.balance + amount;
  }

  public synchronized double withdraw(double amount) {
    double newBalance = Math.max(this.limit, this.balance - amount);
    double withdrawn = balance - newBalance;
    this.balance = newBalance;
    return withdrawn;
  }

  public static void main(String[] args) throws InterruptedException {
    final Account account = new Account();
    account.setLimit(-50);
    ExecutorService executor = Executors.newFixedThreadPool(2);
    executor.execute(new Runnable() {
      public void run() {
        for (int i=100; i>0; i--) {
          account.deposit(i);
          System.out.println("deposited " + i);
        }
      }
    });
    executor.execute(new Runnable() {
      public void run() {
        for (int i=0; i<200; i++) {
          double w = account.withdraw(i);
          System.out.println("withdrawn " + w + " (wanted " + i + ")");
        }
      }
    });
    executor.shutdown();
    executor.awaitTermination(30, TimeUnit.SECONDS);
    System.out.println("Balance is " + account.getBalance());
  }
}