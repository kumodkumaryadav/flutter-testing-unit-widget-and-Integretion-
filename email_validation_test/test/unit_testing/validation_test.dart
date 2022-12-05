

import 'package:email_validation_test/validator_class.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){


//****************Email validation**********************
group("Entire email validation test cases are in signle group(Same type of test can be grouped together) ", (){


  //for empty email
  test("Email validation for empty email", (){
    //arrange
    var result=Validator.validateEmail("");
    //assert
    expect(result, "can't be empty");
  });
  //for invalid email
  test("Email validation for invalid email", (){

    //arrange and act
    var result =Validator.validateEmail("fghdsjk");
    //assert
    expect(result, "Please enter a valid email id");

  });

  //for valid email
  test("Email validation for valid email", (){
    var result=Validator.validateEmail("abc@gmail.com");
    expect(result, null);
  });

});

group("Entire password validation", (){
  
  //************validation testing for password********************

  //validate empty paswword
  test("password validation for empty password", (){
    //arrange
    var result=Validator.validatePassword("");
    //assert
    expect(result, "can't be empty");
  });

   //password length validation
  test("password length validation", (){
    var result=Validator.validatePassword("dsh4");
    expect(result, "password must be atleast 8 char long");
  });
  
//password invalid test
  test("paswword validation for invalid password", (){

    //password must contains 
    // should contain at least one upper case
    // should contain at least one lower case
    // should contain at least one digit
    // should contain at least one digit
    // Must be at least 8 characters in length 
    var result=Validator.validatePassword("Kumod2022");
    
    expect(result, "please enter valid password");
  });
//password valid test
test("password validation for valid paswword", (){
  var result=Validator.validatePassword("*Kumod2022#");
  expect(result, null);
});
});

  // //for empty email
  // test("Email validation for empty email", (){
  //   //arrange
  //   var result=Validator.validateEmail("");
  //   //assert
  //   expect(result, "Email can't be empty");
  // });
  // //for invalid email
  // test("Email validation for invalid email", (){

  //   //arrange and act
  //   var result =Validator.validateEmail("fghdsjk");
  //   //assert
  //   expect(result, "Please enter a valid email id");

  // });

  // //for valid email
  // test("Email validation for valid email", (){
  //   var result=Validator.validateEmail("abc@gmail.com");
  //   expect(result, null);
  // });


//   //************validation testing for password********************

//   //validate empty paswword
//   test("password validation for empty password", (){
//     //arrange
//     var result=Validator.validatePassword("");
//     //assert
//     expect(result, "password can't be empty");
//   });

//    //password length validation
//   test("password length validation", (){
//     var result=Validator.validatePassword("dsh4");
//     expect(result, "password must be atleast 8 char long");
//   });
  
// //password invalid test
//   test("paswword validation for invalid password", (){

//     //password must contains 
//     // should contain at least one upper case
//     // should contain at least one lower case
//     // should contain at least one digit
//     // should contain at least one digit
//     // Must be at least 8 characters in length 
//     var result=Validator.validatePassword("Kumod2022");
    
//     expect(result, "please enter valid password");
//   });
// //password valid test
// test("password validation for valid paswword", (){
//   var result=Validator.validatePassword("*Kumod2022#");
//   expect(result, null);
// });
}