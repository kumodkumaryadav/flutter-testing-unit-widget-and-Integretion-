class Validator{

  //email validation method
 static String? validateEmail(String email){

  //for checking empty email
  if(email.isEmpty){
    return "can't be empty";
  }

  //for checking invalid and valid  email
  String parrern=r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  RegExp regExp=RegExp(parrern);
  if(!regExp.hasMatch(email))
  {
    return "Please enter a valid email id";
  }
  return null;//for valid email


 }


//password validation method
static String? validatePassword (String password){
  if(password.isEmpty){
    return "can't be empty";
  }
  if(password.length<8)
  {
    return "password must be atleast 8 char long";
  }
  String pattern=r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  RegExp regExp=RegExp(pattern);
  // if(regExp.hasMatch(password)){
  //   return null;
  // }
  if(!regExp.hasMatch(password) && password.length>7){
    return "please enter valid password";
  }
  return null;
  
}



}