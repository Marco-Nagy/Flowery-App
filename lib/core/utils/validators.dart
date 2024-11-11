class Validators {
  static String? validateNotEmpty({String? title, String? value}) {
    if (_isEmpty(value)) {
      return ("$title is required");
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (_isEmpty(value)) {
      return ("Email is required");
    }

    var regex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if (!regex.hasMatch(value!)) {
      return 'Invalid email address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (_isEmpty(value)) {
      return 'Password is required';
    }

    var regex = RegExp(
        r"(?=^.{8,}$)(?=.*[!@#$%^&*]+)(?![.\\n])(?=.*[A-Z])(?=.*[a-z])(?=.*\d).*$");

    if (!regex.hasMatch(value!)) {
      return 'Must contains A-Z, a-z, @-#-&.. , 1-9';
    }

    return null;
  }

  static String? validatePasswordConfirmation(
      {String? password, String? confirmPassword}) {
    if (_isEmpty(password)) {
      return 'Password is required';
    }
    if (_isEmpty(confirmPassword)) {
      return 'Confirm Password is required';
    }

    if (password != confirmPassword) {
      return 'Passwords do not match';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (_isEmpty(value)) {
      return 'Phone Number is required';
    }

    var regex = RegExp(
      r"^(?:\+20|0)?1[0125]\d{8}$",
    );

    if (!regex.hasMatch(value!)) {
      return """Must be 11 digits starts with (+20) or 0
Prefix is 10, 11, 12 or 15 only""";
    }

    return null;
  }

  static bool _isEmpty(String? value) {
    return value == null || value.trim().isEmpty;
  }

  static bool hasLowerCase(String password) {
    return RegExp(r'^(?=.*[a-z])').hasMatch(password);
  }

  static bool hasUpperCase(String password) {
    return RegExp(r'^(?=.*[A-Z])').hasMatch(password);
  }

  static bool hasNumber(String password) {
    return RegExp(r'^(?=.*?[0-9])').hasMatch(password);
  }

  static bool hasSpecialCharacter(String password) {
    return RegExp(r'^(?=.*?[#?!@$%^&*-])').hasMatch(password);
  }

  static bool hasMinLength(String password) {
    return RegExp(r'^(?=.{8,})').hasMatch(password);
  }
}
