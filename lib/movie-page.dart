import 'package:flutter/material.dart';
import 'package:the_basics/final-hall-plan.dart';

// void main() => runApp(MyApp());

class MoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MyHomePage()
        // title: 'My Web Page',
        // debugShowCheckedModeBanner: false,
        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        // ),
        // home: MyHomePage(),
        );
  }
}

class MyHomePage extends StatelessWidget {
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
        body: Scaffold(backgroundColor: Colors.black, body: Layout()));
  }
}

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

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
                    "https://cdn.kino.kz/movies/Saw_X/p168x242.webp",
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
                        Text("Saw X",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        // Add some spacing between the title and the subtitle
                        Container(height: 5),
                        // Add a subtitle widget
                        Text("ужасы/триллер/драма",
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

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MovieCard(),
        Expanded(child: SeanceCard()),
      ],
    );
  }
}

class SeanceCard extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            ),
        child: ListView.separated(
          padding: const EdgeInsets.only(top: 12),
          itemCount: entries.length,
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
                              child: Text("14:40",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(color: Colors.white))),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Chaplin Mega Park",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white)),
                            Text("Chaplin Mega Park 1.",
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
                              Text("1300",
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
                              Text("1500",
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
                              Text("1900",
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
