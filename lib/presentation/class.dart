class Gettextform {
  String email;
  String password;
  bool isNotEmpty;
  bool park() {
    return true;
  }

  Gettextform(
      {required this.email, required this.password, this.isNotEmpty = false});
}

class Checkmarklist {
  bool value;
  String title;
  Checkmarklist({required this.title, this.value = false});
}
