import 'package:flutter/material.dart';
import 'package:codepen_project/util/items.dart';
import 'package:codepen_project/widgets/search_bar.dart';
import 'package:codepen_project/widgets/vertical_place_item.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 15, 16, 19),
        centerTitle: true,
        title: Image.asset(
          "assets/logo.png",
          height: 28,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "O melhor lugar para\nconstruir, testar e descobrir código front-end.",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: SearchBar(),
          ),
          buildVerticalList(),
        ],
      ),
    );
  }

  buildVerticalList() {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: ListView.builder(
        primary: false,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: projects == null ? 0 : projects.length,
        itemBuilder: (BuildContext context, int index) {
          Map place = projects[index];
          return VerticalPlaceItem(place: place);
        },
      ),
    );
  }
}
