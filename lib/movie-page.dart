import 'package:flutter/material.dart';
import 'package:the_basics/final-hall-plan.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// void main() => runApp(MyApp());

class MoviePage extends StatelessWidget {
  final String movieID;

  const MoviePage({super.key, required this.movieID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MyHomePage(movieID: movieID));
  }
}

class MyHomePage extends StatelessWidget {
  final String movieID;

  const MyHomePage({super.key, required this.movieID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          scrolledUnderElevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back), color: Colors.white,
            onPressed: () {
              try {
                Navigator.pop(context);
              } catch (e) {
                print('Error navigating back: $e');
              }
            }, // Set the color of the icon
          ), // Left icon
          title: Text('Seances',
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
        body: Scaffold(
            backgroundColor: Colors.black, body: Layout(movieID: movieID)));
  }
}

class MovieCard extends StatelessWidget {
  final String title;
  final String genres;
  final String url;
  const MovieCard(
      {super.key,
      required this.title,
      required this.genres,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.grey[900],
        margin: EdgeInsets.zero,
        // clipBehavior: Clip.antiAlias,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),

        // Define the shape of the card
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(4),
        // ),
        // Define how the card's content should be clipped
        // Define the child widget of the card
        child: Padding(
          padding:
              EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0, top: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Add padding around the row widget
              // padding: const EdgeInsets.all(15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Add an image widget to display an image
                  Image.network(
                    url,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  // Add some spacing between the image and the text
                  Container(width: 20),
                  // Add an expanded widget to take up the remaining horizontal space
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(title,
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        // Add some spacing between the title and the subtitle
                        Container(height: 5),
                        // Add a subtitle widget
                        Text(genres,
                            style: TextStyle(
                                color: Colors.grey[400], fontSize: 12)),
                        // Add some spacing between the subtitle and the text
                        Container(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            // Handle button 2 press
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topLeft: Radius.circular(8.0),
                                bottomLeft: Radius.circular(8.0),
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                size: 20,
                                Icons.info,
                                color: Colors.white,
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                'Подробнее',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.0),
                              ),
                            ],
                          ),
                        ),
                        // Add a text widget to display some text
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(children: <Widget>[
                Expanded(
                    child: Container(
                  height: 55,
                  width: 90,
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SeanceDate(
                          date: "08 октября", day: "Сегодня", selected: true),
                      SizedBox(width: 16.0),
                      SeanceDate(
                          date: "09 октября", day: "Завтра", selected: false),
                      SizedBox(width: 16.0),
                      SeanceDate(
                          date: "10 октября", day: "Среда", selected: false),
                      SizedBox(width: 16.0),
                      SeanceDate(
                          date: "10 октября", day: "Четверг", selected: false),
                      SizedBox(width: 16.0),
                      SeanceDate(
                          date: "10 октября", day: "Пятница", selected: false),
                    ],
                  ),
                ))
              ]),
              SizedBox(height: 16.0),
              Row(children: [
                Expanded(
                    child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
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
                  child: Text('По времени', style: TextStyle(fontSize: 12)),
                )),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      foregroundColor: MaterialStateProperty.all(Colors.grey),
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
                    child:
                        Text('По кинотеатрам', style: TextStyle(fontSize: 12)),
                  ),
                ),
              ])
            ],
          ),
        ));
  }
}

class SeanceDate extends StatelessWidget {
  final String date;
  final String day;
  final bool selected;
  const SeanceDate(
      {super.key,
      required this.date,
      required this.day,
      required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,

        // color: Colors.amber,
        // color: selected ? Colors.amber : Colors.transparent,
        decoration: BoxDecoration(
          color: selected ? Colors.amber : Colors.transparent,
          border:
              Border.all(color: selected ? Colors.transparent : Colors.grey),
          borderRadius: BorderRadius.all(
              Radius.circular(16.0) //                 <--- border radius here
              ),
        ),
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Center(
                child: Text(date,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        color: selected ? Colors.black : Colors.grey)),
              ),
              Center(
                child: Text(day,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ));
  }
}

class Layout extends StatefulWidget {
  final String movieID;

  const Layout({super.key, required this.movieID});

  @override
  LayoutState createState() => LayoutState(movieID: movieID);
}

class MovieInfo {
  String title;
  String genres;
  String url;

  MovieInfo({required this.title, required this.genres, required this.url});
}

class LayoutState extends State<Layout> {
  final String movieID;

