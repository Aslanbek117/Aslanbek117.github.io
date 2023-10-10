import 'package:flutter/material.dart';

const primaryColor = Color.fromARGB(255, 196, 200, 205);
const secondaryColor = Color.fromARGB(255, 168, 171, 189);
const bgColor = Color.fromARGB(255, 217, 218, 230);

const defaultPadding = 16.0;


void main() => runApp(MyApp());


class Seat {
  final double xCoordinate;
  final double yCoordinate;
  final int place;
  bool isSelected;
  int? priceIndex; // Added property


  Seat(this.xCoordinate, this.yCoordinate, this.isSelected, this.place, {this.priceIndex});
}

class Price {
  final String name;
  final double amount;

  Price(this.name, this.amount);
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
      height: 100.0,
      color: Colors.grey,
      child: Center(
        child: Text(
          "Экран",
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
Seat(274.0, 131.0, false, 1), Seat(634.0, 131.0, false, 10), Seat(674.0, 131.0, false, 11), Seat(714.0, 131.0, false, 12), Seat(754.0, 121.0, false, 13), Seat(794.0, 121.0, false, 14), Seat(834.0, 122.0, false, 15), Seat(874.0, 131.0, false, 16), Seat(914.0, 131.0, false, 17), Seat(954.0, 131.0, false, 18), Seat(994.0, 131.0, false, 19), Seat(314.0, 131.0, false, 2), Seat(1034.0, 131.0, false, 20), Seat(1074.0, 131.0, false, 21), Seat(1114.0, 131.0, false, 22), Seat(1154.0, 131.0, false, 23), Seat(1194.0, 131.0, false, 24), Seat(1234.0, 131.0, false, 25), Seat(1274.0, 131.0, false, 26), Seat(1314.0, 131.0, false, 27), Seat(354.0, 131.0, false, 3), Seat(394.0, 131.0, false, 4), Seat(434.0, 131.0, false, 5), Seat(474.0, 131.0, false, 6), Seat(514.0, 131.0, false, 7), Seat(554.0, 131.0, false, 8), Seat(594.0, 131.0, false, 9), Seat(313.0, 497.0, false, 1), Seat(713.0, 497.0, false, 10), Seat(758.0, 497.0, false, 11), Seat(798.0, 497.0, false, 12), Seat(848.0, 497.0, false, 13), Seat(888.0, 497.0, false, 14), Seat(938.0, 497.0, false, 15), Seat(978.0, 497.0, false, 16), Seat(1029.0, 497.0, false, 17), Seat(1068.0, 497.0, false, 18), Seat(1118.0, 497.0, false, 19), Seat(353.0, 497.0, false, 2), Seat(1158.0, 497.0, false, 20), Seat(1208.0, 497.0, false, 21), Seat(1248.0, 497.0, false, 22), Seat(1298.0, 497.0, false, 23), Seat(1338.0, 497.0, false, 24), Seat(1383.0, 497.0, false, 25), Seat(1423.0, 497.0, false, 26), Seat(403.0, 497.0, false, 3), Seat(443.0, 497.0, false, 4), Seat(493.0, 497.0, false, 5), Seat(533.0, 497.0, false, 6), Seat(583.0, 497.0, false, 7), Seat(623.0, 497.0, false, 8), Seat(673.0, 497.0, false, 9), Seat(410.0, 545.0, false, 1), Seat(835.0, 545.0, false, 10), Seat(900.0, 545.0, false, 11), Seat(940.0, 545.0, false, 12), Seat(1000.0, 545.0, false, 13), Seat(1040.0, 545.0, false, 14), Seat(1105.0, 545.0, false, 15), Seat(1145.0, 545.0, false, 16), Seat(1210.0, 545.0, false, 17), Seat(1251.0, 545.0, false, 18), Seat(1330.0, 545.0, false, 19), Seat(450.0, 545.0, false, 2), Seat(1371.0, 545.0, false, 20), Seat(510.0, 545.0, false, 3), Seat(550.0, 545.0, false, 4), Seat(605.0, 545.0, false, 5), Seat(645.0, 545.0, false, 6), Seat(700.0, 545.0, false, 7), Seat(739.0, 545.0, false, 8), Seat(794.0, 545.0, false, 9), Seat(410.0, 590.0, false, 1), Seat(835.0, 590.0, false, 10), Seat(900.0, 590.0, false, 11), Seat(940.0, 590.0, false, 12), Seat(1000.0, 590.0, false, 13), Seat(1040.0, 590.0, false, 14), Seat(1105.0, 590.0, false, 15), Seat(1145.0, 590.0, false, 16), Seat(1210.0, 590.0, false, 17), Seat(1255.0, 590.0, false, 18), Seat(1330.0, 590.0, false, 19), Seat(450.0, 590.0, false, 2), Seat(1370.0, 590.0, false, 20), Seat(510.0, 590.0, false, 3), Seat(550.0, 590.0, false, 4), Seat(605.0, 590.0, false, 5), Seat(645.0, 590.0, false, 6), Seat(700.0, 590.0, false, 7), Seat(740.0, 590.0, false, 8), Seat(795.0, 590.0, false, 9), Seat(274.0, 174.0, false, 1), Seat(634.0, 173.0, false, 10), Seat(675.0, 173.0, false, 11), Seat(715.0, 173.0, false, 12), Seat(754.0, 173.0, false, 13), Seat(794.0, 173.0, false, 14), Seat(835.0, 173.0, false, 15), Seat(874.0, 173.0, false, 16), Seat(914.0, 173.0, false, 17), Seat(955.0, 174.0, false, 18), Seat(995.0, 174.0, false, 19), Seat(314.0, 174.0, false, 2), Seat(1034.0, 174.0, false, 20), Seat(1074.0, 173.0, false, 21), Seat(1114.0, 174.0, false, 22), Seat(1155.0, 174.0, false, 23), Seat(1194.0, 174.0, false, 24), Seat(1234.0, 174.0, false, 25), Seat(1274.0, 174.0, false, 26), Seat(1314.0, 174.0, false, 27), Seat(1354.0, 174.0, false, 28), Seat(1394.0, 174.0, false, 29), Seat(354.0, 173.0, false, 3), Seat(1434.0, 174.0, false, 30), Seat(1474.0, 174.0, false, 31), Seat(394.0, 174.0, false, 4), Seat(434.0, 173.0, false, 5), Seat(474.0, 173.0, false, 6), Seat(515.0, 173.0, false, 7), Seat(554.0, 173.0, false, 8), Seat(594.0, 173.0, false, 9), Seat(129.0, 217.0, false, 1), Seat(489.0, 217.0, false, 10), Seat(529.0, 217.0, false, 11), Seat(569.0, 217.0, false, 12), Seat(609.0, 217.0, false, 13), Seat(649.0, 217.0, false, 14), Seat(689.0, 217.0, false, 15), Seat(729.0, 217.0, false, 16), Seat(769.0, 217.0, false, 17), Seat(809.0, 217.0, false, 18), Seat(849.0, 217.0, false, 19), Seat(169.0, 217.0, false, 2), Seat(889.0, 217.0, false, 20), Seat(929.0, 217.0, false, 21), Seat(969.0, 217.0, false, 22), Seat(1009.0, 217.0, false, 23), Seat(1049.0, 217.0, false, 24), Seat(1089.0, 217.0, false, 25), Seat(1129.0, 217.0, false, 26), Seat(1170.0, 217.0, false, 27), Seat(1210.0, 217.0, false, 28), Seat(1249.0, 217.0, false, 29), Seat(209.0, 217.0, false, 3), Seat(1290.0, 217.0, false, 30), Seat(1330.0, 217.0, false, 31), Seat(1369.0, 217.0, false, 32), Seat(1409.0, 217.0, false, 33), Seat(1449.0, 217.0, false, 34), Seat(249.0, 217.0, false, 4), Seat(289.0, 217.0, false, 5), Seat(329.0, 217.0, false, 6), Seat(369.0, 217.0, false, 7), Seat(409.0, 217.0, false, 8), Seat(449.0, 217.0, false, 9), Seat(128.0, 260.0, false, 1), Seat(488.0, 260.0, false, 10), Seat(527.0, 260.0, false, 11), Seat(569.0, 260.0, false, 12), Seat(608.0, 260.0, false, 13), Seat(647.0, 260.0, false, 14), Seat(688.0, 260.0, false, 15), Seat(729.0, 260.0, false, 16), Seat(767.0, 260.0, false, 17), Seat(809.0, 260.0, false, 18), Seat(848.0, 260.0, false, 19), Seat(167.0, 260.0, false, 2), Seat(887.0, 260.0, false, 20), Seat(928.0, 260.0, false, 21), Seat(968.0, 260.0, false, 22), Seat(1007.0, 260.0, false, 23), Seat(1048.0, 260.0, false, 24), Seat(1089.0, 260.0, false, 25), Seat(1127.0, 260.0, false, 26), Seat(1169.0, 260.0, false, 27), Seat(1208.0, 260.0, false, 28), Seat(1247.0, 260.0, false, 29), Seat(208.0, 260.0, false, 3), Seat(1289.0, 260.0, false, 30), Seat(1328.0, 260.0, false, 31), Seat(1367.0, 260.0, false, 32), Seat(1408.0, 260.0, false, 33), Seat(1448.0, 260.0, false, 34), Seat(1487.0, 260.0, false, 35), Seat(248.0, 260.0, false, 4), Seat(287.0, 260.0, false, 5), Seat(328.0, 260.0, false, 6), Seat(368.0, 260.0, false, 7), Seat(407.0, 260.0, false, 8), Seat(449.0, 260.0, false, 9), Seat(127.0, 300.0, false, 1), Seat(487.0, 300.0, false, 10), Seat(527.0, 300.0, false, 11), Seat(567.0, 300.0, false, 12), Seat(607.0, 300.0, false, 13), Seat(647.0, 300.0, false, 14), Seat(687.0, 300.0, false, 15), Seat(727.0, 300.0, false, 16), Seat(767.0, 300.0, false, 17), Seat(807.0, 300.0, false, 18), Seat(847.0, 300.0, false, 19), Seat(167.0, 300.0, false, 2), Seat(887.0, 300.0, false, 20), Seat(927.0, 300.0, false, 21), Seat(967.0, 300.0, false, 22), Seat(1007.0, 300.0, false, 23), Seat(1047.0, 300.0, false, 24), Seat(1087.0, 300.0, false, 25), Seat(1127.0, 300.0, false, 26), Seat(1167.0, 300.0, false, 27), Seat(1207.0, 300.0, false, 28), Seat(1247.0, 300.0, false, 29), Seat(207.0, 300.0, false, 3), Seat(1287.0, 300.0, false, 30), Seat(1327.0, 300.0, false, 31), Seat(1367.0, 300.0, false, 32), Seat(1407.0, 300.0, false, 33), Seat(1447.0, 300.0, false, 34), Seat(1487.0, 300.0, false, 35), Seat(247.0, 300.0, false, 4), Seat(287.0, 300.0, false, 5), Seat(327.0, 300.0, false, 6), Seat(367.0, 300.0, false, 7), Seat(407.0, 300.0, false, 8), Seat(447.0, 300.0, false, 9), Seat(127.0, 340.0, false, 1), Seat(487.0, 340.0, false, 10), Seat(527.0, 340.0, false, 11), Seat(567.0, 340.0, false, 12), Seat(607.0, 340.0, false, 13), Seat(647.0, 340.0, false, 14), Seat(687.0, 340.0, false, 15), Seat(727.0, 340.0, false, 16), Seat(767.0, 340.0, false, 17), Seat(807.0, 340.0, false, 18), Seat(847.0, 340.0, false, 19), Seat(167.0, 340.0, false, 2), Seat(887.0, 340.0, false, 20), Seat(927.0, 340.0, false, 21), Seat(967.0, 340.0, false, 22), Seat(1007.0, 340.0, false, 23), Seat(1047.0, 340.0, false, 24), Seat(1087.0, 340.0, false, 25), Seat(1127.0, 340.0, false, 26), Seat(1167.0, 340.0, false, 27), Seat(1207.0, 340.0, false, 28), Seat(1247.0, 340.0, false, 29), Seat(207.0, 340.0, false, 3), Seat(1287.0, 340.0, false, 30), Seat(1327.0, 340.0, false, 31), Seat(1367.0, 340.0, false, 32), Seat(1407.0, 340.0, false, 33), Seat(1447.0, 340.0, false, 34), Seat(1487.0, 340.0, false, 35), Seat(247.0, 340.0, false, 4), Seat(287.0, 340.0, false, 5), Seat(327.0, 340.0, false, 6), Seat(367.0, 340.0, false, 7), Seat(407.0, 340.0, false, 8), Seat(447.0, 340.0, false, 9), Seat(125.0, 380.0, false, 1), Seat(485.0, 380.0, false, 10), Seat(525.0, 380.0, false, 11), Seat(565.0, 380.0, false, 12), Seat(605.0, 380.0, false, 13), Seat(645.0, 380.0, false, 14), Seat(685.0, 380.0, false, 15), Seat(725.0, 380.0, false, 16), Seat(765.0, 380.0, false, 17), Seat(805.0, 380.0, false, 18), Seat(845.0, 380.0, false, 19), Seat(165.0, 380.0, false, 2), Seat(885.0, 380.0, false, 20), Seat(930.0, 380.0, false, 21), Seat(970.0, 380.0, false, 22), Seat(1010.0, 380.0, false, 23), Seat(1050.0, 380.0, false, 24), Seat(1090.0, 380.0, false, 25), Seat(1130.0, 380.0, false, 26), Seat(1170.0, 380.0, false, 27), Seat(1210.0, 380.0, false, 28), Seat(1250.0, 380.0, false, 29), Seat(205.0, 380.0, false, 3), Seat(1290.0, 380.0, false, 30), Seat(1330.0, 380.0, false, 31), Seat(1370.0, 380.0, false, 32), Seat(1410.0, 380.0, false, 33), Seat(1450.0, 380.0, false, 34), Seat(1490.0, 380.0, false, 35), Seat(1528.0, 379.0, false, 36), Seat(1566.0, 378.0, false, 37), Seat(1604.0, 379.0, false, 38), Seat(1643.0, 379.0, false, 39), Seat(245.0, 380.0, false, 4), Seat(285.0, 380.0, false, 5), Seat(325.0, 380.0, false, 6), Seat(365.0, 380.0, false, 7), Seat(405.0, 380.0, false, 8), Seat(445.0, 380.0, false, 9), Seat(715.0, 420.0, false, 10), Seat(760.0, 420.0, false, 11), Seat(800.0, 420.0, false, 12), Seat(850.0, 420.0, false, 13), Seat(891.0, 420.0, false, 14), Seat(941.0, 420.0, false, 15), Seat(980.0, 420.0, false, 16), Seat(1030.0, 420.0, false, 17), Seat(1070.0, 420.0, false, 18), Seat(1120.0, 420.0, false, 19), Seat(355.0, 420.0, false, 2), Seat(1160.0, 420.0, false, 20), Seat(1210.0, 420.0, false, 21), Seat(410.0, 420.0, false, 3), Seat(450.0, 420.0, false, 4), Seat(495.0, 420.0, false, 5), Seat(535.0, 420.0, false, 6), Seat(585.0, 420.0, false, 7), Seat(625.0, 420.0, false, 8), Seat(675.0, 420.0, false, 9), Seat(314.0, 460.0, false, 1), Seat(713.0, 460.0, false, 10), Seat(758.0, 460.0, false, 11), Seat(798.0, 460.0, false, 12), Seat(848.0, 460.0, false, 13), Seat(888.0, 460.0, false, 14), Seat(938.0, 460.0, false, 15), Seat(978.0, 460.0, false, 16), Seat(1028.0, 460.0, false, 17), Seat(1068.0, 460.0, false, 18), Seat(1118.0, 460.0, false, 19), Seat(353.0, 460.0, false, 2), Seat(1158.0, 460.0, false, 20), Seat(1208.0, 460.0, false, 21), Seat(1248.0, 460.0, false, 22), Seat(1298.0, 460.0, false, 23), Seat(1340.0, 460.0, false, 24), Seat(403.0, 460.0, false, 3), Seat(442.0, 460.0, false, 4), Seat(493.0, 460.0, false, 5), Seat(533.0, 460.0, false, 6), Seat(583.0, 460.0, false, 7), Seat(623.0, 460.0, false, 8), Seat(673.0, 460.0, false, 9), 

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
                    // seat.isSelected = !seat.isSelected;
                    _showSeatDetails(context, seat);

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
  final List<Price> availablePrices = [
    Price('Regular', 10.0),
    Price('VIP', 20.0),
    Price('Premium', 30.0),
  ];
  // void _showSeatDetails(BuildContext context, Seat seat) {
  //   double screenHeight = MediaQuery.of(context).size.height;
  //   double bottomSheetHeight = screenHeight * 0.3;

  //   showModalBottomSheet(
  //     context: context,
  //     builder: (BuildContext builderContext) {
  //       return SeatDetailsBottomSheet(seat: seat, availablePrices: availablePrices);
  //     },
  //   );
  // }


  void _showSeatDetails(BuildContext context, Seat seat) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builderContext) {
        return Container(
          padding: EdgeInsets.all(16.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Seat Details'),
              SizedBox(height: 10.0),
              Expanded(
                child: ListView.builder(
                  itemCount: availablePrices.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          seat.isSelected = true;
                          seat.priceIndex = index;
                        });
                        Navigator.of(context).pop(); // Close the bottom sheet
                      },
                      child: RadioListTile<int>(
                        title: Text('${availablePrices[index].name} - \$${availablePrices[index].amount}'),
                        value: index,
                        groupValue: seat.priceIndex,
                        onChanged: (value) {
                        setState(() {
                          seat.isSelected = true;
                          seat.priceIndex = value;
                        });
                      },
                      ),
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the bottom sheet
                },
                child: Text('Close'),
              ),
            ],
          ),
        );
      },
    );
  }
}


