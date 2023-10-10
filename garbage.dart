// import 'package:flutter/material.dart';
// import 'package:the_basics/constants.dart';
// import 'package:the_basics/screens/main/main_screen.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Admin Panel',
//       theme: ThemeData.dark().copyWith(
//         scaffoldBackgroundColor: bgColor,
//         canvasColor: secondaryColor,
//       ),
//       home: MainScreen(),
      
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'dart:developer'  as developer; //(auto import will do this even)

// void main() {
//   runApp(MyApp());
// }


// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Cinema Booking'),
//         ),
//         body:  CinemaBookingHall(),
//       ),
//     );
//   }
// }


// class CinemaBookingHall extends StatelessWidget {
  
//   @override
//   Widget build(BuildContext context) {
//     final s = 80.0 *  MediaQuery.of(context).size.height;
   
//     developer.log(s.toString());
//     developer.log('log me', name: 'my.app.category');

//     return Stack(
      
//       children: [
        
//           Positioned(
//           top: 0.0,
//           left: 0.0,
//           right: 0.0,
//           child: ScreenWidget(),
//         ),
//         // Positioned(top: 300.0, left: 190.0, child: SeatWidget()), Positioned(top: 300.0, left: 550.0, child: SeatWidget()), Positioned(top: 300.0, left: 590.0, child: SeatWidget()), Positioned(top: 300.0, left: 230.0, child: SeatWidget()), Positioned(top: 300.0, left: 270.0, child: SeatWidget()), Positioned(top: 300.0, left: 310.0, child: SeatWidget()), Positioned(top: 300.0, left: 350.0, child: SeatWidget()), Positioned(top: 300.0, left: 390.0, child: SeatWidget()), Positioned(top: 300.0, left: 430.0, child: SeatWidget()), Positioned(top: 300.0, left: 470.0, child: SeatWidget()), Positioned(top: 300.0, left: 510.0, child: SeatWidget()), Positioned(top: 260.0, left: 190.0, child: SeatWidget()), Positioned(top: 260.0, left: 550.0, child: SeatWidget()), Positioned(top: 260.0, left: 590.0, child: SeatWidget()), Positioned(top: 260.0, left: 230.0, child: SeatWidget()), Positioned(top: 260.0, left: 270.0, child: SeatWidget()), Positioned(top: 260.0, left: 310.0, child: SeatWidget()), Positioned(top: 260.0, left: 350.0, child: SeatWidget()), Positioned(top: 260.0, left: 390.0, child: SeatWidget()), Positioned(top: 260.0, left: 430.0, child: SeatWidget()), Positioned(top: 260.0, left: 470.0, child: SeatWidget()), Positioned(top: 260.0, left: 510.0, child: SeatWidget()), Positioned(top: 220.0, left: 190.0, child: SeatWidget()), Positioned(top: 220.0, left: 550.0, child: SeatWidget()), Positioned(top: 220.0, left: 590.0, child: SeatWidget()), Positioned(top: 220.0, left: 230.0, child: SeatWidget()), Positioned(top: 220.0, left: 270.0, child: SeatWidget()), Positioned(top: 220.0, left: 310.0, child: SeatWidget()), Positioned(top: 220.0, left: 350.0, child: SeatWidget()), Positioned(top: 220.0, left: 390.0, child: SeatWidget()), Positioned(top: 220.0, left: 430.0, child: SeatWidget()), Positioned(top: 220.0, left: 470.0, child: SeatWidget()), Positioned(top: 220.0, left: 510.0, child: SeatWidget()), Positioned(top: 180.0, left: 190.0, child: SeatWidget()), Positioned(top: 180.0, left: 550.0, child: SeatWidget()), Positioned(top: 180.0, left: 590.0, child: SeatWidget()), Positioned(top: 180.0, left: 230.0, child: SeatWidget()), Positioned(top: 180.0, left: 270.0, child: SeatWidget()), Positioned(top: 180.0, left: 310.0, child: SeatWidget()), Positioned(top: 180.0, left: 350.0, child: SeatWidget()), Positioned(top: 180.0, left: 390.0, child: SeatWidget()), Positioned(top: 180.0, left: 430.0, child: SeatWidget()), Positioned(top: 180.0, left: 470.0, child: SeatWidget()), Positioned(top: 180.0, left: 510.0, child: SeatWidget()), Positioned(top: 140.0, left: 190.0, child: SeatWidget()), Positioned(top: 140.0, left: 550.0, child: SeatWidget()), Positioned(top: 140.0, left: 590.0, child: SeatWidget()), Positioned(top: 140.0, left: 230.0, child: SeatWidget()), Positioned(top: 140.0, left: 270.0, child: SeatWidget()), Positioned(top: 140.0, left: 310.0, child: SeatWidget()), Positioned(top: 140.0, left: 350.0, child: SeatWidget()), Positioned(top: 140.0, left: 390.0, child: SeatWidget()), Positioned(top: 140.0, left: 430.0, child: SeatWidget()), Positioned(top: 140.0, left: 470.0, child: SeatWidget()), Positioned(top: 140.0, left: 510.0, child: SeatWidget()), Positioned(top: 100.0, left: 190.0, child: SeatWidget()), Positioned(top: 100.0, left: 550.0, child: SeatWidget()), Positioned(top: 100.0, left: 590.0, child: SeatWidget()), Positioned(top: 100.0, left: 230.0, child: SeatWidget()), Positioned(top: 100.0, left: 270.0, child: SeatWidget()), Positioned(top: 100.0, left: 310.0, child: SeatWidget()), Positioned(top: 100.0, left: 350.0, child: SeatWidget()), Positioned(top: 100.0, left: 390.0, child: SeatWidget()), Positioned(top: 100.0, left: 430.0, child: SeatWidget()), Positioned(top: 100.0, left: 470.0, child: SeatWidget()), Positioned(top: 100.0, left: 510.0, child: SeatWidget()), Positioned(top: 35.0, left: 125.0, child: SeatWidget()), Positioned(top: 35.0, left: 590.0, child: SeatWidget()), Positioned(top: 35.0, left: 165.0, child: SeatWidget()), Positioned(top: 35.0, left: 230.0, child: SeatWidget()), Positioned(top: 35.0, left: 270.0, child: SeatWidget()), Positioned(top: 35.0, left: 335.0, child: SeatWidget()), Positioned(top: 35.0, left: 375.0, child: SeatWidget()), Positioned(top: 35.0, left: 445.0, child: SeatWidget()), Positioned(top: 35.0, left: 485.0, child: SeatWidget()), Positioned(top: 35.0, left: 550.0, child: SeatWidget()), 
//     // Positioned(top: 50.0, left: 250.0, child: SeatWidget()), Positioned(top: 50.0, left: 610.0, child: SeatWidget()), Positioned(top: 50.0, left: 650.0, child: SeatWidget()), Positioned(top: 50.0, left: 690.0, child: SeatWidget()), Positioned(top: 50.0, left: 290.0, child: SeatWidget()), Positioned(top: 50.0, left: 330.0, child: SeatWidget()), Positioned(top: 50.0, left: 370.0, child: SeatWidget()), Positioned(top: 50.0, left: 410.0, child: SeatWidget()), Positioned(top: 50.0, left: 450.0, child: SeatWidget()), Positioned(top: 50.0, left: 490.0, child: SeatWidget()), Positioned(top: 50.0, left: 530.0, child: SeatWidget()), Positioned(top: 50.0, left: 570.0, child: SeatWidget()), Positioned(top: 90.0, left: 250.0, child: SeatWidget()), Positioned(top: 90.0, left: 610.0, child: SeatWidget()), Positioned(top: 90.0, left: 650.0, child: SeatWidget()), Positioned(top: 90.0, left: 690.0, child: SeatWidget()), Positioned(top: 90.0, left: 290.0, child: SeatWidget()), Positioned(top: 90.0, left: 330.0, child: SeatWidget()), Positioned(top: 90.0, left: 370.0, child: SeatWidget()), Positioned(top: 90.0, left: 410.0, child: SeatWidget()), Positioned(top: 90.0, left: 450.0, child: SeatWidget()), Positioned(top: 90.0, left: 490.0, child: SeatWidget()), Positioned(top: 90.0, left: 530.0, child: SeatWidget()), Positioned(top: 90.0, left: 570.0, child: SeatWidget()), Positioned(top: 130.0, left: 250.0, child: SeatWidget()), Positioned(top: 130.0, left: 610.0, child: SeatWidget()), Positioned(top: 130.0, left: 650.0, child: SeatWidget()), Positioned(top: 130.0, left: 690.0, child: SeatWidget()), Positioned(top: 130.0, left: 290.0, child: SeatWidget()), Positioned(top: 130.0, left: 330.0, child: SeatWidget()), Positioned(top: 130.0, left: 370.0, child: SeatWidget()), Positioned(top: 130.0, left: 410.0, child: SeatWidget()), Positioned(top: 130.0, left: 450.0, child: SeatWidget()), Positioned(top: 130.0, left: 490.0, child: SeatWidget()), Positioned(top: 130.0, left: 530.0, child: SeatWidget()), Positioned(top: 130.0, left: 570.0, child: SeatWidget()), Positioned(top: 170.0, left: 250.0, child: SeatWidget()), Positioned(top: 170.0, left: 610.0, child: SeatWidget()), Positioned(top: 170.0, left: 650.0, child: SeatWidget()), Positioned(top: 170.0, left: 690.0, child: SeatWidget()), Positioned(top: 170.0, left: 290.0, child: SeatWidget()), Positioned(top: 170.0, left: 330.0, child: SeatWidget()), Positioned(top: 170.0, left: 370.0, child: SeatWidget()), Positioned(top: 170.0, left: 410.0, child: SeatWidget()), Positioned(top: 170.0, left: 450.0, child: SeatWidget()), Positioned(top: 170.0, left: 490.0, child: SeatWidget()), Positioned(top: 170.0, left: 530.0, child: SeatWidget()), Positioned(top: 170.0, left: 570.0, child: SeatWidget()), Positioned(top: 210.0, left: 250.0, child: SeatWidget()), Positioned(top: 210.0, left: 610.0, child: SeatWidget()), Positioned(top: 210.0, left: 650.0, child: SeatWidget()), Positioned(top: 210.0, left: 690.0, child: SeatWidget()), Positioned(top: 210.0, left: 290.0, child: SeatWidget()), Positioned(top: 210.0, left: 330.0, child: SeatWidget()), Positioned(top: 210.0, left: 370.0, child: SeatWidget()), Positioned(top: 210.0, left: 410.0, child: SeatWidget()), Positioned(top: 210.0, left: 450.0, child: SeatWidget()), Positioned(top: 210.0, left: 490.0, child: SeatWidget()), Positioned(top: 210.0, left: 530.0, child: SeatWidget()), Positioned(top: 210.0, left: 570.0, child: SeatWidget()), Positioned(top: 250.0, left: 10.0, child: SeatWidget()), Positioned(top: 250.0, left: 530.0, child: SeatWidget()), Positioned(top: 250.0, left: 570.0, child: SeatWidget()), Positioned(top: 250.0, left: 610.0, child: SeatWidget()), Positioned(top: 250.0, left: 650.0, child: SeatWidget()), Positioned(top: 250.0, left: 690.0, child: SeatWidget()), Positioned(top: 250.0, left: 50.0, child: SeatWidget()), Positioned(top: 250.0, left: 250.0, child: SeatWidget()), Positioned(top: 250.0, left: 290.0, child: SeatWidget()), Positioned(top: 250.0, left: 330.0, child: SeatWidget()), Positioned(top: 250.0, left: 370.0, child: SeatWidget()), Positioned(top: 250.0, left: 410.0, child: SeatWidget()), Positioned(top: 250.0, left: 450.0, child: SeatWidget()), Positioned(top: 250.0, left: 490.0, child: SeatWidget()), Positioned(top: 290.0, left: 10.0, child: SeatWidget()), Positioned(top: 290.0, left: 530.0, child: SeatWidget()), Positioned(top: 290.0, left: 570.0, child: SeatWidget()), Positioned(top: 290.0, left: 610.0, child: SeatWidget()), Positioned(top: 290.0, left: 650.0, child: SeatWidget()), Positioned(top: 290.0, left: 690.0, child: SeatWidget()), Positioned(top: 290.0, left: 50.0, child: SeatWidget()), Positioned(top: 290.0, left: 250.0, child: SeatWidget()), Positioned(top: 290.0, left: 290.0, child: SeatWidget()), Positioned(top: 290.0, left: 330.0, child: SeatWidget()), Positioned(top: 290.0, left: 370.0, child: SeatWidget()), Positioned(top: 290.0, left: 410.0, child: SeatWidget()), Positioned(top: 290.0, left: 450.0, child: SeatWidget()), Positioned(top: 290.0, left: 490.0, child: SeatWidget()), Positioned(top: 330.0, left: 10.0, child: SeatWidget()), Positioned(top: 330.0, left: 370.0, child: SeatWidget()), Positioned(top: 330.0, left: 410.0, child: SeatWidget()), Positioned(top: 330.0, left: 450.0, child: SeatWidget()), Positioned(top: 330.0, left: 490.0, child: SeatWidget()), Positioned(top: 330.0, left: 530.0, child: SeatWidget()), Positioned(top: 330.0, left: 570.0, child: SeatWidget()), Positioned(top: 330.0, left: 610.0, child: SeatWidget()), Positioned(top: 330.0, left: 650.0, child: SeatWidget()), Positioned(top: 330.0, left: 690.0, child: SeatWidget()), Positioned(top: 330.0, left: 50.0, child: SeatWidget()), Positioned(top: 330.0, left: 90.0, child: SeatWidget()), Positioned(top: 330.0, left: 130.0, child: SeatWidget()), Positioned(top: 330.0, left: 170.0, child: SeatWidget()), Positioned(top: 330.0, left: 210.0, child: SeatWidget()), Positioned(top: 330.0, left: 250.0, child: SeatWidget()), Positioned(top: 330.0, left: 290.0, child: SeatWidget()), Positioned(top: 330.0, left: 330.0, child: SeatWidget()), 
// // Positioned(top: 80.0, left: 630.0, child: SeatWidget()), Positioned(top: 80.0, left: 230.0, child: SeatWidget()), Positioned(top: 80.0, left: 190.0, child: SeatWidget()), Positioned(top: 80.0, left: 150.0, child: SeatWidget()), Positioned(top: 80.0, left: 110.0, child: SeatWidget()), Positioned(top: 80.0, left: 69.0, child: SeatWidget()), Positioned(top: 80.0, left: 590.0, child: SeatWidget()), Positioned(top: 80.0, left: 550.0, child: SeatWidget()), Positioned(top: 80.0, left: 510.0, child: SeatWidget()), Positioned(top: 80.0, left: 470.0, child: SeatWidget()), Positioned(top: 70.0, left: 420.0, child: SeatWidget()), Positioned(top: 71.0, left: 371.0, child: SeatWidget()), Positioned(top: 70.0, left: 320.0, child: SeatWidget()), Positioned(top: 80.0, left: 270.0, child: SeatWidget()), Positioned(top: 120.0, left: 630.0, child: SeatWidget()), Positioned(top: 120.0, left: 270.0, child: SeatWidget()), Positioned(top: 120.0, left: 230.0, child: SeatWidget()), Positioned(top: 120.0, left: 190.0, child: SeatWidget()), Positioned(top: 120.0, left: 150.0, child: SeatWidget()), Positioned(top: 120.0, left: 110.0, child: SeatWidget()), Positioned(top: 120.0, left: 70.0, child: SeatWidget()), Positioned(top: 120.0, left: 590.0, child: SeatWidget()), Positioned(top: 120.0, left: 550.0, child: SeatWidget()), Positioned(top: 120.0, left: 510.0, child: SeatWidget()), Positioned(top: 120.0, left: 470.0, child: SeatWidget()), Positioned(top: 120.0, left: 430.0, child: SeatWidget()), Positioned(top: 120.0, left: 390.0, child: SeatWidget()), Positioned(top: 120.0, left: 350.0, child: SeatWidget()), Positioned(top: 120.0, left: 310.0, child: SeatWidget()), Positioned(top: 160.0, left: 630.0, child: SeatWidget()), Positioned(top: 160.0, left: 270.0, child: SeatWidget()), Positioned(top: 160.0, left: 230.0, child: SeatWidget()), Positioned(top: 160.0, left: 190.0, child: SeatWidget()), Positioned(top: 160.0, left: 150.0, child: SeatWidget()), Positioned(top: 160.0, left: 110.0, child: SeatWidget()), Positioned(top: 160.0, left: 70.0, child: SeatWidget()), Positioned(top: 160.0, left: 590.0, child: SeatWidget()), Positioned(top: 160.0, left: 550.0, child: SeatWidget()), Positioned(top: 160.0, left: 510.0, child: SeatWidget()), Positioned(top: 160.0, left: 470.0, child: SeatWidget()), Positioned(top: 160.0, left: 430.0, child: SeatWidget()), Positioned(top: 160.0, left: 390.0, child: SeatWidget()), Positioned(top: 160.0, left: 350.0, child: SeatWidget()), Positioned(top: 160.0, left: 310.0, child: SeatWidget()), Positioned(top: 200.0, left: 630.0, child: SeatWidget()), Positioned(top: 200.0, left: 270.0, child: SeatWidget()), Positioned(top: 200.0, left: 230.0, child: SeatWidget()), Positioned(top: 200.0, left: 190.0, child: SeatWidget()), Positioned(top: 200.0, left: 150.0, child: SeatWidget()), Positioned(top: 200.0, left: 110.0, child: SeatWidget()), Positioned(top: 200.0, left: 70.0, child: SeatWidget()), Positioned(top: 200.0, left: 590.0, child: SeatWidget()), Positioned(top: 200.0, left: 550.0, child: SeatWidget()), Positioned(top: 200.0, left: 510.0, child: SeatWidget()), Positioned(top: 200.0, left: 470.0, child: SeatWidget()), Positioned(top: 200.0, left: 430.0, child: SeatWidget()), Positioned(top: 200.0, left: 390.0, child: SeatWidget()), Positioned(top: 200.0, left: 350.0, child: SeatWidget()), Positioned(top: 200.0, left: 310.0, child: SeatWidget()), Positioned(top: 240.0, left: 630.0, child: SeatWidget()), Positioned(top: 240.0, left: 270.0, child: SeatWidget()), Positioned(top: 240.0, left: 230.0, child: SeatWidget()), Positioned(top: 240.0, left: 190.0, child: SeatWidget()), Positioned(top: 240.0, left: 150.0, child: SeatWidget()), Positioned(top: 240.0, left: 110.0, child: SeatWidget()), Positioned(top: 240.0, left: 70.0, child: SeatWidget()), Positioned(top: 240.0, left: 590.0, child: SeatWidget()), Positioned(top: 240.0, left: 550.0, child: SeatWidget()), Positioned(top: 240.0, left: 510.0, child: SeatWidget()), Positioned(top: 240.0, left: 470.0, child: SeatWidget()), Positioned(top: 240.0, left: 430.0, child: SeatWidget()), Positioned(top: 240.0, left: 390.0, child: SeatWidget()), Positioned(top: 240.0, left: 350.0, child: SeatWidget()), Positioned(top: 240.0, left: 310.0, child: SeatWidget()), Positioned(top: 280.0, left: 630.0, child: SeatWidget()), Positioned(top: 280.0, left: 270.0, child: SeatWidget()), Positioned(top: 280.0, left: 230.0, child: SeatWidget()), Positioned(top: 280.0, left: 190.0, child: SeatWidget()), Positioned(top: 280.0, left: 150.0, child: SeatWidget()), Positioned(top: 280.0, left: 110.0, child: SeatWidget()), Positioned(top: 280.0, left: 70.0, child: SeatWidget()), Positioned(top: 280.0, left: 590.0, child: SeatWidget()), Positioned(top: 280.0, left: 550.0, child: SeatWidget()), Positioned(top: 280.0, left: 510.0, child: SeatWidget()), Positioned(top: 280.0, left: 470.0, child: SeatWidget()), Positioned(top: 280.0, left: 430.0, child: SeatWidget()), Positioned(top: 280.0, left: 390.0, child: SeatWidget()), Positioned(top: 280.0, left: 350.0, child: SeatWidget()), Positioned(top: 280.0, left: 310.0, child: SeatWidget()), Positioned(top: 320.0, left: 625.0, child: SeatWidget()), Positioned(top: 320.0, left: 170.0, child: SeatWidget()), Positioned(top: 320.0, left: 110.0, child: SeatWidget()), Positioned(top: 320.0, left: 70.0, child: SeatWidget()), Positioned(top: 320.0, left: 585.0, child: SeatWidget()), Positioned(top: 320.0, left: 520.0, child: SeatWidget()), Positioned(top: 320.0, left: 480.0, child: SeatWidget()), Positioned(top: 320.0, left: 410.0, child: SeatWidget()), Positioned(top: 320.0, left: 370.0, child: SeatWidget()), Positioned(top: 320.0, left: 310.0, child: SeatWidget()), Positioned(top: 320.0, left: 270.0, child: SeatWidget()), Positioned(top: 320.0, left: 210.0, child: SeatWidget()), Positioned(top: 360.0, left: 580.0, child: SeatWidget()), Positioned(top: 360.0, left: 530.0, child: SeatWidget()), Positioned(top: 360.0, left: 445.0, child: SeatWidget()), Positioned(top: 360.0, left: 405.0, child: SeatWidget()), Positioned(top: 360.0, left: 305.0, child: SeatWidget()), Positioned(top: 360.0, left: 265.0, child: SeatWidget()), Positioned(top: 360.0, left: 160.0, child: SeatWidget()), Positioned(top: 360.0, left: 110.0, child: SeatWidget()),
// // Positioned(top: 80.0, left: 630.0, child: SeatWidget(1)), Positioned(top: 80.0, left: 230.0, child: SeatWidget(10)), Positioned(top: 80.0, left: 190.0, child: SeatWidget(11)), Positioned(top: 80.0, left: 150.0, child: SeatWidget(12)), Positioned(top: 80.0, left: 110.0, child: SeatWidget(13)), Positioned(top: 80.0, left: 69.0, child: SeatWidget(14)), Positioned(top: 80.0, left: 590.0, child: SeatWidget(2)), Positioned(top: 80.0, left: 550.0, child: SeatWidget(3)), Positioned(top: 80.0, left: 510.0, child: SeatWidget(4)), Positioned(top: 80.0, left: 470.0, child: SeatWidget(5)), Positioned(top: 70.0, left: 420.0, child: SeatWidget(6)), Positioned(top: 71.0, left: 371.0, child: SeatWidget(7)), Positioned(top: 70.0, left: 320.0, child: SeatWidget(8)), Positioned(top: 80.0, left: 270.0, child: SeatWidget(9)), Positioned(top: 120.0, left: 630.0, child: SeatWidget(1)), Positioned(top: 120.0, left: 270.0, child: SeatWidget(10)), Positioned(top: 120.0, left: 230.0, child: SeatWidget(11)), Positioned(top: 120.0, left: 190.0, child: SeatWidget(12)), Positioned(top: 120.0, left: 150.0, child: SeatWidget(13)), Positioned(top: 120.0, left: 110.0, child: SeatWidget(14)), Positioned(top: 120.0, left: 70.0, child: SeatWidget(15)), Positioned(top: 120.0, left: 590.0, child: SeatWidget(2)), Positioned(top: 120.0, left: 550.0, child: SeatWidget(3)), Positioned(top: 120.0, left: 510.0, child: SeatWidget(4)), Positioned(top: 120.0, left: 470.0, child: SeatWidget(5)), Positioned(top: 120.0, left: 430.0, child: SeatWidget(6)), Positioned(top: 120.0, left: 390.0, child: SeatWidget(7)), Positioned(top: 120.0, left: 350.0, child: SeatWidget(8)), Positioned(top: 120.0, left: 310.0, child: SeatWidget(9)), Positioned(top: 160.0, left: 630.0, child: SeatWidget(1)), Positioned(top: 160.0, left: 270.0, child: SeatWidget(10)), Positioned(top: 160.0, left: 230.0, child: SeatWidget(11)), Positioned(top: 160.0, left: 190.0, child: SeatWidget(12)), Positioned(top: 160.0, left: 150.0, child: SeatWidget(13)), Positioned(top: 160.0, left: 110.0, child: SeatWidget(14)), Positioned(top: 160.0, left: 70.0, child: SeatWidget(15)), Positioned(top: 160.0, left: 590.0, child: SeatWidget(2)), Positioned(top: 160.0, left: 550.0, child: SeatWidget(3)), Positioned(top: 160.0, left: 510.0, child: SeatWidget(4)), Positioned(top: 160.0, left: 470.0, child: SeatWidget(5)), Positioned(top: 160.0, left: 430.0, child: SeatWidget(6)), Positioned(top: 160.0, left: 390.0, child: SeatWidget(7)), Positioned(top: 160.0, left: 350.0, child: SeatWidget(8)), Positioned(top: 160.0, left: 310.0, child: SeatWidget(9)), Positioned(top: 200.0, left: 630.0, child: SeatWidget(1)), Positioned(top: 200.0, left: 270.0, child: SeatWidget(10)), Positioned(top: 200.0, left: 230.0, child: SeatWidget(11)), Positioned(top: 200.0, left: 190.0, child: SeatWidget(12)), Positioned(top: 200.0, left: 150.0, child: SeatWidget(13)), Positioned(top: 200.0, left: 110.0, child: SeatWidget(14)), Positioned(top: 200.0, left: 70.0, child: SeatWidget(15)), Positioned(top: 200.0, left: 590.0, child: SeatWidget(2)), Positioned(top: 200.0, left: 550.0, child: SeatWidget(3)), Positioned(top: 200.0, left: 510.0, child: SeatWidget(4)), Positioned(top: 200.0, left: 470.0, child: SeatWidget(5)), Positioned(top: 200.0, left: 430.0, child: SeatWidget(6)), Positioned(top: 200.0, left: 390.0, child: SeatWidget(7)), Positioned(top: 200.0, left: 350.0, child: SeatWidget(8)), Positioned(top: 200.0, left: 310.0, child: SeatWidget(9)), Positioned(top: 240.0, left: 630.0, child: SeatWidget(1)), Positioned(top: 240.0, left: 270.0, child: SeatWidget(10)), Positioned(top: 240.0, left: 230.0, child: SeatWidget(11)), Positioned(top: 240.0, left: 190.0, child: SeatWidget(12)), Positioned(top: 240.0, left: 150.0, child: SeatWidget(13)), Positioned(top: 240.0, left: 110.0, child: SeatWidget(14)), Positioned(top: 240.0, left: 70.0, child: SeatWidget(15)), Positioned(top: 240.0, left: 590.0, child: SeatWidget(2)), Positioned(top: 240.0, left: 550.0, child: SeatWidget(3)), Positioned(top: 240.0, left: 510.0, child: SeatWidget(4)), Positioned(top: 240.0, left: 470.0, child: SeatWidget(5)), Positioned(top: 240.0, left: 430.0, child: SeatWidget(6)), Positioned(top: 240.0, left: 390.0, child: SeatWidget(7)), Positioned(top: 240.0, left: 350.0, child: SeatWidget(8)), Positioned(top: 240.0, left: 310.0, child: SeatWidget(9)), Positioned(top: 280.0, left: 630.0, child: SeatWidget(1)), Positioned(top: 280.0, left: 270.0, child: SeatWidget(10)), Positioned(top: 280.0, left: 230.0, child: SeatWidget(11)), Positioned(top: 280.0, left: 190.0, child: SeatWidget(12)), Positioned(top: 280.0, left: 150.0, child: SeatWidget(13)), Positioned(top: 280.0, left: 110.0, child: SeatWidget(14)), Positioned(top: 280.0, left: 70.0, child: SeatWidget(15)), Positioned(top: 280.0, left: 590.0, child: SeatWidget(2)), Positioned(top: 280.0, left: 550.0, child: SeatWidget(3)), Positioned(top: 280.0, left: 510.0, child: SeatWidget(4)), Positioned(top: 280.0, left: 470.0, child: SeatWidget(5)), Positioned(top: 280.0, left: 430.0, child: SeatWidget(6)), Positioned(top: 280.0, left: 390.0, child: SeatWidget(7)), Positioned(top: 280.0, left: 350.0, child: SeatWidget(8)), Positioned(top: 280.0, left: 310.0, child: SeatWidget(9)), Positioned(top: 320.0, left: 625.0, child: SeatWidget(1)), Positioned(top: 320.0, left: 170.0, child: SeatWidget(10)), Positioned(top: 320.0, left: 110.0, child: SeatWidget(11)), Positioned(top: 320.0, left: 70.0, child: SeatWidget(12)), Positioned(top: 320.0, left: 585.0, child: SeatWidget(2)), Positioned(top: 320.0, left: 520.0, child: SeatWidget(3)), Positioned(top: 320.0, left: 480.0, child: SeatWidget(4)), Positioned(top: 320.0, left: 410.0, child: SeatWidget(5)), Positioned(top: 320.0, left: 370.0, child: SeatWidget(6)), Positioned(top: 320.0, left: 310.0, child: SeatWidget(7)), Positioned(top: 320.0, left: 270.0, child: SeatWidget(8)), Positioned(top: 320.0, left: 210.0, child: SeatWidget(9)), Positioned(top: 360.0, left: 580.0, child: SeatWidget(1)), Positioned(top: 360.0, left: 530.0, child: SeatWidget(2)), Positioned(top: 360.0, left: 445.0, child: SeatWidget(3)), Positioned(top: 360.0, left: 405.0, child: SeatWidget(4)), Positioned(top: 360.0, left: 305.0, child: SeatWidget(5)), Positioned(top: 360.0, left: 265.0, child: SeatWidget(6)), Positioned(top: 360.0, left: 160.0, child: SeatWidget(7)), Positioned(top: 360.0, left: 110.0, child: SeatWidget(8)), 
// Positioned(top: 131.0, left: 274.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 634.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 674.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 714.0, child: SeatWidget(1)), Positioned(top: 121.0, left: 754.0, child: SeatWidget(1)), Positioned(top: 121.0, left: 794.0, child: SeatWidget(1)), Positioned(top: 122.0, left: 834.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 874.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 914.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 954.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 994.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 314.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 1034.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 1074.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 1114.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 1154.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 1194.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 1234.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 1274.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 1314.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 354.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 394.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 434.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 474.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 514.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 554.0, child: SeatWidget(1)), Positioned(top: 131.0, left: 594.0, child: SeatWidget(1)), Positioned(top: 497.0, left: 313.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 713.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 758.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 798.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 848.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 888.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 938.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 978.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 1029.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 1068.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 1118.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 353.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 1158.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 1208.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 1248.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 1298.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 1338.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 1383.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 1423.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 403.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 443.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 493.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 533.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 583.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 623.0, child: SeatWidget(10)), Positioned(top: 497.0, left: 673.0, child: SeatWidget(10)), Positioned(top: 545.0, left: 410.0, child: SeatWidget(11)), Positioned(top: 545.0, left: 835.0, child: SeatWidget(11)), Positioned(top: 545.0, left: 900.0, child: SeatWidget(11)), Positioned(top: 545.0, left: 940.0, child: SeatWidget(11)), Positioned(top: 545.0, left: 1000.0, child: SeatWidget(11)), Positioned(top: 545.0, left: 1040.0, child: SeatWidget(11)), Positioned(top: 545.0, left: 1105.0, child: SeatWidget(11)), Positioned(top: 545.0, left: 1145.0, child: SeatWidget(11)), Positioned(top: 545.0, left: 1210.0, child: SeatWidget(11)), Positioned(top: 545.0, left: 1251.0, child: SeatWidget(11)), Positioned(top: 545.0, left: 1330.0, child: SeatWidget(11)), Positioned(top: 545.0, left: 450.0, child: SeatWidget(11)), Positioned(top: 545.0, left: 1371.0, child: SeatWidget(11)), Positioned(top: 545.0, left: 510.0, child: SeatWidget(11)), Positioned(top: 545.0, left: 550.0, child: SeatWidget(11)), Positioned(top: 545.0, left: 605.0, child: SeatWidget(11)), Positioned(top: 545.0, left: 645.0, child: SeatWidget(11)), Positioned(top: 545.0, left: 700.0, child: SeatWidget(11)), Positioned(top: 545.0, left: 739.0, child: SeatWidget(11)), Positioned(top: 545.0, left: 794.0, child: SeatWidget(11)), Positioned(top: 590.0, left: 410.0, child: SeatWidget(12)), Positioned(top: 590.0, left: 835.0, child: SeatWidget(12)), Positioned(top: 590.0, left: 900.0, child: SeatWidget(12)), Positioned(top: 590.0, left: 940.0, child: SeatWidget(12)), Positioned(top: 590.0, left: 1000.0, child: SeatWidget(12)), Positioned(top: 590.0, left: 1040.0, child: SeatWidget(12)), Positioned(top: 590.0, left: 1105.0, child: SeatWidget(12)), Positioned(top: 590.0, left: 1145.0, child: SeatWidget(12)), Positioned(top: 590.0, left: 1210.0, child: SeatWidget(12)), Positioned(top: 590.0, left: 1255.0, child: SeatWidget(12)), Positioned(top: 590.0, left: 1330.0, child: SeatWidget(12)), Positioned(top: 590.0, left: 450.0, child: SeatWidget(12)), Positioned(top: 590.0, left: 1370.0, child: SeatWidget(12)), Positioned(top: 590.0, left: 510.0, child: SeatWidget(12)), Positioned(top: 590.0, left: 550.0, child: SeatWidget(12)), Positioned(top: 590.0, left: 605.0, child: SeatWidget(12)), Positioned(top: 590.0, left: 645.0, child: SeatWidget(12)), Positioned(top: 590.0, left: 700.0, child: SeatWidget(12)), Positioned(top: 590.0, left: 740.0, child: SeatWidget(12)), Positioned(top: 590.0, left: 795.0, child: SeatWidget(12)), Positioned(top: 174.0, left: 274.0, child: SeatWidget(2)), Positioned(top: 173.0, left: 634.0, child: SeatWidget(2)), Positioned(top: 173.0, left: 675.0, child: SeatWidget(2)), Positioned(top: 173.0, left: 715.0, child: SeatWidget(2)), Positioned(top: 173.0, left: 754.0, child: SeatWidget(2)), Positioned(top: 173.0, left: 794.0, child: SeatWidget(2)), Positioned(top: 173.0, left: 835.0, child: SeatWidget(2)), Positioned(top: 173.0, left: 874.0, child: SeatWidget(2)), Positioned(top: 173.0, left: 914.0, child: SeatWidget(2)), Positioned(top: 174.0, left: 955.0, child: SeatWidget(2)), Positioned(top: 174.0, left: 995.0, child: SeatWidget(2)), Positioned(top: 174.0, left: 314.0, child: SeatWidget(2)), Positioned(top: 174.0, left: 1034.0, child: SeatWidget(2)), Positioned(top: 173.0, left: 1074.0, child: SeatWidget(2)), Positioned(top: 174.0, left: 1114.0, child: SeatWidget(2)), Positioned(top: 174.0, left: 1155.0, child: SeatWidget(2)), Positioned(top: 174.0, left: 1194.0, child: SeatWidget(2)), Positioned(top: 174.0, left: 1234.0, child: SeatWidget(2)), Positioned(top: 174.0, left: 1274.0, child: SeatWidget(2)), Positioned(top: 174.0, left: 1314.0, child: SeatWidget(2)), Positioned(top: 174.0, left: 1354.0, child: SeatWidget(2)), Positioned(top: 174.0, left: 1394.0, child: SeatWidget(2)), Positioned(top: 173.0, left: 354.0, child: SeatWidget(2)), Positioned(top: 174.0, left: 1434.0, child: SeatWidget(2)), Positioned(top: 174.0, left: 1474.0, child: SeatWidget(2)), Positioned(top: 174.0, left: 394.0, child: SeatWidget(2)), Positioned(top: 173.0, left: 434.0, child: SeatWidget(2)), Positioned(top: 173.0, left: 474.0, child: SeatWidget(2)), Positioned(top: 173.0, left: 515.0, child: SeatWidget(2)), Positioned(top: 173.0, left: 554.0, child: SeatWidget(2)), Positioned(top: 173.0, left: 594.0, child: SeatWidget(2)), Positioned(top: 217.0, left: 129.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 489.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 529.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 569.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 609.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 649.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 689.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 729.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 769.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 809.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 849.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 169.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 889.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 929.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 969.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 1009.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 1049.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 1089.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 1129.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 1170.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 1210.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 1249.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 209.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 1290.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 1330.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 1369.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 1409.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 1449.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 249.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 289.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 329.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 369.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 409.0, child: SeatWidget(3)), Positioned(top: 217.0, left: 449.0, child: SeatWidget(3)), Positioned(top: 260.0, left: 128.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 488.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 527.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 569.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 608.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 647.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 688.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 729.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 767.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 809.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 848.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 167.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 887.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 928.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 968.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 1007.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 1048.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 1089.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 1127.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 1169.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 1208.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 1247.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 208.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 1289.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 1328.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 1367.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 1408.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 1448.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 1487.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 248.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 287.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 328.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 368.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 407.0, child: SeatWidget(4)), Positioned(top: 260.0, left: 449.0, child: SeatWidget(4)), Positioned(top: 300.0, left: 127.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 487.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 527.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 567.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 607.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 647.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 687.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 727.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 767.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 807.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 847.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 167.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 887.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 927.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 967.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 1007.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 1047.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 1087.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 1127.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 1167.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 1207.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 1247.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 207.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 1287.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 1327.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 1367.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 1407.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 1447.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 1487.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 247.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 287.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 327.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 367.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 407.0, child: SeatWidget(5)), Positioned(top: 300.0, left: 447.0, child: SeatWidget(5)), Positioned(top: 340.0, left: 127.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 487.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 527.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 567.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 607.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 647.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 687.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 727.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 767.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 807.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 847.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 167.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 887.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 927.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 967.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 1007.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 1047.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 1087.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 1127.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 1167.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 1207.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 1247.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 207.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 1287.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 1327.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 1367.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 1407.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 1447.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 1487.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 247.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 287.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 327.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 367.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 407.0, child: SeatWidget(6)), Positioned(top: 340.0, left: 447.0, child: SeatWidget(6)), Positioned(top: 380.0, left: 125.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 485.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 525.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 565.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 605.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 645.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 685.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 725.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 765.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 805.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 845.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 165.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 885.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 930.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 970.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 1010.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 1050.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 1090.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 1130.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 1170.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 1210.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 1250.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 205.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 1290.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 1330.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 1370.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 1410.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 1450.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 1490.0, child: SeatWidget(7)), Positioned(top: 379.0, left: 1528.0, child: SeatWidget(7)), Positioned(top: 378.0, left: 1566.0, child: SeatWidget(7)), Positioned(top: 379.0, left: 1604.0, child: SeatWidget(7)), Positioned(top: 379.0, left: 1643.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 245.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 285.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 325.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 365.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 405.0, child: SeatWidget(7)), Positioned(top: 380.0, left: 445.0, child: SeatWidget(7)), Positioned(top: 420.0, left: 715.0, child: SeatWidget(8)), Positioned(top: 420.0, left: 760.0, child: SeatWidget(8)), Positioned(top: 420.0, left: 800.0, child: SeatWidget(8)), Positioned(top: 420.0, left: 850.0, child: SeatWidget(8)), Positioned(top: 420.0, left: 891.0, child: SeatWidget(8)), Positioned(top: 420.0, left: 941.0, child: SeatWidget(8)), Positioned(top: 420.0, left: 980.0, child: SeatWidget(8)), Positioned(top: 420.0, left: 1030.0, child: SeatWidget(8)), Positioned(top: 420.0, left: 1070.0, child: SeatWidget(8)), Positioned(top: 420.0, left: 1120.0, child: SeatWidget(8)), Positioned(top: 420.0, left: 355.0, child: SeatWidget(8)), Positioned(top: 420.0, left: 1160.0, child: SeatWidget(8)), Positioned(top: 420.0, left: 1210.0, child: SeatWidget(8)), Positioned(top: 420.0, left: 410.0, child: SeatWidget(8)), Positioned(top: 420.0, left: 450.0, child: SeatWidget(8)), Positioned(top: 420.0, left: 495.0, child: SeatWidget(8)), Positioned(top: 420.0, left: 535.0, child: SeatWidget(8)), Positioned(top: 420.0, left: 585.0, child: SeatWidget(8)), Positioned(top: 420.0, left: 625.0, child: SeatWidget(8)), Positioned(top: 420.0, left: 675.0, child: SeatWidget(8)), Positioned(top: 460.0, left: 314.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 713.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 758.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 798.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 848.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 888.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 938.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 978.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 1028.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 1068.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 1118.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 353.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 1158.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 1208.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 1248.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 1298.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 1340.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 403.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 442.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 493.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 533.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 583.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 623.0, child: SeatWidget(9)), Positioned(top: 460.0, left: 673.0, child: SeatWidget(9)), 

