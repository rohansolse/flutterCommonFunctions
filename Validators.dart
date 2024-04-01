class TextFieldValidator {
  String? validateUserName(username) {
    if (username == null || username.isEmpty) {
      return "Please enter your registered email.";
    } else {
      return null;
    }
  }

  String? validatePassword(password) {
    if (password == null || password.isEmpty) {
      return "Please enter your password.";
    } else {
      return null;
    }
  }

  String? validateStrongPassword(password, {bool showValidationMsg = true}) {
    bool isPasswordStrong =
        RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[^\w\d\s]).{8,}$')
            .hasMatch(password);
    if (isPasswordStrong) {
      return null;
    } else {
      return showValidationMsg
          ? "The password must be at least 8 characters long also contain minimum 1 numeric,special character, uppercase and lowercase letter."
          : "";
    }
  }

  String? validateName(name, String feildName) {
    if (name == null || name.toString().trim().isEmpty) {
      return "$feildName is required.";
    } else {
      return null;
    }
  }

  String? validateEmail(name) {
    String pattern1 = r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$';
    bool emailValid = RegExp(pattern1).hasMatch(name);
    if (emailValid) {
      return null;
    } else {
      return "Please enter a valid email-id";
    }
  }

  String? validateDate(date) {
    String dateFormat = r"^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/\d{4}$";
    bool emailValid = RegExp(dateFormat).hasMatch(date);
    if (emailValid) {
      return null;
    } else {
      return "Invalid date format";
    }
  }

  String? validatePhone(name) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = RegExp(pattern);
    if (name.length == 0) {
      return 'Please enter phone number';
    } else if (!regExp.hasMatch(name)) {
      return 'Please enter valid phone number';
    }
    return null;
  }

  String? validateAmount(amount, String fieldName, {bool? showQuantityMsg}) {
    try {
      if (amount == null || amount.isEmpty || double.parse(amount) <= 0) {
        return showQuantityMsg ?? false
            ? "Quantity must be greater than 0."
            : "$fieldName is required.";
      } else {
        if (amount.toString().split("").first == ".") {
          return "Please enter a valid $fieldName";
        }
        return null;
      }
    } on Exception {
      return "Please enter a valid $fieldName";
    }
  }

  String? validateAmountWithZero(amount, String fieldName) {
    try {
      if (amount == null || amount.isEmpty || double.parse(amount) < 0) {
        return "$fieldName is required.";
      } else {
        if (amount.toString().split("").first == ".") {
          return "Please enter a valid $fieldName";
        }
        return null;
      }
    } catch (e) {
      return "Please enter a valid $fieldName";
    }
  }

  String? validateAmountCount(amount, String fieldName) {
    if (double.parse(amount) < 1) {
      return "$fieldName is required.";
    } else {
      return null;
    }
  }

  String? validateAgeCount(amount) {
    if (double.parse(amount) > 120) {
      return "Age can not be grater than 120.";
    } else {
      return null;
    }
  }

  String? validateQuantity(value, {bool? showDifferentMsg}) {
    if (value == null || value.isEmpty || int.parse(value) <= 0) {
      return showDifferentMsg ?? false
          ? "Quantity must be greater than 0."
          : "Quantity is required.";
    } else {
      return null;
    }
  }

  bool checkIfEmail(String email) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(p);

    return regExp.hasMatch(email);
  }

  bool isNumeric(String s) {
    if (s == "") {
      return false;
    }
    return double.tryParse(s) != null;
  }
}
