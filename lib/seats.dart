
class Seat {
  final String id;
  final String row;
  final String place;
  double xCoordinate;
  double yCoordinate;
  final int width;
  final int height;
  final int status;
  bool isSelected;
  double price; // New property for seat price

  Seat({
    required this.id,
    required this.row,
    required this.place,
    required this.xCoordinate,
    required this.yCoordinate,
    required this.width,
    required this.height,
    required this.status,
    this.isSelected = false,
    this.price = 0.0, // Default price
  });
}

class CinemaRow {
  final String rowName;
  final double yCoordinate;
  final List<Seat> seats;

  CinemaRow(
      {required this.rowName, required this.yCoordinate, required this.seats});
}


List<CinemaRow> seats = [
     CinemaRow(rowName: "2", yCoordinate: 100, seats: [Seat(id: "721", row: "2", place: "1", xCoordinate: 115.0, yCoordinate: 100.0, width: 35, height: 35, status: 1), Seat(id: "722", row: "2", place: "2", xCoordinate: 155.0, yCoordinate: 100.0, width: 35, height: 35, status: 1), Seat(id: "723", row: "2", place: "3", xCoordinate: 255.0, yCoordinate: 100.0, width: 35, height: 35, status: 1), Seat(id: "724", row: "2", place: "4", xCoordinate: 295.0, yCoordinate: 100.0, width: 35, height: 35, status: 1), Seat(id: "725", row: "2", place: "5", xCoordinate: 395.0, yCoordinate: 100.0, width: 35, height: 35, status: 1), Seat(id: "726", row: "2", place: "6", xCoordinate: 435.0, yCoordinate: 100.0, width: 35, height: 35, status: 1), ]),
CinemaRow(rowName: "3", yCoordinate: 60, seats: [Seat(id: "712", row: "3", place: "1", xCoordinate: 65.0, yCoordinate: 60.0, width: 35, height: 35, status: 1), Seat(id: "713", row: "3", place: "2", xCoordinate: 105.0, yCoordinate: 60.0, width: 35, height: 35, status: 1), Seat(id: "714", row: "3", place: "3", xCoordinate: 180.0, yCoordinate: 60.0, width: 35, height: 35, status: 1), Seat(id: "715", row: "3", place: "4", xCoordinate: 220.0, yCoordinate: 60.0, width: 35, height: 35, status: 1), Seat(id: "716", row: "3", place: "5", xCoordinate: 330.0, yCoordinate: 60.0, width: 35, height: 35, status: 1), Seat(id: "717", row: "3", place: "6", xCoordinate: 370.0, yCoordinate: 60.0, width: 35, height: 35, status: 1), Seat(id: "718", row: "3", place: "7", xCoordinate: 445.0, yCoordinate: 60.0, width: 35, height: 35, status: 1), Seat(id: "719", row: "3", place: "8", xCoordinate: 485.0, yCoordinate: 60.0, width: 35, height: 35, status: 1), ]),
CinemaRow(rowName: "1", yCoordinate: 140, seats: [Seat(id: "728", row: "1", place: "1", xCoordinate: 135.0, yCoordinate: 140.0, width: 35, height: 35, status: 1), Seat(id: "729", row: "1", place: "2", xCoordinate: 175.0, yCoordinate: 140.0, width: 35, height: 35, status: 1), Seat(id: "730", row: "1", place: "3", xCoordinate: 255.0, yCoordinate: 140.0, width: 35, height: 35, status: 1), Seat(id: "731", row: "1", place: "4", xCoordinate: 295.0, yCoordinate: 140.0, width: 35, height: 35, status: 1), Seat(id: "732", row: "1", place: "5", xCoordinate: 375.0, yCoordinate: 140.0, width: 35, height: 35, status: 1), Seat(id: "733", row: "1", place: "6", xCoordinate: 415.0, yCoordinate: 140.0, width: 35, height: 35, status: 1), ]),

    ];