//       ],
//     );
//   }
// }


// // class CinemaBookingHall extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Stack(
// //       children: [
// //         // Cinema screen
// //         Container(
// //           color: Colors.grey,
// //           width: double.infinity,
// //           height: 200.0,
// //           child: Center(
// //             child: Text(
// //               'Screen',
// //               style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
// //             ),
// //           ),
// //         ),
// //         // Seats and row numbers
// //         Row(
// //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //           children: [
// //             // Left row number
// //             Container(
// //               padding: EdgeInsets.symmetric(vertical: 5.0),
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                 children: [
// //                   RowNumberWidget(1),
// //                   RowNumberWidget(2),
// //                   // Add more row numbers as needed
// //                 ],
// //               ),
// //             ),
// //             // Seats
// //             Column(
// //               children: [
// //                 Positioned(
// //                   top: 50.0,
// //                   left: 10.0,
// //                   child: SeatWidget(1),
// //                 ),
// //                 Positioned(
// //                   top: 50.0,
// //                   left: 60.0,
// //                   child: SeatWidget(2),
// //                 ),
// //                 // Add more seats as needed
// //               ],
// //             ),
// //             // Right row number
// //             Container(
// //               padding: EdgeInsets.symmetric(vertical: 5.0),
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                 children: [
// //                   RowNumberWidget(1),
// //                   RowNumberWidget(2),
// //                   // Add more row numbers as needed
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ],
// //     );
// //   }
// // }

// class SeatWidget extends StatelessWidget {
//   final int seatNumber;

//   SeatWidget(this.seatNumber);

//   @override
//   Widget build(BuildContext context) {
//     final seatSize = 0.03 * MediaQuery.of(context).size.width;

//     return Container(
//       width: 30,
//       height: 30,
//       margin: EdgeInsets.all(5.0),
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         border: Border.all(color: Colors.black),
//         borderRadius: BorderRadius.circular(5.0),
//       ),
//        child: Center(
//         child: Text(
//           seatNumber.toString(),
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }



