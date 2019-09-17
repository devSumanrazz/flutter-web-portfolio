import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          body1: TextStyle(
            fontSize: 16.0,
          ),
          title: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 400,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/69839622_2382748491844772_2807665605098864640_n.jpg?_nc_cat=107&_nc_oc=AQngYkzwYwP0kxJBrI0zSRmOskkaU78XcrTlpuX-SGYRom4mYQitp0_nQr34_co_nu8&_nc_ht=scontent.fktm10-1.fna&oh=b160ec137b16f8166fe7fcf6100a2d1b&oe=5DF77B13'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.pink,
                    ),
                    foregroundDecoration: BoxDecoration(
                      color: Colors.black54
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Damodar\nLohani",
                          style: Theme.of(context).textTheme.display2.copyWith(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Colors.pink.shade900,
                          radius: 45,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.white,
                            backgroundImage: NetworkImage(
                                'https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/69839622_2382748491844772_2807665605098864640_n.jpg?_nc_cat=107&_nc_oc=AQngYkzwYwP0kxJBrI0zSRmOskkaU78XcrTlpuX-SGYRom4mYQitp0_nQr34_co_nu8&_nc_ht=scontent.fktm10-1.fna&oh=b160ec137b16f8166fe7fcf6100a2d1b&oe=5DF77B13'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "About Me",
                    style: Theme.of(context).textTheme.title,
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    "I am a programmer because I love being one. I love finding and solving problems, I love building things out of code. I love being able to write code that are meaningful and solve problems of people.",
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 40.0),
                  Text(
                    "Skills",
                    style: Theme.of(context).textTheme.title,
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                      "Over 8 years of development experience using these platforms, frameworks and languages"),
                  //logos of flutter, wordpress, reactjs, reactnative, js, html, css, laravel
                  const SizedBox(height: 60.0),
                ],
              ),
            ),
            Container(
              color: Colors.grey[300],
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "I Believe",
                            style: Theme.of(context).textTheme.display1,
                          ),
                          Text(
                            "110%",
                            style: Theme.of(context).textTheme.title,
                          ),
                          Text(
                            "I believe in always going the extra mile. I give more each time, which helps me grow with the projects I take.",
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "Progress",
                            style: Theme.of(context).textTheme.title,
                          ),
                          Text(
                            "Continuous progress is what makes apps better time. With time, I evolve with my apps and they evolve with me",
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "Minimalish",
                            style: Theme.of(context).textTheme.title,
                          ),
                          Text(
                            "I reflect minimalish both in my life and in my designs. I believe, less is more and any app should be content more, design less.",
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      
                      width: double.infinity,
                      child: Image.network(
                          'https://dlohani.com.np/wp-content/uploads/2018/05/principles.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),

            Text("Follow Me on"),
            Row(
              children: <Widget>[
                // Github Facebook Instagram Twitter Linkedin Youtube Email
                FlatButton(
                  child: Text("Github"),
                  onPressed: (){
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
