import 'package:flutter/material.dart';

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    var paint = Paint();
    var w = size.width;
    var h = size.height;

    path.moveTo(0, 0);
    path.lineTo(w, 0);
    path.lineTo(w, h);
    path.lineTo(0, h);
    path.close();
    var colors = [
      Color.fromARGB(255, 92, 80, 110),
      Color.fromARGB(255, 23, 23, 23)
    ];
    var stops = [-4 / 6, 2 / 6];

    Rect rectShape = new Rect.fromLTWH(0, 0, size.width, size.height);
    final Gradient gradient = LinearGradient(
        colors: colors,
        stops: stops,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter);

    paint = new Paint()..shader = gradient.createShader(rectShape);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          child: CustomPaint(
            painter: BackgroundPainter(),
            child: Container(
              margin: EdgeInsets.only(top: 40),
              height: double.maxFinite,
              width: double.maxFinite,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 8, top: 5),
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8, top: 5),
                        alignment: AlignmentDirectional.topStart,
                        child: Icon(
                          Icons.more_vert_outlined,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 35),
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/Childe.png'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    child: Text(
                      'Will',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 23),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'Edit profile',
                        style: TextStyle(fontSize: 12, letterSpacing: 0.7),
                      ),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(
                            color: Color.fromARGB(125, 255, 255, 255)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 130, top: 32),
                        alignment: Alignment.topLeft,
                        child: Text(
                          '0',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 130, top: 32),
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 98, top: 3),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'FOLLOWERS',
                          style: TextStyle(
                            letterSpacing: 0.8,
                            color: Color.fromARGB(125, 255, 255, 255),
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 99, top: 3),
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          'FOLLOWING',
                          style: TextStyle(
                            letterSpacing: 0.8,
                            color: Color.fromARGB(125, 255, 255, 255),
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 23, left: 17),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Playlists',
                      style: TextStyle(
                        letterSpacing: 0.3,
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 17, left: 17),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/Fav.jpeg'),
                                fit: BoxFit.cover),
                            shape: BoxShape.rectangle),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 19, left: 13),
                            child: Text(
                              'fav',
                              style: TextStyle(
                                letterSpacing: 0.3,
                                color: Colors.white,
                                fontSize: 14.5,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 6, left: 13),
                            child: Text(
                              '0 followers',
                              style: TextStyle(
                                letterSpacing: 0.3,
                                color: Color.fromARGB(191, 255, 255, 255),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 17, left: 17),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/Worship.jpeg'),
                                fit: BoxFit.cover),
                            shape: BoxShape.rectangle),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 19, left: 13),
                            child: Text(
                              ':)',
                              style: TextStyle(
                                letterSpacing: 0.3,
                                color: Colors.white,
                                fontSize: 14.5,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 6, left: 13),
                            child: Text(
                              '0 followers',
                              style: TextStyle(
                                letterSpacing: 0.3,
                                color: Color.fromARGB(191, 255, 255, 255),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 192),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 32, top: 5),
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.home_filled,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          alignment: AlignmentDirectional.topStart,
                          child: Icon(
                            Icons.search_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/library.png'),
                                  fit: BoxFit.cover),
                              shape: BoxShape.rectangle),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 32, top: 5),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/spotify.png'),
                                  fit: BoxFit.cover),
                              shape: BoxShape.rectangle),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 32, top: 5),
                          child: Text(
                            'Home',
                            style: TextStyle(
                              letterSpacing: 0.3,
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5, left: 17),
                          child: Text(
                            'Search',
                            style: TextStyle(
                              letterSpacing: 0.3,
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 3),
                          child: Text(
                            'Your Library',
                            style: TextStyle(
                              letterSpacing: 0.3,
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 23, top: 5),
                          child: Text(
                            'Premium',
                            style: TextStyle(
                              letterSpacing: 0.3,
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