  dynamic md;
  MovieInfo res = MovieInfo(title: "", genres: "", url: "");
  bool isLoading = true;

  LayoutState({required this.movieID});
  Future<void> fetchData() async {
    final response = await http.get(
        Uri.parse('https://api.kino.kz/catalog/v1/movie?movie_id=${movieID}'));

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON
      setState(() {
        final Map<String, dynamic> data = json.decode(response.body);
        md = data["result"];
        var title = md["name_origin"];
        var genres = "";
        var url = md["posters"]["p168x242"];
        for (var i in md["genres"]) {
          genres += i["title_eng"] + "/";
        }
        genres = genres.substring(0, genres.length - 1);
        res.title = title;
        res.url = url;
        res.genres = genres;
        isLoading = false;
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
    return Column(
      children: [
        isLoading
            ? CircularProgressIndicator()
            : MovieCard(title: res.title, genres: res.genres, url: res.url),
        // MovieCard(title: res.title, genres: res.genres),
        Expanded(child: Schedule(movieID: movieID)),
      ],
    );
  }
}

class Cinema {
  final String title;
  final String address;

  Cinema({required this.title, required this.address});
}

class SeanceInfo {
  final int adult;
  final int child;
  final int student;
  final String hour;
  final String minutes;

  SeanceInfo(
      {required this.adult,
      required this.child,
      required this.student,
      required this.hour,
      required this.minutes});
}

class ScheduleInfo {
  final Cinema cinema;
  final SeanceInfo seances;

  ScheduleInfo({required this.cinema, required this.seances});
}

class Schedule extends StatefulWidget {
  final String movieID;

  const Schedule({super.key, required this.movieID});

  @override
  ScheduleState createState() => ScheduleState(movieID: movieID);
}

class ScheduleState extends State<Schedule> {
  final String movieID;
  bool isLoading = true;

  List<ScheduleInfo> res = [];
  Future<void> fetchData() async {
    final response = await http.get(Uri.parse(
        'https://api.kino.kz/sessions/v1/movie/sessions?movie_id=${movieID}&date=2023-10-10&city_id=2'));

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON
      setState(() {
        final Map<String, dynamic> data = json.decode(utf8.decode(response.bodyBytes));
        // final Map<String, dynamic> data = json.decode(response.body);

        for (var it in data["result"]["sessions"]) {
          var cinema = Cinema(
              address: it["cinema"]["address"], title: it["cinema"]["name"]);
          var seance = SeanceInfo(
              adult: it["session"]["adult"],
              child: it["session"]["child"],
              student: it["session"]["student"],
              hour: it["session"]["hour"],
              minutes: it["session"]["minutes"]);
          var info = ScheduleInfo(cinema: cinema, seances: seance);
          res.add(info);
        }
        print(res.length);
        // var item = ScheduleInfo(cinema: "");
        // for (var it in data["result"]["available_dates"]) {
        //   item.availableDates+=it.toString();
        // }
        // print(item.availableDates);
        isLoading = false;
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

  final List<String> entries = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'J'
  ];
  final List<int> colorCodes = <int>[
    600,
    500,
    100,
    200,
    300,
    400,
    500,
    600,
    300,
    200
  ];

  ScheduleState({required this.movieID});

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? CircularProgressIndicator()
        : GestureDetector(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                ),
            child: ListView.separated(
              padding: const EdgeInsets.only(top: 12),
              itemCount: res.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    // height: 50,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // margin: EdgeInsets.all(8),
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Center(
                                  child: Text(res[index].seances.hour +  ":" + res[index].seances.minutes,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(color: Colors.white))),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(res[index].cinema.title,
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white)),
                                Text(res[index].cinema.address.substring(0,10),
                                    softWrap: true,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey[400]))
                              ],
                            )
                          ],
                        ),
                        Divider(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  // margin: EdgeInsets.all(8),
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: Center(
                                      child: Text("Язык: ru",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Colors.grey[500],
                                              fontSize: 10))),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                children: [
                                  Center(
                                      child: Text("студ.",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[400]))),
                                  Text(res[index].seances.student.toString(),
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white))
                                ],
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                children: [
                                  Center(
                                      child: Text("детский",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[400]))),
                                  Text(res[index].seances.child.toString(),
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white))
                                ],
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                children: [
                                  Center(
                                      child: Text("взрос.",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[400]))),
                                  Text(res[index].seances.adult.toString(),
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white))
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ));
              },
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(height: 20),
            ));
  }
}
