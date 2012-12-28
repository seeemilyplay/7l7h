class IntBox {

  private int value;

  public IntBox(int x) {
    this.value = x;
  }

  public int getValue() {
    return value;
  }

  public void setValue(int x) {
    this.value = x;
  }

  public static void increment(IntBox box) {
    box.setValue(box.getValue() + 1);
  }

  public static void main(String[] args) {
    IntBox box = new IntBox(5);
    increment(box);
    System.out.println("Box contains " + box.getValue());
  }
}