// class RowNumberWidget extends StatelessWidget {
//   final int rowNumber;

//   RowNumberWidget(this.rowNumber);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       rowNumber.toString(),
//       style: TextStyle(
//         fontWeight: FontWeight.bold,
//       ),
//     );
//   }
// }


// class ScreenWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ClipPath(
//       clipper: ScreenClipper(),
//       child: Container(
//         color: Colors.grey,
//         height: 50.0,
//       ),
//     );
//   }
// }

// class ScreenClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.moveTo(0, size.height);
//     path.quadraticBezierTo(size.width / 2, size.height + 20, size.width, size.height);
//     path.lineTo(size.width, 0);
//     path.lineTo(0, 0);
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }


// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Cinema Booking'),
//         ),
//         body: HorizontalScrollableCinemaBookingHall(),
//       ),
//     );
//   }
// }

// class HorizontalScrollableCinemaBookingHall extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: [
//           // Cinema screen
//           ScreenWidget(),
//           // Seats
//           SizedBox(width: 10.0), // Add some spacing
          


//           // Add more seats as needed
//         ],
//       ),
//     );
//   }
// }

// class SeatWidget extends StatelessWidget {
//   final int seatNumber;

//   SeatWidget(this.seatNumber);

//   @override
//   Widget build(BuildContext context) {
//     final seatSize = 50.0; // Set a fixed seat size for demonstration