class SeatDetailsBottomSheet extends StatefulWidget {
  final Seat seat;
  final List<Price> availablePrices;

  SeatDetailsBottomSheet({required this.seat, required this.availablePrices});

  @override
  _SeatDetailsBottomSheetState createState() => _SeatDetailsBottomSheetState();
}

class _SeatDetailsBottomSheetState extends State<SeatDetailsBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Seat Details'),
          SizedBox(height: 10.0),
          Text('X Coordinate: ${widget.seat.xCoordinate}'),
          Text('Y Coordinate: ${widget.seat.yCoordinate}'),
          Text('Is Selected: ${widget.seat.isSelected}'),
          SizedBox(height: 10.0),
          Text('Available Prices:'),
          SizedBox(height: 5.0),
          Expanded(
            child: ListView.builder(
              itemCount: widget.availablePrices.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.seat.isSelected = true;
                      widget.seat.priceIndex = index;
                    });
                    Navigator.of(context).pop(); // Close the bottom sheet
                  },
                  child: RadioListTile<int>(
                    title: Text('${widget.availablePrices[index].name} - \$${widget.availablePrices[index].amount}'),
                    value: index,
                    groupValue: widget.seat.priceIndex,
                    onChanged: (value) {
                      setState(() {
                        widget.seat.isSelected = true;
                        widget.seat.priceIndex = value;
                      });
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the bottom sheet
            },
            child: Text('Close'),
          ),
        ],
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
        color: seat.isSelected ? Colors.blue : Color.fromARGB(255, 208, 236, 110),
      ),
      child: Center(
        child: Text(this.seat.place.toString()),
      ),
    );
  }
}

/// to this
/// 
/// 
/// 
/// 
/// 
