// lib core // Shared

class MyValidation {
  static final RegExp nameRegExp = RegExp('[a-zA-Z]');
  static final RegExp phoneNumberRegExp =
      RegExp(r'/^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/');
  static final RegExp passwordRegExp =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  static final RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
 

 
  //  nameValidate method
  String? nameValidate(String? input) {
    // Check if the input is null or empty
    if (input == null || input.isEmpty) {
      return "من فضلك ادخل الاسم";
    }

    // Check if the input matches the regular expression
    if (nameRegExp.hasMatch(input)) {
      return null;
    } else {
      return "الاسم غير صحيح";
    }
  }

  // numberValidate  method
  String? emailRegexValidate(String? input) {
    // Check if the input is null or empty
    if (input == null || input.isEmpty) {
      return "من فضلك ادخل البريد الالكتروني";
    }

    // Check if the input matches the regular expression
    if (emailRegExp.hasMatch(input)) {
      return null;
    } else {
      return "البريد الالكتروني غير صحيح";
    }
  }

  // passwordValidate method

// numberValidate  method
  String? passwordValidate(String? input) {
    // Check if the input is null or empty
    if (input == null || input.isEmpty) {
      return "من فضلك ادخل كلمة المرور";
    }

    // Check if the input matches the regular expression
    if (passwordRegExp.hasMatch(input)) {
      return null;
    } else {
      return "كلمة المرور غير صحيحة";
    }
  }
}
