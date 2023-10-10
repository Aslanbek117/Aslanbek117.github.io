import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:the_basics/movie-page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
  final String id;

  Movies({required this.url, required this.title, required this.id});
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Movies> dataList = [
    // Movies(
    //     url: "https://cdn.kino.kz/movies/The_Equalizer_3/p168x242.webp",
    //     title: "Coco & Janbo"),
    // Movies(
    //     url:
    //         "https://cdn.kino.kz/movies/TAYLOR_SWIFT___THE_ERAS_TOUR/p168x242.webp",
    //     title: "Taylow Swift"),
    // Movies(
    //     url:
    //         "https://cdn.kino.kz/movies/TAYLOR_SWIFT___THE_ERAS_TOUR/p168x242.webp",
    //     title: "Taylow Swift"),
  ];

  List<dynamic> posts = [];

  List<Movies> res = [];
  bool isLoading = true;

  Color button3Color = Colors.amber;
  Color button3TextColor = Colors.white;
  Color button4Color = Colors.black;
  Color button4TextColor = Colors.grey;

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse(
        'https://api.kino.kz/sessions/v1/movies/today?city_id=2&date=2023-10-10'));

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON
      setState(() {
        final Map<String, dynamic> data = json.decode(response.body);
        posts = data["result"];
        for (var i in posts) {
          var name = i["name_origin"];
          var smallPoster = i["small_poster"];
          var id = i["id"].toString();
          var m = Movies(title: name, url: smallPoster, id: id);
          res.add(m);
        }
        isLoading = false;
        print(res);
      });
    } else {
      // If the server did not return a 200 OK response,
      // throw an exception.
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.yellow[900],
      appBar: AppBar(
        scrolledUnderElevation: 0.0,

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
                EdgeInsets.only(left: 16.0, right: 16.0, top: 0, bottom: 16),
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
                SizedBox(height: 10.0),
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
          isLoading
              ? Center(child: CircularProgressIndicator())
              : Expanded(
                  child: Container(
                  padding: EdgeInsets.all(8.0),
                  color: Colors.black,
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: (1 / 1.6),
                    crossAxisSpacing: 2.0, // Spacing between columns
                    children: List.generate(res.length, (index) {
                      return GridItem(data: res[index]);
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
        onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MoviePage(movieID: data.id,)),
            ),
        child: Card(
          color: Colors.transparent,
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the start

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
          elevation: 0,
        ));
  }
}