//     return Container(
//       width: seatSize,
//       height: seatSize,
//       margin: EdgeInsets.all(5.0),
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         border: Border.all(color: Colors.black),
//         borderRadius: BorderRadius.circular(5.0),
//       ),
//       child: Center(
//         child: Text(
//           seatNumber.toString(),
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ScreenWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.grey,
//       height: 50.0,
//       width: 100.0, // Set a fixed screen width for demonstration
//       child: Center(
//         child: Text(
//           'Screen',
//           style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter Zoom and Scroll Example'),
//         ),
//         body: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Expanded(
//                 child: Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.blue,
//                 ),
//               ),
//               Expanded(
//                 child: ZoomableAndScrollableWidget(
//                   child: Stack(
//                     children: [
//                       Container(
//                         width: 800, // Set a width larger than the screen
//                         height: 200,
//                         color: Colors.green,
//                       ),
//                       Positioned(
//                         top: 50,
//                         left: 50,
//                         child: Container(
//                           width: 100,
//                           height: 100,
//                           color: Colors.red,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.yellow,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ZoomableAndScrollableWidget extends StatefulWidget {
//   final Widget child;

//   const ZoomableAndScrollableWidget({Key? key, required this.child})
//       : super(key: key);

//   @override
//   _ZoomableAndScrollableWidgetState createState() =>
//       _ZoomableAndScrollableWidgetState();
// }

