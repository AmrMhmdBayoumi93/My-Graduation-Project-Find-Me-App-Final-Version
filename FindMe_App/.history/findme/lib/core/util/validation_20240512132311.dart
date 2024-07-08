        // lib core // Shared

class MyValidation {          

    static final RegExp nameRegExp = RegExp('[a-zA-Z]'); 
   static final RegExp phoneNumberRegExp = RegExp( r'/^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/');
     static final RegExp nameRegExp = RegExp('[a-zA-Z]'); 
 //r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$
    //  nameValidate method
    String? nameValidate(String? input) {
        // Check if the input is null or empty
        if (input == null || input.isEmpty) {
            return "Input can't be null or empty";
        }


        // Check if the input matches the regular expression
        if (nameRegExp.hasMatch(input)) {
            return null;
        } else {
            return "Invalid name";
        }
    }



   // numberValidate  method
String? phoneNumberValidate(String? input) {
        // Check if the input is null or empty
        if (input == null || input.isEmpty) {
            return "Input can't  be null or empty";
        }


        // Check if the input matches the regular expression
        if (phoneNumberRegExp.hasMatch(input)) {
            return null;
        } else {
            return "Invalid name";
        }
    }


              // passwordValidate method
              
// numberValidate  method
String? passwordValidate(String? input) {
        // Check if the input is null or empty
        if (input == null || input.isEmpty) {
            return "Input can't  be null or empty";
        }


        // Check if the input matches the regular expression
        if (phoneNumberRegExp.hasMatch(input)) {
            return null;
        } else {
            return "Invalid name";
        }
    }







}
