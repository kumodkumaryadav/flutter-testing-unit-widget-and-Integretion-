import 'package:email_validation_test/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main(){


  group("login flow test", (){

    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    //invalid user flow
    testWidgets("should show Required fields when user click in login button empty email or password ", (WidgetTester tester)async{
       await tester.pumpWidget(MaterialApp(
      home: MyHomePage(),
    ));
    //ACT
    Finder loginButton=find.byType(ElevatedButton);
    await tester.tap(loginButton);
    await tester.pumpAndSettle(Duration(seconds: 3));
    Finder errorMessage=find.text("can't be empty");
    //ASSERT
    expect(errorMessage, findsNWidgets(2));
    });



    //valid user flow
    testWidgets("should show welcome screen when user click on login button after entering valid email and password", (WidgetTester tester)async{
  
  //ARRANGE
  await tester.pumpWidget(const MaterialApp(home: MyHomePage(),));
  //ACT
    Finder userNameTextField=find.byKey(const ValueKey("email_id"));
    Finder passwordTextField=find.byKey(const ValueKey("password"));
    await tester.enterText(userNameTextField, "kumod353@gmail.com");
    await tester.enterText(passwordTextField, "*Kumod0000#");
    // Finder errorMessage=find.text("can't be empty");
    // expect(errorMessage, findsNothing);
    Finder loginButton=find.byType(ElevatedButton);
   await tester.tap(loginButton);
   await tester.pumpAndSettle(Duration(seconds: 3));
    Finder welcomeMessage=find.byType(Text);
    expect(welcomeMessage, findsOneWidget);
  });
  });
}