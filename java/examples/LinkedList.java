class LinkedList {

  private int value;
  private LinkedList next = null;

  public LinkedList(int x) {
    this.value = x;
  }

  private LinkedList(int x, LinkedList next) {
    this.value = x;
    this.next = next;
  }

  public void prepend(int x) {
    LinkedList newnext = new LinkedList(this.value, this.next);
    this.value = x;
    this.next = newnext;
  }

  public void append(int x) {
    if (this.next == null) {
      LinkedList newnext = new LinkedList(x);
      this.next = newnext;
    } else {
      this.next.append(x);
    }
  }

  public void print() {
    System.out.println(this.value);
    if (this.next != null) {
      this.next.print();
    }
  }

  public static void main(String[] args) {
    LinkedList list = new LinkedList(2);
    list.prepend(1);
    list.append(3);
    list.print();
  }
}