import 'package:flutter_web/material.dart';

//import 'package:UITemplate/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UDACITY',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        fontFamily: 'Montserrat',
      ),
      home: MyHomePage(title: 'UDACITY'),
    );
  }
}

Card getStructuredGridCell(name, image,post) {
  return  Card(
      elevation: 1.5,
      child:  Stack(
        children: <Widget>[
          Container(
            height: 140,
            width: double.infinity,
            child: Image.network(image,
            fit: BoxFit.fill,),
          ),

          Positioned(
            top: 80,
            left: 10,
            child: Column(
              children: <Widget>[
                MaterialButton(
                  child: Container(
                    height: 30,
                    width: 60,
                    padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      border: Border.all(
                          color: Colors.pinkAccent, width: 2.0),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: Text(
                        'NEW',
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Open Sans-Light',
                            color: Colors.white),
                      ),
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'SCHOOL OF',
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Open Sans-Light',
                      color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Open Sans-Light',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
          Positioned(
            top: 180,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  post,
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Open Sans-Light',
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
          )
        ],
      ));
}


class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  void _nextPage(int delta) {}
  final List<Map> items = [
    {
      "image":
          "http://images.ctfassets.net/2y9b3o528xhq/4swf2qhcelEUWzKHaKne6C/d890de3220ea332fb42e9b8e5f7848fd/real-world-projects.png",
      "title": "Real-world projects from industry experts",
      "description":
          "With real world projects and immersive content built in partnership with top tier companies, you’ll master the tech skills companies want.",
      "avatar":
          "http://images.ctfassets.net/2y9b3o528xhq/2hOt81JN06lrDcxRKPUXOT/f16a6fbd6904a05df1b4a3e7ff6f8218/experts.svg"
    },
    {
      "image":
          "http://images.ctfassets.net/2y9b3o528xhq/5sXS0Rr3MEr66P5elfYX7P/3728cc2d85c0979cb29d5cb291369038/mentor.jpg",
      "title": "1-on-1 technical mentor",
      "description":
          "Get a knowledgeable mentor who guides your learning and is focused on answering your questions, motivating you and keeping you on track.",
      "avatar":
          "http://images.ctfassets.net/2y9b3o528xhq/7z9cBzRbfbCJV5r3n4z1gy/6c4494fce7582ba3b72e3209753ec626/coding-icon.svg"
    },
    {
      "image":
          "http://images.ctfassets.net/2y9b3o528xhq/M3qhliyZEq5XBsXtyH7EC/96b2a1e038943c3a8a1ce72a114ce472/career-coach.png",
      "title": "Personal career coach and career services",
      "description":
          "You’ll have access to career coaching sessions, interview prep advice, and resume and online professional profile reviews to help you grow in your career.",
      "avatar":
          "http://images.ctfassets.net/2y9b3o528xhq/753EFF3UhcMMUythiZIOoc/c7daef06c3876eddf8ecaa01026f1d46/career.svg"
    },
    {
      "image":
          "http://images.ctfassets.net/2y9b3o528xhq/5p7HANmA1jsw8P9EVOeVso/65812b9faab5802b2e43998804546444/self-paced.png",
      "title": "Flexible learning program",
      "description":
          "Get a custom learning plan tailored to fit your busy life. Along with easy monthly payments you can learn at your own pace and reach your personal goals.",
      "avatar":
          "http://images.ctfassets.net/2y9b3o528xhq/573uHj1EeYECLyuovPLJO4/a914f0f72469788f909a5c5df9db775f/learningsched.svg"
    }
  ];

  final SUPPORT = ['Contact Us', 'Help and FAQ', 'Service Status', 'Tech Requirements'];
  final COMPANY = ['About', 'Blog', 'In the News', 'Jobs','Udacity Intersect','Udacity Store'];
  final RESOURCES = ['Catalog', 'Career Resource Center', 'Career Services', 'Hire Talent','Get Hired','Student Success',
  'Udacity Connect','Udacity Talks','Scholarships','What is AI?','','','Programs','Veterans','Georgia Tech'];
  final ONLY_AT_UDACITY = ['Artificial Intelligence', 'Deep Learning', 'Digital Marketing', 'Flying Car and Autonomous Flight Engineer','Intro to Self-Driving Cars','Machine Learning Engineer','Robotics Software Engineer','Self-Driving Car Engineer',
  ' ', '' , 'School of Artificial Intelligence', 'School of Autonomous Systems','School of Business', 'School of Data Science', 'School of Programming', 'School of Cloud Computing'];
  final FEATURED_PROGRAMS = ['Java Developer', 'AI Product Manager', 'Sensor Fusion Engineer', 'Data Visualization','Cloud Developer','Cloud Dev Ops Engineer',
  'C++','Data Structures and Algorithms','Marketing Analytics','Data Engineer','Android Basics','Android Developer','iOS Developer','Business Analytics',
  'Data Analyst','Front End Web Developer','Full Stack Web Developer','Intro to Programming','Machine Learning Engineer','Predictive Analytics for Business','Programming for Data Science','React',''];


  @override
  Widget build(BuildContext context) {
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0), // here the desired height
        child: AppBar(
          title: Row(
            children: [
              Image.asset(
                'icon/nav-logo.png',
                fit: BoxFit.contain,
                height: 40,
              ),
              Container(padding: const EdgeInsets.all(10.0), child: Text(title))
            ],
          ),
          actions: <Widget>[
            MaterialButton(
              child: Text('Programs',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black45,
                      fontFamily: 'Open Sans',
                      letterSpacing: 2.0)),
              onPressed: () {},
              disabledElevation: 8,
              disabledColor: Colors.red[500],
              disabledTextColor: Colors.white,
              textTheme: ButtonTextTheme.primary,
            ),
            MaterialButton(
              child: Text('Coures',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black45,
                      fontFamily: 'Open Sans',
                      letterSpacing: 2.0)),
              onPressed: () {},
              disabledElevation: 8,
              disabledColor: Colors.red[500],
              disabledTextColor: Colors.white,
              textTheme: ButtonTextTheme.primary,
            ),
            MaterialButton(
              child: Text('For Enterprise',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black45,
                      fontFamily: 'Open Sans',
                      letterSpacing: 2.0)),
              onPressed: () {},
              disabledElevation: 8,
              disabledColor: Colors.red[500],
              disabledTextColor: Colors.white,
              textTheme: ButtonTextTheme.primary,
            ),
            Container(
              height: 30.0,
              width: 1.0,
              color: Colors.cyan,
              margin: const EdgeInsets.only(
                  left: 5.0, right: 5.0, top: 15.0, bottom: 15.0),
            ),
            MaterialButton(
              child: Text('Sign In',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black45,
                      fontFamily: 'Open Sans',
                      letterSpacing: 2.0)),
              onPressed: () {},
              disabledElevation: 8,
              disabledColor: Colors.red[500],
              disabledTextColor: Colors.white,
              textTheme: ButtonTextTheme.primary,
            ),
            MaterialButton(
              child: Container(
                height: 30,
                alignment: Alignment(0.0, 0.0),
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  border: Border.all(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: Text(
                    'GET STARTED',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Open Sans',
                        letterSpacing: 3.0,
                        color: Colors.white),
                  ),
                ),
              ),
              onPressed: () {},
            ),
            FlatButton(
                padding: const EdgeInsets.fromLTRB(10, 20, 100, 0),
                onPressed: () {
                  _nextPage(1);
                },
                child: Text('',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black45,
                        fontFamily: 'Open Sans',
                        letterSpacing: 2.0)))
          ],
        ),
      ),
      body: Center(
          child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(
              height: 500.0,
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'http://images.ctfassets.net/2y9b3o528xhq/77x0V4Vc9WbNNRJUIi8aBe/66a2743ec8fc731b6a00f0adf8e7951a/hero.jpg'),
                    fit: BoxFit.cover)),
          ), // header Container

          Card(
            elevation: 2.0,
            margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
            child: Container(
                constraints: BoxConstraints.expand(
                  height: 150.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                        flex: 2,
                        child: Image.network(
                          'http://images.ctfassets.net/2y9b3o528xhq/48Iq0zqsEOI6Zgy8RnsCvY/e5e40079f1e1a168d0de902bed34c1c3/syllabus.jpg',
                          fit: BoxFit.cover,
                        )),
                    Expanded(
                      flex: 7,
                      child: Container(
                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            MaterialButton(
                              child: Container(
                                height: 30,
                                width: 50,
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                decoration: BoxDecoration(
                                  color: Colors.purple,
                                  border: Border.all(
                                      color: Colors.white, width: 2.0),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Center(
                                  child: Text(
                                    'NEW',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Open Sans',
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'Introducing the Java Developer Nanodegree Program',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontFamily: 'Open Sans-Light',
                                    color: Colors.black87),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              child: Text(
                                'Pre-order today to reserve your seat in our inaugural class!',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Open Sans',
                                    color: Colors.black87),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 45,
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            OutlineButton(
                              child: Text(
                                'LEARN MORE',
                                semanticsLabel: 'LEARN MORE',
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontFamily: 'Open Sans-Light',
                                    fontWeight: FontWeight.w200),
                              ),
                              onPressed: () {
                                // Perform some action
                              },
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ), // card container start coursed

          Container(
            margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
            constraints: BoxConstraints.expand(
              height: 250.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Discover your perfect program in our schools',
                  style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'Open Sans-Light',
                      color: Colors.black87),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 150.0,
                        width: 200.0,
                        color: Colors.transparent,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          elevation: 4,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 50,
                                width: 50,
                                margin: EdgeInsets.only(bottom: 10),
                                child: Image.asset('icon/data_sci_icon.png'),
                              ),
                              Text(
                                'SCHOOL OF',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Open Sans-Light',
                                    color: Colors.blueAccent),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  'Data Science',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black54),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 150.0,
                        width: 200.0,
                        color: Colors.transparent,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          elevation: 4,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 50,
                                width: 50,
                                margin: EdgeInsets.only(bottom: 10),
                                child: Image.asset('icon/ai_icon.png'),
                              ),
                              Text(
                                'SCHOOL OF',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Open Sans-Light',
                                    color: Colors.blueAccent),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  'Artificial Intelligence',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black54),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 150.0,
                        width: 200.0,
                        color: Colors.transparent,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          elevation: 4,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 50,
                                width: 50,
                                margin: EdgeInsets.only(bottom: 10),
                                child: Image.asset('icon/dev_icon.png'),
                              ),
                              Text(
                                'SCHOOL OF',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Open Sans-Light',
                                    color: Colors.blueAccent),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  'Programming',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black54),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 150.0,
                        width: 200.0,
                        color: Colors.transparent,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          elevation: 4,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 50,
                                width: 50,
                                margin: EdgeInsets.only(bottom: 10),
                                child: Image.asset('icon/auto_sys_icon.png'),
                              ),
                              Text(
                                'SCHOOL OF',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Open Sans-Light',
                                    color: Colors.blueAccent),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  'Autonomous Systems',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black54),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 150.0,
                        width: 200.0,
                        color: Colors.transparent,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          elevation: 4,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 50,
                                width: 50,
                                margin: EdgeInsets.only(bottom: 10),
                                child: Image.network(
                                    'https://www.udacity.com/assets/iridium/images/homepage/shared/icons/school-cards/dev_icon.png'),
                              ),
                              Text(
                                'SCHOOL OF',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Open Sans-Light',
                                    color: Colors.blueAccent),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  'Cloud Computing',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Open Sans',
                                      color: Colors.black54),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ), //Programing Details

          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            constraints: BoxConstraints.expand(
              height: 200.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Industry leading programs built and recognized by top companies worldwide',
                  style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'Open Sans-Light',
                      color: Colors.black87),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          width: 150,
                          height: 100,
                          child: Image.asset('company/google.png',
                              fit: BoxFit.contain),
                          margin: EdgeInsets.only(right: 10)),
                      Container(
                          width: 150,
                          height: 100,
                          child: Image.asset('company/at.png',
                              fit: BoxFit.contain),
                          margin: EdgeInsets.only(right: 10)),
                      Container(
                          width: 150,
                          height: 100,
                          child: Image.asset('company/ibm.png',
                              fit: BoxFit.contain),
                          margin: EdgeInsets.only(right: 10)),
                      Container(
                          width: 150,
                          height: 100,
                          child:
                              Image.asset('company/aws.png', fit: BoxFit.cover),
                          margin: EdgeInsets.only(right: 10)),
                      Container(
                          width: 150,
                          height: 100,
                          child: Image.asset('company/lyf.png',
                              fit: BoxFit.contain),
                          margin: EdgeInsets.only(right: 10)),
                      Container(
                          width: 150,
                          height: 100,
                          child: Image.asset('company/invidia.png',
                              fit: BoxFit.contain),
                          margin: EdgeInsets.only(right: 10)),
                    ],
                  ),
                )
              ],
            ),
          ), // company details container

          Container(
            margin: EdgeInsets.symmetric(horizontal: 100, vertical: 10.0),
            constraints: BoxConstraints.expand(
              height: 600.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'All Our Nanodegree Programs Include:',
                  style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'Open Sans-Light',
                      color: Colors.black87),
                ),
                SizedBox(height: 30.0),
                Expanded(
                    child: ListView.builder(
                  padding: EdgeInsets.all(16.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return
                      Stack(
                      children: <Widget>[
                        Container(
                          width: 550,
                          margin: EdgeInsets.only(right: 30.0, bottom: 10.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                      height: 200,
                                      width: 200,
                                      child: Image.network(
                                        items[index]["image"],
                                        fit: BoxFit.cover,
                                      )),
                                  SizedBox(width: 50.0),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(height: 20.0),
                                        Text(
                                          items[index]["title"],
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Open Sans-Light',
                                          ),
                                        ),
                                        SizedBox(height: 20.0),
                                        Text(
                                          items[index]['description'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontFamily: 'Open Sans-Light',
                                              fontSize: 12.0,
                                              color: Colors.black38),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 50.0),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 30,
                          left: 170,
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: Image.network(items[index]["avatar"]),
                            foregroundColor: Colors.lightBlue,
                            backgroundColor: Colors.white,
                          ),
                        )
                      ],
                    );
                  },
                )),
                Expanded(
                    child: ListView.builder(
                  padding: EdgeInsets.all(16.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: <Widget>[
                        Container(
                          width: 550,
                          margin: EdgeInsets.only(right: 30.0, bottom: 10.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                      height: 200,
                                      width: 200,
                                      child: Image.network(
                                        items[index + 2]["image"],
                                        fit: BoxFit.cover,
                                      )),
                                  SizedBox(width: 50.0),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(height: 20.0),
                                        Text(
                                          items[index + 2]["title"],
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Open Sans-Light',
                                          ),
                                        ),
                                        SizedBox(height: 20.0),
                                        Text(
                                          items[index + 2]['description'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontFamily: 'Open Sans-Light',
                                              fontSize: 12.0,
                                              color: Colors.black38),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 50.0),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 30,
                          left: 170,
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: Image.network(items[index + 2]["avatar"]),
                            foregroundColor: Colors.lightBlue,
                            backgroundColor: Colors.white,
                          ),
                        )
                      ],
                    );
                  },
                ))
              ],
            ),
          ), //All Our Nanodegree Programs Include:

          Container(
            constraints: BoxConstraints.expand(
              width: double.infinity,
              height: 300.0,
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://www.udacity.com/assets/iridium/images/new-home/experiments/home-b/bg-ready-to-begin.svg'),
                    fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Ready to begin?',
                  style: TextStyle(
                      fontSize: 36,
                      fontFamily: 'Open Sans-Light',
                      color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  'Enroll in a Nanodegree program and build your best future today.',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Open Sans-Light',
                      color: Colors.white),
                ),
              SizedBox(height: 30),
                MaterialButton(
                  child: Container(
                    height: 45,
                    width: 250,
                    alignment: Alignment(0.0, 0.0),
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: Text(
                        'SEE OUR PROGRAM',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Open Sans',
                            letterSpacing: 3.0,
                            color: Colors.blueAccent),
                      ),
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ), // Ready for Being ?
          SizedBox(height: 50.0),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
            child: Container(
                constraints: BoxConstraints.expand(
                  height: 550.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'Check out our \nnewest and most \npopular \nNanodegree \nprograms',
                                style: TextStyle(
                                    fontSize: 26,
                                    fontFamily: 'Open Sans-Light',
                                    color: Colors.black87),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              child: Text(
                                'With our growing catalog of over \n30 Nanodegree programs from \nbeginner to advanced, you\'re \nsure to find one that fits your \ncareer goals',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Open Sans-Light',
                                    color: Colors.black87),
                              ),
                            ),
                            SizedBox(height: 30),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'SEE ALL PROGRAMS ',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Open Sans-Light',
                                    color: Colors.blue),
                              ),
                            ),

                          ],
                        )),
                    Expanded(
                      flex: 7,
                      child:
                      GridView.count(
                        primary: true,
                        padding: const EdgeInsets.all(1.0),
                        crossAxisCount: 3,
                        childAspectRatio: MediaQuery.of(context).size.width / 1200,
                        children: <Widget>[
                          getStructuredGridCell("Programming", "http://images.ctfassets.net/2y9b3o528xhq/34a43cB3loMQ1pfaqlA4Yp/720fe7be7df3020f8408b88eea22e964/hero-bg-1180x624.jpg","Java Developer"),
                          getStructuredGridCell("Artificial Intelligence", "http://images.ctfassets.net/2y9b3o528xhq/2OvOroBjUKUxDP1TBANhDt/388c1cd10c425df6e57e43423047f844/nd088_-_hero.jpg","AI Product Manager"),
                          getStructuredGridCell("Cloud Computing", "http://images.ctfassets.net/2y9b3o528xhq/WGazeTyv39xQJwzv5Ef3e/90c454d3f4e64b16e0f5e3b0c3640ee3/hero-bg-1180x624.jpg","Cloud DevOps Engineer"),
                          getStructuredGridCell("Cloud Computing", "http://images.ctfassets.net/2y9b3o528xhq/WGazeTyv39xQJwzv5Ef3e/90c454d3f4e64b16e0f5e3b0c3640ee3/hero-bg-1180x624.jpg","Cloud Developer"),
                          getStructuredGridCell("Autonomous Systems", "http://images.ctfassets.net/2y9b3o528xhq/40uD1jnX57TxRUqtsen05J/03e7ce16f7c1fde9accee3066d8978be/self-driving.jpg","Self Driving Car"),
                          getStructuredGridCell("Artificial Intelligence", "http://images.ctfassets.net/2y9b3o528xhq/4lWzopLL8ZbCXFl6iyF1zG/2f19c42d7b1d487af0b6be4c339b915b/hero-mobile.jpg","Machine Learning Engineer"),
                        ],
                      ),
                    ),
                  ],
                )),
          ), // Check our news
          SizedBox(height: 10.0),

          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            constraints: BoxConstraints.expand(
              height: 300.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Strength in numbers',
                  style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'Open Sans-Light',
                      color: Colors.black87),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          width: 350,
                          height: 200,
                          child: Column(
                            children: <Widget>[
                              Image.network('http://images.ctfassets.net/2y9b3o528xhq/1I5Q4ulQdaV2Cd2RxJG1NF/9012118676e481a058bbbc1951c953c1/degree-hat.svg'),
                              SizedBox(height: 20),
                              Text('80,000+', style: TextStyle(fontSize: 22, fontFamily: 'Open Sans-Light', color: Colors.black87)),
                              SizedBox(height: 10),
                              Text('Udacity graduates and\n\t  counting', style: TextStyle(fontSize: 18, fontFamily: 'Open Sans', fontWeight: FontWeight.bold, color: Colors.black),)
                            ],
                          ),
                          margin: EdgeInsets.only(right: 10)),
                      Container(
                          width: 350,
                          height: 200,
                          child: Column(
                            children: <Widget>[
                              Image.network('http://images.ctfassets.net/2y9b3o528xhq/58pro2AvCh9F0M3GQQ2cGB/683daf82b944e4c342f3e4f3eca22e3b/star_copy.svg'),
                              SizedBox(height: 20),
                              Text('200+', style: TextStyle(fontSize: 22, fontFamily: 'Open Sans-Light', color: Colors.black87)),
                              SizedBox(height: 10),
                              Text('Industry experts partnering\n\t to build our content', style: TextStyle(fontSize: 18, fontFamily: 'Open Sans', fontWeight: FontWeight.bold, color: Colors.black),)
                            ],
                          ),
                          margin: EdgeInsets.only(right: 10)),
                      Container(
                          width: 350,
                          height: 200,
                          child: Column(
                            children: <Widget>[
                              Image.network('http://images.ctfassets.net/2y9b3o528xhq/8E5HTugHBjVRYb0NxgSYB/54acb70c22932686ba6b2509b401c91d/star_copy_2.svg'),
                              SizedBox(height: 20),
                              Text('100+', style: TextStyle(fontSize: 22, fontFamily: 'Open Sans-Light', color: Colors.black87)),
                              SizedBox(height: 10),
                              Text('Enterprise customers\n\t world-wide', style: TextStyle(fontSize: 18, fontFamily: 'Open Sans', fontWeight: FontWeight.bold, color: Colors.black),)
                            ],
                          ),
                          margin: EdgeInsets.only(right: 10))

                    ],
                  ),
                )
              ],
            ),
          ), // Strength number
          SizedBox(height: 50.0),
          Card(
            elevation: 0.0,
            margin: EdgeInsets.symmetric(horizontal: 100.0, vertical: 20.0),
            child: Container(
                constraints: BoxConstraints.expand(
                  height: 150.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                        flex: 2,
                        child: Image.network(
                          'http://images.ctfassets.net/2y9b3o528xhq/1ZS3OPXIw5zDis6UAxkk2s/178a00db8c5a5eeec66eca016e1e3a97/smiling_man_wearing_headset.jpg',
                          fit: BoxFit.cover,
                        )),
                    Expanded(
                      flex: 6,
                      child: Container(
                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 30,top: 50),
                              child: Text(
                                'Make a difference by becoming a Udacity mentor',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontFamily: 'Open Sans-Light',
                                    color: Colors.black87),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 30, top: 10),
                              child: Text(
                                'Help students master the tech skills they need to advance their career',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Open Sans-Light',
                                    color: Colors.black87),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        height: 45,
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            OutlineButton(
                              child: Text(
                                'LEARN MORE',
                                semanticsLabel: 'LEARN MORE',
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontFamily: 'Open Sans-Light',
                                    fontWeight: FontWeight.w200),
                              ),
                              onPressed: () {
                                // Perform some action
                              },
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ), // Learn more
          SizedBox(height: 20.0),
          Container(
            constraints: BoxConstraints.expand(
              width: double.infinity,
              height: 300.0,
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://www.udacity.com/assets/iridium/images/new-home/experiments/home-b/img-footer.jpg'),
                    fit: BoxFit.fitWidth)),
            child: Container(
              margin: EdgeInsets.only(left: 120, top: 50),
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Find the right learning\npath for you',
                    style: TextStyle(
                        fontSize: 26,
                        fontFamily: 'Open Sans-Light',
                        color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Match your goals to our programs, explore your options,\nand map out your path to success.',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Open Sans-Light',
                        color: Colors.white),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: <Widget>[
                  MaterialButton(
                  child: Container(
                    height: 40,
                    width: 230,
                    alignment: Alignment(0.0, 0.0),
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    decoration: BoxDecoration(
                      color: Colors.cyanAccent,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: Text(
                        'EXPORE BY SCHOOL',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Open Sans-Light',
                            fontWeight: FontWeight.normal,
                            letterSpacing: 3.0,
                            color: Colors.white),
                      ),
                    ),
                  ),
              onPressed: () {},
            ),
                      MaterialButton(
                        child: Container(
                          height: 40,
                          width: 220,
                          alignment: Alignment(0.0, 0.0),
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Center(
                            child: Text(
                              'EXPORE BY SKILL',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Open Sans-Light',
                                  fontWeight: FontWeight.normal,
                                  letterSpacing: 3.0,
                                  color: Colors.blue),
                            ),
                          ),
                        ),
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              ) ,
            ),
          ), // Find ride out
          SizedBox(height: 100.0),

          Container(
            margin: EdgeInsets.symmetric(horizontal:100),
            constraints: BoxConstraints.expand(
              height: 20.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Text('FEATURED PROGRAMS',style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Open Sans-Light',
                        color: Colors.grey))
                ),
                SizedBox(width: 50),
                Expanded(
                    flex: 1,
                    child: Text('ONLY AT UDACITY',style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Open Sans-Light',
                        color: Colors.grey))
                ),
                SizedBox(width: 50),
                Expanded(
                    flex: 1,
                    child: Text('RESOURCES',style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Open Sans-Light',
                        color: Colors.grey))
                ),
                SizedBox(width: 50),
                Expanded(
                    flex: 1,
                    child: Text('COMPANY',style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Open Sans-Light',
                        color: Colors.grey))
                ),
                SizedBox(width: 50),
                Expanded(
                    flex: 1,
                    child: Text('SUPPORT',style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Open Sans-Light',
                        color: Colors.grey))
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal:100,vertical: 10.0),
            constraints: BoxConstraints.expand(
              height: 700.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                    itemCount: FEATURED_PROGRAMS.length,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(FEATURED_PROGRAMS[index],style: TextStyle(fontSize: 12, fontFamily: 'Open Sans-Light', color: Colors.black87)),
                      )
                  )
                ),
                SizedBox(width: 50),
                Expanded(
                    flex: 1,
                    child: ListView.builder(
                        itemCount: ONLY_AT_UDACITY.length,
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(ONLY_AT_UDACITY[index],style: TextStyle(fontSize: 12, fontFamily: 'Open Sans-Light', color: Colors.black87)),
                        )
                    )
                ),
                SizedBox(width: 50),
                Expanded(
                    flex: 1,
                    child: ListView.builder(
                        itemCount: RESOURCES.length,
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(RESOURCES[index],style: TextStyle(fontSize: 12, fontFamily: 'Open Sans-Light', color: Colors.black87)),
                        )
                    )
                ),
                SizedBox(width: 50),
                Expanded(
                    flex: 1,
                    child: ListView.builder(
                        itemCount: COMPANY.length,
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(COMPANY[index],style: TextStyle(fontSize: 12, fontFamily: 'Open Sans-Light', color: Colors.black87)),
                        )
                    )
                ),
                SizedBox(width: 50),
                Expanded(
                    flex: 1,
                    child: ListView.builder(
                        itemCount: SUPPORT.length,
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(SUPPORT[index],style: TextStyle(fontSize: 12, fontFamily: 'Open Sans-Light', color: Colors.black87)),
                        )
                    )
                ),
              ],
            ),
          ),
          SizedBox(height: 100.0),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.chat,
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.lightBlue,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
