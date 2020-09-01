import 'package:flutter/material.dart';

class MoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopMoviePage();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopMoviePage();
      } else {
        return MobileView();
      }
    });
  }
}

class DesktopMoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 60, vertical: 160),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The",
                        style: TextStyle(
                            fontFamily: "roboto",
                            color: Colors.red,
                            fontSize: 20,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "Flash :",
                        style: TextStyle(
                            fontFamily: "roboto",
                            fontStyle: FontStyle.italic,
                            color: Colors.red,
                            fontSize: 40,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    " Watch Season 3 Now",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "After Barry Allen gained his speed back in the city, suddenly the appeared a faster person out there \n His name Z... ",
                    style: TextStyle(
                        fontSize: 12, letterSpacing: 2, color: Colors.white),
                  ),
                ),
                Row(children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 10),
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    width: 110,
                    height: 40,
                    child: MaterialButton(
                      elevation: 7,
                      hoverColor: Colors.red.withOpacity(0.9),
                      padding: EdgeInsets.all(10),
                      onPressed: () {},
                      child: Row(children: [
                        Icon(Icons.play_arrow),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Play",
                            style: TextStyle(color: Colors.black),
                          ),
                        )
                      ]),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 10),
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    width: 110,
                    height: 40,
                    child: MaterialButton(
                      color: Colors.black,
                      elevation: 7,
                      hoverColor: Colors.red.withOpacity(0.4),
                      padding: EdgeInsets.all(10),
                      onPressed: () {},
                      child: Row(children: [
                        Icon(
                          Icons.info_outline,
                          color: Colors.white,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "MovieInfo",
                              style: TextStyle(
                                  color: Colors.white, fontFamily: "roboto"),
                            ))
                      ]),
                    ),
                  )
                ]),
              ],
            ),
          ),
        ),
        Expanded(
            child: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                width: 700,
                height: 400,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(200, 160))),
              ),
              Image.asset(
                "images/8494-removebg-preview.png",
                width: 1900,
                height: 400,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  color: Colors.black,
                  width: 90,
                  height: 40,
                  child: Center(
                    child: Text(
                      "18 +",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "roboto",
                          fontSize: 19),
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
      ],
    );
  }
}

class MobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
