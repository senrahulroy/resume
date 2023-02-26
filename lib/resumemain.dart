import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume/ui/screen/rahul_nai.dart';
import 'package:resume/ui/screen/splash_view.dart';

//My main Page
class ResumeMain extends StatelessWidget {
  const ResumeMain({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rahul Nai',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
            '/':(context) => const SplashScreen(),
            '/Bio' : (context) => const RahulNai(),
        },
        // home:   Scaffold(
        //   appBar: AppBar(title: const Text("My resume"),),
        //   body:  Center(
        //     child: Container(
        //       height: 200.h,
        //       width: 200.h,
        //       color: Colors.pink,
        //       child: const Text(
        //         'Hi Rahul',
        //       ),
        //     ),
        //   ),
        // )
    );
  }
}
