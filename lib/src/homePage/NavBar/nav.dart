import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  List<String> navBar = [];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopNavBar();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopNavBar();
      } else {
        return MobileNavBar();
      }
    });
  }
}

class DesktopNavBar extends StatelessWidget {
  List<String> navBar = ["Series", "Tv", "CookiesView", "Cartoon"];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Expanded(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 15.0, left: 25, right: 10, bottom: 15),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Expanded(
              flex: 1,
              child:
                  Align(alignment: Alignment.topLeft, child: movieSite_name())),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                home_widget(),
                SizedBox(
                  width: 30,
                ),
                nav_list(),
                SizedBox(
                  width: 100,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: [
                  search(),
                  profile_picture(),
                ],
              ),
            ),
          ),
        ]),
      ),
    ));
  }

  Padding movieSite_name() {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Text(
        "MovieRexX",
        style: TextStyle(
            fontFamily: "roboto",
            color: Colors.red,
            fontSize: 30,
            letterSpacing: 5,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Container home_widget() {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.fromBorderSide(BorderSide(color: Colors.grey)),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Text(
          "Home",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "ub",
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Row nav_list() {
    return Row(
        children: navBar
            .map((e) => Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    e,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "ub",
                        letterSpacing: 2,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ))
            .toList());
  }

  CircleAvatar profile_picture() {
    return CircleAvatar(
      maxRadius: 20,
      minRadius: 20,
      backgroundImage: AssetImage("images/8502.jpg"),
    );
  }

  Container search() {
    return Container(
      width: 170,
      height: 30,
      padding: EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          Icon(Icons.search, size: 20),
          SizedBox(width: 10),
          Text(
            "Search",
            style: TextStyle(
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.format_align_left, color: Colors.grey)),
            Text(
              "MovieRexX",
              style: TextStyle(
                  fontFamily: "ub",
                  color: Colors.red,
                  letterSpacing: 5,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Row(children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, color: Colors.grey)),
              SizedBox(width: 15),
              CircleAvatar(
                maxRadius: 20,
                minRadius: 20,
                backgroundImage: AssetImage("images/8502.jpg"),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

//  Center(
//                       child: TextField(
//                         decoration: InputDecoration.collapsed(
//                             focusColor: Colors.black, hintText: "Search"),
//                       ),
//                     ),
