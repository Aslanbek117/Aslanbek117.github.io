
import 'package:flutter/material.dart';
import 'package:the_basics/seats.dart';

class CinemaScreenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color =
          Color.fromARGB(255, 212, 204, 212) // Change the color as needed
      ..style = PaintingStyle.fill;

    // Draw a rectangle with rounded corners
    RRect screenRect = RRect.fromRectAndRadius(
      Rect.fromPoints(Offset(0, 0), Offset(size.width, size.height)),
      Radius.circular(0), // Adjust the radius for rounded corners
    );

    canvas.drawRRect(screenRect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}


class SelectedSeatsList extends StatelessWidget {
  List<Seat> selectedSeats;

  SelectedSeatsList({required this.selectedSeats});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: selectedSeats.length,
        itemBuilder: (context, index) {
          Seat seat = selectedSeats[index];

          return Container(
            margin: EdgeInsets.all(8.0),
            color: Colors.blue, // Adjust color as needed
            child: Center(
              child: Text(
                seat.place,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CinemaScreenShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20), // Add a margin of 20 pixels

      width: double.infinity, // Take up full width
      height: 30,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 3, // Spread radius
            // blurRadius: 3, // Blur radius
            offset: Offset(0, 3), // Offset in the x and y axis
          ),
        ],
      ),
      child: Stack(
        children: [
          CustomPaint(
            painter: CinemaScreenPainter(),
          ),
          Center(
            child: Text(
              'Screen', // Replace with your text
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
