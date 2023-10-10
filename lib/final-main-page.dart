import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Container(
            // color: Colors.grey[900],
            child: Column(
              children: [
                // First Part (20% height)
                Container(
                  padding: EdgeInsets.all(10),

                  // margin: EdgeInsets.only(top:16.0),
                  height: MediaQuery.of(context).size.height * 0.2,
                  color: Colors.grey[900],
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              // Handle left button press
                            },
                            icon: Icon(Icons.arrow_back),
                            color: Colors.white,
                          ),
                          SizedBox(
                              width:
                                  16.0), // Add some space between button and search bar
                          Expanded(
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              textAlign:
                                  TextAlign.center, // Center align the text
                              // Text color
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[800], // Background color
                                hintText: 'Search...',
                                hintStyle: TextStyle(
                                    color: Colors.white
                                        .withOpacity(0.5)), // Hint text color
                                contentPadding: EdgeInsets.symmetric(
                                    vertical:
                                        8.0), // Adjust the height of the search bar
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      16.0), // Add border radius
                                  borderSide: BorderSide.none, // Remove border
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                              width:
                                  8.0), // Add space between search bar and close icon
                          IconButton(
                            onPressed: () {
                              // Handle close icon press (clear search)
                            },
                            icon: Icon(Icons.close),
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                          height:
                              16.0), // Add some space between search bar and button row
                      ButtonRow(),
                    ],
                  ),
                ),
                // Second Part (80% height)
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                            height:
                                16.0), // Add some space between buttons and columns
                        RowWithTwoColumns(
                            imageUrl1:
                                "https://cdn.kino.kz/movies/Coco_Janbo/p168x242.webp",
                            title1: "Coco & Janbo",
                            imageUrl2:
                                "https://cdn.kino.kz/movies/TAYLOR_SWIFT___THE_ERAS_TOUR/p168x242.webp",
                            title2: "TAYLOR SWIFT THE ERAS TOUR"),

                        SizedBox(height: 16.0), // Add some space between rows
                        RowWithTwoColumns(
                            imageUrl1:
                                "https://cdn.kino.kz/movies/Saw_X/p168x242.webp",
                            title1: "Saw X",
                            imageUrl2:
                                "https://cdn.kino.kz/movies/Sound_of_Freedom/p168x242.webp",
                            title2: "Sound of Freedom"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ) // Set background color to black

          ),
    );
  }

  double getImageHeight(BuildContext context) {
    // Calculate image height based on screen width
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth * 0.4; // Adjust the factor as needed
  }
}

class RowWithTwoColumns extends StatelessWidget {
  final String imageUrl1;
  final String title1;
  final String imageUrl2;
  final String title2;

  RowWithTwoColumns({
    required this.imageUrl1,
    required this.title1,
    required this.imageUrl2,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Container(
                height: 242,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0), // Add border radius
                  child: Image.network(
                    this.imageUrl1,
                    fit: BoxFit
                        .cover, // Image resizing option TAYLOR_SWIFT___THE_ERAS_TOUR
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0), // Add padding to the left
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 40.0,
                    child: Text(
                      title1,
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 8.0),
        Expanded(
          child: Column(
            children: [
              Container(
                height: 242, // Adjust the height as needed
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0), // Add border radius
                  child: Image.network(
                    imageUrl2,
                    fit: BoxFit.cover, // Image resizing option
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0), // Add padding to the left
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 40.0,
                    child: Text(
                      title2,
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ButtonRow extends StatefulWidget {
  @override
  _ButtonRowState createState() => _ButtonRowState();
}

class _ButtonRowState extends State<ButtonRow> {
  int selectedButtonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                // Handle button 1 press
                setState(() {
                  selectedButtonIndex = 0;
                });
              },
              style: ElevatedButton.styleFrom(
                primary: selectedButtonIndex == 0
                    ? Colors.orange[900]
                    : Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                  ),
                ),
              ),
              child: Text(
                'Сейчас',
                style: TextStyle(
                    color:
                        selectedButtonIndex == 0 ? Colors.white : Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                // Handle button 2 press
                setState(() {
                  selectedButtonIndex = 1;
                });
              },
              style: ElevatedButton.styleFrom(
                primary: selectedButtonIndex == 1
                    ? Colors.orange[900]
                    : Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                ),
              ),
              child: Text(
                'Скоро в кино',
                style: TextStyle(
                    color:
                        selectedButtonIndex == 1 ? Colors.white : Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
