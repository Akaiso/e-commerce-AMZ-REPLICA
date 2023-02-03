import 'package:beaks_e_commerce/router.dart';
import 'package:flutter/material.dart';
import 'constants/global_variables.dart';
import 'feature/auth/screens/auth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon clone app',
      theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
          colorScheme: const ColorScheme.light(
            primary: GlobalVariables.secondaryColor,
          ),
          appBarTheme: const AppBarTheme(
              elevation: 0,
              iconTheme: IconThemeData(
                color: Colors.black,
              ))),
      onGenerateRoute: (settings) => generateRoute(settings),

      ///for didactic purpose:
      // home: Scaffold(
      //   body: Center(
      //     child: Column(
      //       children: [
      //         const SizedBox(height: 20),
      //         //The below code will return an error. Just wrap the button in a builder widget
      //         Builder(builder: (context) {
      //           return ElevatedButton(
      //               onPressed: () {
      //                 Navigator.pushNamed(context, AuthScreen.routeName);
      //               },
      //               child: const Text('click'));
      //         })
      //       ],
      //     ),
      //   ),
      //   appBar: AppBar(
      //     centerTitle: true,
      //     title: const Text('Amazon'),
      //   ),
      // ),
      home: const AuthScreen(),
    );
  }
}
