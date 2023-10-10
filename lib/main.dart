import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:the_basics/movie-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class Movies {
  final String url;
  final String title;

  Movies({required this.url, required this.title});
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Movies> dataList = [
    Movies(
        url: "https://cdn.kino.kz/movies/The_Equalizer_3/p168x242.webp",
        title: "Coco & Janbo"),
    Movies(
        url:
            "https://cdn.kino.kz/movies/TAYLOR_SWIFT___THE_ERAS_TOUR/p168x242.webp",
        title: "Taylow Swift"),
    Movies(
        url:
            "https://cdn.kino.kz/movies/TAYLOR_SWIFT___THE_ERAS_TOUR/p168x242.webp",
        title: "Taylow Swift"),
  ];

  Color button3Color = Colors.amber;
  Color button3TextColor = Colors.white;
  Color button4Color = Colors.black;
  Color button4TextColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: Icon(
          Icons.arrow_back, color: Colors.white, // Set the color of the icon
        ), // Left icon
        title: Text('Алматы',
            style: TextStyle(color: Colors.white)), // Centered text
        actions: [
          // You can add any additional actions here
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.close),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey[900],
            padding:
                EdgeInsets.only(left: 16.0, right: 16.0, top: 4, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Icon(r
                //       Icons.arrow_back,
                //       color: Colors.white,
                //     ),
                //     SizedBox(width: 16.0),
                //     Expanded(
                //       child: Container(
                //         padding: EdgeInsets.symmetric(
                //             horizontal: 16.0, vertical: 8.0),
                //         height: 40.0,
                //         decoration: BoxDecoration(
                //           color: Colors.black,
                //           borderRadius: BorderRadius.circular(16.0),
                //         ),
                //         child: TextField(
                //           style: TextStyle(color: Colors.white),
                //           decoration: InputDecoration(
                //             border: InputBorder.none,
                //             hintText: 'Search',
                //             hintStyle: TextStyle(color: Colors.white),
                //           ),
                //         ),
                //       ),
                //     ),
                //     SizedBox(width: 16.0),
                //     Icon(
                //       Icons.close,
                //       color: Colors.white,
                //     ),
                //   ],
                // ),
                // SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Handle button 1 press
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.list,
                            color: Colors.white,
                          ),
                          SizedBox(width: 8.0),
                          Text('Кинотеатры'),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle button 3 press
                          setState(() {
                            button3Color = Colors.amber;
                            button3TextColor = Colors.white;
                            button4Color = Colors.black;
                            button4TextColor = Colors.grey;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                topRight: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                              ),
                            ),
                          ),
                        ),
                        child: Text('Сейчас', style: TextStyle(fontSize: 16)),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle button 4 press
                          setState(() {
                            button4Color = Colors.amber;
                            button4TextColor = Colors.white;
                            button3Color = Colors.black;
                            button3TextColor = Colors.grey;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.grey),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0.0),
                                bottomLeft: Radius.circular(0.0),
                                topRight: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                        child: Text('Скоро в кино'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.black,
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 8.0,
              childAspectRatio: (1 / 1.6),
              crossAxisSpacing: 2.0, // Spacing between columns
              children: List.generate(dataList.length, (index) {
                return GridItem(data: dataList[index]);
              }),
            ),
          )),
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String data;

  MyCard({required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Your card styling
      child: ListTile(
        title: Text(data),
        // Other widgets or information for each card
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final Movies data;

  GridItem({required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () =>  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MoviePage()),
            ),
        child: Card(
      color: Colors.transparent,
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start

        children: [
          Expanded(
            flex: 9,
            child: Image.network(
              data.url,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Expanded(
              flex: 1,
              child: Text(data.title,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold))),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
    ));
  }
}