// class _ZoomableAndScrollableWidgetState
//     extends State<ZoomableAndScrollableWidget> {
//   double _scale = 1.0;
//   double _previousScale = 1.0;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onScaleStart: (details) {
//         _previousScale = _scale;
//       },
//       onScaleUpdate: (details) {
//         setState(() {
//           _scale = _previousScale * details.scale;
//         });
//       },
//       onDoubleTap: () {
//         setState(() {
//           _scale = _scale == 1.0 ? 2.0 : 1.0;
//         });
//       },
//       child: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Container(
//           width: widget.child is Stack
//               ? MediaQuery.of(context).size.width * 2
//               : null,
//           child: Transform.scale(
//             scale: _scale,
//             child: widget.child,
//           ),
//         ),
//       ),
//     );
//   }
// }



// class SeatWidget extends StatelessWidget {
//   final int seatNumber;

//   SeatWidget(this.seatNumber);

//   @override
//   Widget build(BuildContext context) {
//     final seatSize = 50.0; // Set a fixed seat size for demonstration

//     return Container(
//       width: seatSize,
//       height: seatSize,
//       margin: EdgeInsets.all(5.0),
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         border: Border.all(color: Colors.black),
//         borderRadius: BorderRadius.circular(5.0),
//       ),
//       child: Center(
//         child: Text(
//           seatNumber.toString(),
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class Seat {
  final double xCoordinate;
  final double yCoordinate;
  bool isSelected;

  Seat(this.xCoordinate, this.yCoordinate, this.isSelected);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cinema Hall Plan'),
        ),
        body: CinemaHall(),
      ),
    );
  }
}

