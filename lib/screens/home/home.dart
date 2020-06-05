import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, String>> data = [
    {
      "title": "Burger 1",
      "image":
          "https://images.pexels.com/photos/1199957/pexels-photo-1199957.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
    },
    {
      "title": "Burger 2",
      "image":
          "https://images.pexels.com/photos/1633578/pexels-photo-1633578.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
    },
    {
      "title": "Burger 3",
      "image":
          "https://images.pexels.com/photos/1199956/pexels-photo-1199956.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
    },
    {
      "title": "Pizza",
      "image":
          "https://images.pexels.com/photos/803290/pexels-photo-803290.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
    },
  ];

  Widget _buildTopBar(context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Icon(
            Icons.filter_list,
            color: Theme.of(context).primaryColor,
          ),
        ),
        Expanded(
          flex: 5,
          child: Text(
            "Recipes",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: new BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [Colors.orange, Colors.orange[800]],
              ),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFood(title, image) {
    return Column(
      children: <Widget>[
        Container(
          height: 150,
          width: 150.0,
          margin: EdgeInsets.only(right: 20, left: 20),
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
              fit: BoxFit.fill,
              image: new NetworkImage(image),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(title),
        Row(
          children: <Widget>[
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star_border),
          ],
        )
      ],
    );
  }

  Widget _buildLastestRecipes() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.07, top: 20),
          alignment: Alignment.topLeft,
          child: Text("Latest Recipes"),
        ),
        Container(
          height: 200,
          margin: EdgeInsets.only(top: 25),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              for (var item in data) _buildFood(item["title"], item["image"]),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildQuickAndEasy() {
    return Container(
      margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.07, top: 20),
      alignment: Alignment.topLeft,
      child: Text("Quick And Easy"),
    );
  }

  Widget _buildOrangeCard() {
    return Container(
      height: 100,
      decoration: new BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          colors: [Colors.orange, Colors.orange[800]],
        ),
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: <Widget>[
          Spacer(
            flex: 1,
          ),
          Container(
            width: 80,
            height: 80,
            decoration: new BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 3.0,
              ),
              shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: new NetworkImage(
                    "https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Chicken Roll",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Recipe By: Oğuzcan",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.white),
                    Icon(Icons.star, color: Colors.white),
                    Icon(Icons.star_half, color: Colors.white),
                    Icon(Icons.star_border, color: Colors.white),
                  ],
                )
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }

  Widget _buildRedCard() {
    return Container(
      height: 100,
      decoration: new BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          colors: [Colors.red[400], Colors.red[700]],
        ),
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: <Widget>[
          Spacer(
            flex: 1,
          ),
          Container(
            width: 80,
            height: 80,
            decoration: new BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 3.0,
              ),
              shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: new NetworkImage(
                    "https://images.pexels.com/photos/1148086/pexels-photo-1148086.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Sushi Roll",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Recipe By: Oğuzcan",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    Icon(Icons.star, color: Colors.white),
                    Icon(Icons.star, color: Colors.white),
                    Icon(Icons.star_border, color: Colors.white),
                  ],
                )
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              top: 20,
              bottom: 20,
            ),
            child: Column(
              children: <Widget>[
                _buildTopBar(context),
                _buildLastestRecipes(),
                _buildQuickAndEasy(),
                Container(
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.15,
                    left: MediaQuery.of(context).size.width * 0.15,
                  ),
                  child: Column(
                    children: <Widget>[
                      _buildOrangeCard(),
                      SizedBox(
                        height: 30,
                      ),
                      _buildRedCard(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
