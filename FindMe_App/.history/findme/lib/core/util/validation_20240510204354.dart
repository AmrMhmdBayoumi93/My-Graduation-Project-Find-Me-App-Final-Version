        // lib core // Shared

class MyValidation {          

    static final RegExp nameRegExp = RegExp('[a-zA-Z]'); 
   static final RegExp numberRegExp = RegExp(r'\d');
 

    //  nameValidate method
    String? nameValidate(String? input) {
        // Check if the input is null or empty
        if (input == null || input.isEmpty) {
            return "Input cannot be null or empty";
        }


        // Check if the input matches the regular expression
        if (nameRegExp.hasMatch(input)) {
            return null;
        } else {
            return "Invalid name";
        }
    }



   // numberValidate  method
String? numberValidate(String? input) {
        // Check if the input is null or empty
        if (input == null || input.isEmpty) {
            return "Input cannot be null or empty";
        }


        // Check if the input matches the regular expression
        if (numberRegExp.hasMatch(input)) {
            return null;
        } else {
            return "Invalid name";
        }
    }


              // passwordValidate method
              








}