class CinemaHall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ScreenWidget(),
        SizedBox(height: 10.0),
        SeatGrid(),
      ],
    );
  }
}

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1643,
      height: 200.0,
      color: Colors.grey,
      child: Center(
        child: Text(
          'Screen',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class SeatGrid extends StatefulWidget {
  @override
  _SeatGridState createState() => _SeatGridState();
}


class _SeatGridState extends State<SeatGrid> {
  final List<Seat> seats = [
Seat(274.0, 131.0, false), Seat(634.0, 131.0, false), Seat(674.0, 131.0, false), Seat(714.0, 131.0, false), Seat(754.0, 121.0, false), Seat(794.0, 121.0, false), Seat(834.0, 122.0, false), Seat(874.0, 131.0, false), Seat(914.0, 131.0, false), Seat(954.0, 131.0, false), Seat(994.0, 131.0, false), Seat(314.0, 131.0, false), Seat(1034.0, 131.0, false), Seat(1074.0, 131.0, false), Seat(1114.0, 131.0, false), Seat(1154.0, 131.0, false), Seat(1194.0, 131.0, false), Seat(1234.0, 131.0, false), Seat(1274.0, 131.0, false), Seat(1314.0, 131.0, false), Seat(354.0, 131.0, false), Seat(394.0, 131.0, false), Seat(434.0, 131.0, false), Seat(474.0, 131.0, false), Seat(514.0, 131.0, false), Seat(554.0, 131.0, false), Seat(594.0, 131.0, false), Seat(313.0, 497.0, false), Seat(713.0, 497.0, false), Seat(758.0, 497.0, false), Seat(798.0, 497.0, false), Seat(848.0, 497.0, false), Seat(888.0, 497.0, false), Seat(938.0, 497.0, false), Seat(978.0, 497.0, false), Seat(1029.0, 497.0, false), Seat(1068.0, 497.0, false), Seat(1118.0, 497.0, false), Seat(353.0, 497.0, false), Seat(1158.0, 497.0, false), Seat(1208.0, 497.0, false), Seat(1248.0, 497.0, false), Seat(1298.0, 497.0, false), Seat(1338.0, 497.0, false), Seat(1383.0, 497.0, false), Seat(1423.0, 497.0, false), Seat(403.0, 497.0, false), Seat(443.0, 497.0, false), Seat(493.0, 497.0, false), Seat(533.0, 497.0, false), Seat(583.0, 497.0, false), Seat(623.0, 497.0, false), Seat(673.0, 497.0, false), Seat(410.0, 545.0, false), Seat(835.0, 545.0, false), Seat(900.0, 545.0, false), Seat(940.0, 545.0, false), Seat(1000.0, 545.0, false), Seat(1040.0, 545.0, false), Seat(1105.0, 545.0, false), Seat(1145.0, 545.0, false), Seat(1210.0, 545.0, false), Seat(1251.0, 545.0, false), Seat(1330.0, 545.0, false), Seat(450.0, 545.0, false), Seat(1371.0, 545.0, false), Seat(510.0, 545.0, false), Seat(550.0, 545.0, false), Seat(605.0, 545.0, false), Seat(645.0, 545.0, false), Seat(700.0, 545.0, false), Seat(739.0, 545.0, false), Seat(794.0, 545.0, false), Seat(410.0, 590.0, false), Seat(835.0, 590.0, false), Seat(900.0, 590.0, false), Seat(940.0, 590.0, false), Seat(1000.0, 590.0, false), Seat(1040.0, 590.0, false), Seat(1105.0, 590.0, false), Seat(1145.0, 590.0, false), Seat(1210.0, 590.0, false), Seat(1255.0, 590.0, false), Seat(1330.0, 590.0, false), Seat(450.0, 590.0, false), Seat(1370.0, 590.0, false), Seat(510.0, 590.0, false), Seat(550.0, 590.0, false), Seat(605.0, 590.0, false), Seat(645.0, 590.0, false), Seat(700.0, 590.0, false), Seat(740.0, 590.0, false), Seat(795.0, 590.0, false), Seat(274.0, 174.0, false), Seat(634.0, 173.0, false), Seat(675.0, 173.0, false), Seat(715.0, 173.0, false), Seat(754.0, 173.0, false), Seat(794.0, 173.0, false), Seat(835.0, 173.0, false), Seat(874.0, 173.0, false), Seat(914.0, 173.0, false), Seat(955.0, 174.0, false), Seat(995.0, 174.0, false), Seat(314.0, 174.0, false), Seat(1034.0, 174.0, false), Seat(1074.0, 173.0, false), Seat(1114.0, 174.0, false), Seat(1155.0, 174.0, false), Seat(1194.0, 174.0, false), Seat(1234.0, 174.0, false), Seat(1274.0, 174.0, false), Seat(1314.0, 174.0, false), Seat(1354.0, 174.0, false), Seat(1394.0, 174.0, false), Seat(354.0, 173.0, false), Seat(1434.0, 174.0, false), Seat(1474.0, 174.0, false), Seat(394.0, 174.0, false), Seat(434.0, 173.0, false), Seat(474.0, 173.0, false), Seat(515.0, 173.0, false), Seat(554.0, 173.0, false), Seat(594.0, 173.0, false), Seat(129.0, 217.0, false), Seat(489.0, 217.0, false), Seat(529.0, 217.0, false), Seat(569.0, 217.0, false), Seat(609.0, 217.0, false), Seat(649.0, 217.0, false), Seat(689.0, 217.0, false), Seat(729.0, 217.0, false), Seat(769.0, 217.0, false), Seat(809.0, 217.0, false), Seat(849.0, 217.0, false), Seat(169.0, 217.0, false), Seat(889.0, 217.0, false), Seat(929.0, 217.0, false), Seat(969.0, 217.0, false), Seat(1009.0, 217.0, false), Seat(1049.0, 217.0, false), Seat(1089.0, 217.0, false), Seat(1129.0, 217.0, false), Seat(1170.0, 217.0, false), Seat(1210.0, 217.0, false), Seat(1249.0, 217.0, false), Seat(209.0, 217.0, false), Seat(1290.0, 217.0, false), Seat(1330.0, 217.0, false), Seat(1369.0, 217.0, false), Seat(1409.0, 217.0, false), Seat(1449.0, 217.0, false), Seat(249.0, 217.0, false), Seat(289.0, 217.0, false), Seat(329.0, 217.0, false), Seat(369.0, 217.0, false), Seat(409.0, 217.0, false), Seat(449.0, 217.0, false), Seat(128.0, 260.0, false), Seat(488.0, 260.0, false), Seat(527.0, 260.0, false), Seat(569.0, 260.0, false), Seat(608.0, 260.0, false), Seat(647.0, 260.0, false), Seat(688.0, 260.0, false), Seat(729.0, 260.0, false), Seat(767.0, 260.0, false), Seat(809.0, 260.0, false), Seat(848.0, 260.0, false), Seat(167.0, 260.0, false), Seat(887.0, 260.0, false), Seat(928.0, 260.0, false), Seat(968.0, 260.0, false), Seat(1007.0, 260.0, false), Seat(1048.0, 260.0, false), Seat(1089.0, 260.0, false), Seat(1127.0, 260.0, false), Seat(1169.0, 260.0, false), Seat(1208.0, 260.0, false), Seat(1247.0, 260.0, false), Seat(208.0, 260.0, false), Seat(1289.0, 260.0, false), Seat(1328.0, 260.0, false), Seat(1367.0, 260.0, false), Seat(1408.0, 260.0, false), Seat(1448.0, 260.0, false), Seat(1487.0, 260.0, false), Seat(248.0, 260.0, false), Seat(287.0, 260.0, false), Seat(328.0, 260.0, false), Seat(368.0, 260.0, false), Seat(407.0, 260.0, false), Seat(449.0, 260.0, false), Seat(127.0, 300.0, false), Seat(487.0, 300.0, false), Seat(527.0, 300.0, false), Seat(567.0, 300.0, false), Seat(607.0, 300.0, false), Seat(647.0, 300.0, false), Seat(687.0, 300.0, false), Seat(727.0, 300.0, false), Seat(767.0, 300.0, false), Seat(807.0, 300.0, false), Seat(847.0, 300.0, false), Seat(167.0, 300.0, false), Seat(887.0, 300.0, false), Seat(927.0, 300.0, false), Seat(967.0, 300.0, false), Seat(1007.0, 300.0, false), Seat(1047.0, 300.0, false), Seat(1087.0, 300.0, false), Seat(1127.0, 300.0, false), Seat(1167.0, 300.0, false), Seat(1207.0, 300.0, false), Seat(1247.0, 300.0, false), Seat(207.0, 300.0, false), Seat(1287.0, 300.0, false), Seat(1327.0, 300.0, false), Seat(1367.0, 300.0, false), Seat(1407.0, 300.0, false), Seat(1447.0, 300.0, false), Seat(1487.0, 300.0, false), Seat(247.0, 300.0, false), Seat(287.0, 300.0, false), Seat(327.0, 300.0, false), Seat(367.0, 300.0, false), Seat(407.0, 300.0, false), Seat(447.0, 300.0, false), Seat(127.0, 340.0, false), Seat(487.0, 340.0, false), Seat(527.0, 340.0, false), Seat(567.0, 340.0, false), Seat(607.0, 340.0, false), Seat(647.0, 340.0, false), Seat(687.0, 340.0, false), Seat(727.0, 340.0, false), Seat(767.0, 340.0, false), Seat(807.0, 340.0, false), Seat(847.0, 340.0, false), Seat(167.0, 340.0, false), Seat(887.0, 340.0, false), Seat(927.0, 340.0, false), Seat(967.0, 340.0, false), Seat(1007.0, 340.0, false), Seat(1047.0, 340.0, false), Seat(1087.0, 340.0, false), Seat(1127.0, 340.0, false), Seat(1167.0, 340.0, false), Seat(1207.0, 340.0, false), Seat(1247.0, 340.0, false), Seat(207.0, 340.0, false), Seat(1287.0, 340.0, false), Seat(1327.0, 340.0, false), Seat(1367.0, 340.0, false), Seat(1407.0, 340.0, false), Seat(1447.0, 340.0, false), Seat(1487.0, 340.0, false), Seat(247.0, 340.0, false), Seat(287.0, 340.0, false), Seat(327.0, 340.0, false), Seat(367.0, 340.0, false), Seat(407.0, 340.0, false), Seat(447.0, 340.0, false), Seat(125.0, 380.0, false), Seat(485.0, 380.0, false), Seat(525.0, 380.0, false), Seat(565.0, 380.0, false), Seat(605.0, 380.0, false), Seat(645.0, 380.0, false), Seat(685.0, 380.0, false), Seat(725.0, 380.0, false), Seat(765.0, 380.0, false), Seat(805.0, 380.0, false), Seat(845.0, 380.0, false), Seat(165.0, 380.0, false), Seat(885.0, 380.0, false), Seat(930.0, 380.0, false), Seat(970.0, 380.0, false), Seat(1010.0, 380.0, false), Seat(1050.0, 380.0, false), Seat(1090.0, 380.0, false), Seat(1130.0, 380.0, false), Seat(1170.0, 380.0, false), Seat(1210.0, 380.0, false), Seat(1250.0, 380.0, false), Seat(205.0, 380.0, false), Seat(1290.0, 380.0, false), Seat(1330.0, 380.0, false), Seat(1370.0, 380.0, false), Seat(1410.0, 380.0, false), Seat(1450.0, 380.0, false), Seat(1490.0, 380.0, false), Seat(1528.0, 379.0, false), Seat(1566.0, 378.0, false), Seat(1604.0, 379.0, false), Seat(1643.0, 379.0, false), Seat(245.0, 380.0, false), Seat(285.0, 380.0, false), Seat(325.0, 380.0, false), Seat(365.0, 380.0, false), Seat(405.0, 380.0, false), Seat(445.0, 380.0, false), Seat(715.0, 420.0, false), Seat(760.0, 420.0, false), Seat(800.0, 420.0, false), Seat(850.0, 420.0, false), Seat(891.0, 420.0, false), Seat(941.0, 420.0, false), Seat(980.0, 420.0, false), Seat(1030.0, 420.0, false), Seat(1070.0, 420.0, false), Seat(1120.0, 420.0, false), Seat(355.0, 420.0, false), Seat(1160.0, 420.0, false), Seat(1210.0, 420.0, false), Seat(410.0, 420.0, false), Seat(450.0, 420.0, false), Seat(495.0, 420.0, false), Seat(535.0, 420.0, false), Seat(585.0, 420.0, false), Seat(625.0, 420.0, false), Seat(675.0, 420.0, false), Seat(314.0, 460.0, false), Seat(713.0, 460.0, false), Seat(758.0, 460.0, false), Seat(798.0, 460.0, false), Seat(848.0, 460.0, false), Seat(888.0, 460.0, false), Seat(938.0, 460.0, false), Seat(978.0, 460.0, false), Seat(1028.0, 460.0, false), Seat(1068.0, 460.0, false), Seat(1118.0, 460.0, false), Seat(353.0, 460.0, false), Seat(1158.0, 460.0, false), Seat(1208.0, 460.0, false), Seat(1248.0, 460.0, false), Seat(1298.0, 460.0, false), Seat(1340.0, 460.0, false), Seat(403.0, 460.0, false), Seat(442.0, 460.0, false), Seat(493.0, 460.0, false), Seat(533.0, 460.0, false), Seat(583.0, 460.0, false), Seat(623.0, 460.0, false), Seat(673.0, 460.0, false), 

    // Add more seats as needed
  ];
  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: seats.isNotEmpty ? 1643 + 50: double.infinity,
        height: 1500.0, // Adjust as needed
        child: Stack(
          children: seats.map((seat) {
            return Positioned(
              left: seat.xCoordinate,
              top: seat.yCoordinate,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    seat.isSelected = !seat.isSelected;
                  });
                },
                child: SeatWidget(seat: seat),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}


class SeatWidget extends StatelessWidget {
  final Seat seat;

  SeatWidget({required this.seat});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: seat.isSelected ? Colors.blue : Colors.white,
      ),
      child: Center(
        child: Text('(${seat.xCoordinate.toInt()}, ${seat.yCoordinate.toInt()})'),
      ),
    );
  }
}





