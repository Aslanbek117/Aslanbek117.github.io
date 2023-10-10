import 'dart:math';

import 'package:flutter/material.dart';
import 'package:the_basics/screen.dart';
import 'dart:math' as math;

import 'package:the_basics/seats.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Seat> selectedSeats = []; // Store selected seats
  List<CinemaRow> cinemaRows = seats;

  @override
  Widget build(BuildContext context) {
    // Calculate the maximum x and y coordina es
    double maxX = double.minPositive;
    double maxY = double.minPositive;

    for (CinemaRow cinemaRow in cinemaRows) {
      for (Seat seat in cinemaRow.seats) {
        if (seat.xCoordinate + seat.width > maxX) {
          maxX = seat.xCoordinate + seat.width;
        }

        if (cinemaRow.yCoordinate + seat.yCoordinate + seat.height > maxY) {
          maxY = cinemaRow.yCoordinate + seat.yCoordinate + seat.height;
        }
      }
    }

    // Calculate the minimum scale factor
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double minScaleX = screenWidth / maxX;
    double minScaleY = screenHeight / maxY;
    double minScale = min(minScaleX, minScaleY);

    // Ensure that maxScale is greater than or equal to minScale
    double maxScale = max(minScale, 10.0);

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Select seats',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                )),
          ),
          body: Container(
            color: Colors
                .white, //Color.fromARGB(0, 6, 1, 11), // Set your desired background color
            child: Column(
              children: [
                Center(
                  // Center only the movie information
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'The Matrix',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Chaplin mega',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w200),
                        ),
                        Text(
                          '2021-01-01  23:00 Hall 8',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),

                CinemaScreenShape(),

                Expanded(
                    flex: 3,
                    child: Align(
                      alignment: Alignment.center,
                      child: InteractiveViewer(
                        maxScale: maxScale,
                        child: SeatGrid(
                          cinemaRows: cinemaRows,
                          minScale: minScale,
                          horizontalGap: 5.0,
                          verticalGap: 5.0,
                          onSeatSelected: (Seat seat) {
                            if (!selectedSeats.contains(seat)) {
                              setState(() {
                                selectedSeats.add(seat);
                              });
                            } else {
                              setState(() {
                                selectedSeats.remove(seat);
                              });
                            }
                            print(
                                'Selected Seats: ${selectedSeats.map((s) => s.place).toList()}');
                          },
                        ),
                      ),
                    )),
                // Display Selected Seats
                 Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // Label for selected seats count
                    Text(
                      'Selected Seats (${selectedSeats.length})',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          // Display selected seats...
                          for (Seat seat in selectedSeats)
                            Container(
                              margin: EdgeInsets.all(8.0),
                              padding: EdgeInsets.all(8.0),
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Text(
                                    'Seat ${seat.place}',
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                  SizedBox(width: 8.0),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedSeats.remove(seat);
                                      });
                                    },
                                    child: Icon(
                                      Icons.close,
                                      size: 20.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ],
            ),
          )),
    );
  }
}

class SeatGrid extends StatefulWidget {
  final List<CinemaRow> cinemaRows;
  final double minScale;
  final double horizontalGap;
  final double verticalGap;
  final Function(Seat) onSeatSelected;

  SeatGrid({
    required this.cinemaRows,
    required this.minScale,
    required this.horizontalGap,
    required this.verticalGap,
    required this.onSeatSelected,
  });

  @override
  _SeatGridState createState() =>
      _SeatGridState(onSeatSelected: onSeatSelected);
}

class _SeatGridState extends State<SeatGrid> {
  final Function(Seat) onSeatSelected;

  _SeatGridState({required this.onSeatSelected});
  // Track the selected seats

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Main seat grid
        Positioned.fill(
          child: Stack(
            children: widget.cinemaRows.expand((cinemaRow) {
              return cinemaRow.seats.map((seat) {
                double scaledX = seat.xCoordinate * widget.minScale;
                double scaledY = seat.yCoordinate * widget.minScale;

                return Positioned(
                  left: scaledX,
                  top: scaledY,
                  child: GestureDetector(
                    onTap: () {
                      // Handle seat tap
                      setState(() {
                        seat.isSelected = !seat.isSelected;
                      });
                      onSeatSelected(seat);

                      if (seat.isSelected) {
                        _showBottomSheet(context, seat);
                      }
                    },
                    child: SeatWidget(
                      seat: seat,
                      minScale: widget.minScale,
                      horizontalGap: widget.horizontalGap,
                      verticalGap: widget.verticalGap,
                    ),
                  ),
                );
              });
            }).toList(),
          ),
        ),
      ],
    );
  }

  // Function to show the bottom sheet
  void _showBottomSheet(BuildContext context, Seat seat) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Select Price for Seat ${seat.place}'),
              ),
              ListTile(
                title: Text('Price 1'),
                onTap: () {
                  // Update the price and close the bottom sheet
                  setState(() {
                    seat.price = 1.0;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Price 2'),
                onTap: () {
                  // Update the price and close the bottom sheet
                  setState(() {
                    seat.price = 2.0;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Price 3'),
                onTap: () {
                  // Update the price and close the bottom sheet
                  setState(() {
                    seat.price = 3.0;
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class SeatWidget extends StatelessWidget {
  final Seat seat;
  final double minScale;
  final double horizontalGap;
  final double verticalGap;

  SeatWidget(
      {required this.seat,
      required this.minScale,
      required this.horizontalGap,
      required this.verticalGap});

  Color _getSeatColor() {
    switch (seat.status) {
      case 0:
        return Colors.white; // Available
      case 1:
        return Colors.white; // Booked
      case 2:
        return Colors.red; // Reserved
      default:
        return Colors.white; // Default color
    }
  }

  @override
  Widget build(BuildContext context) {
    double scaledWidth = seat.width.toDouble() * minScale;
    double scaledHeight = seat.height.toDouble() * minScale;
    double fontSize = 16.0 * minScale; // Adjust the initial font size

    return Container(
      width: scaledWidth,
      height: scaledHeight,
      margin: EdgeInsets.symmetric(
          horizontal: horizontalGap, vertical: verticalGap),
      decoration: BoxDecoration(
        color: seat.isSelected ? Colors.blue : _getSeatColor(),
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Text(
          '${seat.place}',
          style: TextStyle(fontSize: fontSize, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
