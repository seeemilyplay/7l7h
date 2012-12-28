class Account {

  private double balance = 0.0;

  public Account() {
    super();
  }

  public double getBalance() {
    return balance;
  }

  public void deposit(double amount) {
    this.balance = this.balance + amount;
  }

  public void withdraw(double amount) {
    this.balance = this.balance - amount;
  }

  public static void main(String[] args) {
    Account account = new Account();
    account.deposit(1500.0);
    System.out.println("Pay day! Balance is €" + account.getBalance());
    account.withdraw(50.0);
    System.out.println("Withdrew some cash. Balance is €" + account.getBalance());
  }
}