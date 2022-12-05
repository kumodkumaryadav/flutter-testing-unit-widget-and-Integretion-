import 'package:email_validation_test/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){


//testing the app for having title
  testWidgets("App bar should have  title", (WidgetTester tester) async{ 
   //since here ui is rendering so it will take some time hence await need to be used
    await tester.pumpWidget( MaterialApp(home: MyHomePage())); //this will rendered the HomePage UI
   Finder title=find.text("Login Here"); //Finder will help to find the widget which we want to search
   expect(title, findsOneWidget); //here we can compare the actual and expected result using Expect widget
   

  });
  //testing that there should be one textformfield for email id
  testWidgets("should have a textform field for email id", (WidgetTester tester) async{
    await tester.pumpWidget(MaterialApp(
      home: MyHomePage(),
    ));
    Finder emailTextFormField=find.byKey(ValueKey("email_id"));
    expect(emailTextFormField, findsOneWidget);
  });

  //testing that there should be a one textformfield for password;
  testWidgets("should have a textformfield for password", (WidgetTester tester)async{
    await tester.pumpWidget(MaterialApp(
      home: MyHomePage(),
    ));
    Finder passwordTextFormField=find.byKey(ValueKey("password"));
    expect(passwordTextFormField, findsOneWidget);
  });
  //there should be a login button
  testWidgets("shoul have a login button", (WidgetTester tester)async{
    await tester.pumpWidget(MaterialApp(home: MyHomePage(),));
    Finder loginButton=find.byType(ElevatedButton);
    expect(loginButton, findsOneWidget);
  });

  //should show error message for required textfield if email and password is empty
  testWidgets("should show required fields error message if email and password are empty", (WidgetTester tester)async{
   //ARRANGE
    await tester.pumpWidget(MaterialApp(
      home: MyHomePage(),
    ));
    //ACT
    Finder loginButton=find.byType(ElevatedButton);
    await tester.tap(loginButton);
    await tester.pumpAndSettle();
    Finder errorMessage=find.text("can't be empty");
    //ASSERT
    expect(errorMessage, findsNWidgets(2));
  });

  testWidgets("should be able to submit form when user email and password are valid", (WidgetTester tester )async{
    await tester.pumpWidget(MaterialApp(home: MyHomePage(),));
    Finder userNameTextField=find.byKey(ValueKey("email_id"));
    Finder passwordTextField=find.byKey(ValueKey("password"));
    await tester.enterText(userNameTextField, "kumod353@gmail.com");
    await tester.enterText(passwordTextField, "*Kumod0000#");
    Finder loginButton=find.byType(ElevatedButton);
    await tester.tap(loginButton);
    Finder errorMessage=find.text("can't be empty");
    expect(errorMessage, findsNothing);
  });


}