
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





