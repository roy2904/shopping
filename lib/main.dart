import 'package:flutter/material.dart';
import 'FadeAnimation.dart';
import 'Shoes.dart';

void main() => runApp(
      MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Shoes',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              FadeAnimation(1.3,Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            'All',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.5 / 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Center(
                          child: Text(
                            'Sneakers',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.5 / 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Center(
                          child: Text(
                            'Casuals',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.5 / 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Center(
                          child: Text(
                            'Jordans',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.5 / 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Center(
                          child: Text(
                            'Air Max',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.7 / 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Center(
                          child: Text(
                            'Travis Edition',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),),
              SizedBox(height: 20),
              FadeAnimation(1.5,makeCard(tag: 'one', image: 'assets/images/one.jpg', isWhite: false),),
              FadeAnimation(1.7,makeCard(tag: 'two', image: 'assets/images/two.jpg', isWhite: false),),
              FadeAnimation(1.9,makeCard(tag: 'three', image: 'assets/images/three.jpg',isWhite: true),),
              FadeAnimation(2.1,makeCard(tag: 'four', image: 'assets/images/four.jpg',isWhite: false),),
              FadeAnimation(2.3,makeCard(tag: 'five', image: 'assets/images/five.jpg',isWhite: false),),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeCard({image, tag, isWhite}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Shoes(image: image,tag: tag,isWhite: isWhite,)));
        },
        child: Container(
          height: 250,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Sneakers',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: isWhite ? Colors.grey[800] : Colors.white),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Nike',
                          style: TextStyle(fontSize: 25, color: isWhite ? Colors.grey[800] : Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isWhite ? Colors.grey[800] : Colors.white,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.favorite_border,
                        size: 20,
                        color: isWhite ?  Colors.white: Colors.grey[800],
                      ),
                    ),
                  ),
                ],
              ),
              Text('100\$',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: isWhite ? Colors.grey[800] : Colors.white),),
            ],
          ),
        ),
      ),
    );
  }
}
