void main() {
  PC pc = PC(
      name: 'BloodSport300',
      price: 1000,
      screen: 32,
      storage: 1024,
      haveKeyboard: true,
      haveMouse: true);

  Laptop laptop = Laptop(
      haveTouchPad: true,
      name: 'Lenova 2',
      price: 600,
      screen: 21,
      storage: 524);

  print(pc);
  print(laptop);

  pc.start();
  laptop.start();

  pc.finish();
  laptop.finish();
}

abstract class Computer {
  String? name;
  int? price;

  //int battery;
  int? screen;
  int? storage;

  Computer(
      {required this.name,
      required this.price,
      required this.screen,
      required this.storage});

  void start();

  void finish();
}

class PC extends Computer {
  bool? haveMouse;
  bool? haveKeyboard;

  PC(
      {required this.haveKeyboard,
      required this.haveMouse,
      required super.name,
      required super.price,
      required super.screen,
      required super.storage});

  @override
  String toString() {
    return 'PC{ name: ${super.name}, price: ${super.price}, screen: ${super.screen}, storage: ${super.storage} ,haveMouse: $haveMouse, haveKeyboard: $haveKeyboard}';
  }

  @override
  void start() {
    // TODO: implement start
    print('with button in bloc system');
  }

  @override
  void finish() {
    // TODO: implement finish
    print('in system');
  }
}

class Laptop extends Computer {
  bool? haveTouchPad;

  Laptop(
      {required this.haveTouchPad,
      required super.name,
      required super.price,
      required super.screen,
      required super.storage});

  @override
  String toString() {
    return 'Laptop{ name: ${super.name}, price: ${super.price}, screen: ${super.screen}, storage: ${super.storage} ,haveTouchPad: $haveTouchPad,}';
  }

  @override
  void start() {
    // TODO: implement start
    print('with button in laptop');
  }

  @override
  void finish() {
    // TODO: implement finish
    print('in system');
  }
}
