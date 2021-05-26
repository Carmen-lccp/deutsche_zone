import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:deutsche_zone/ColorScheme.dart';
import 'ThemenPage.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
      routes: {
        '/ThemenPage' : (context)=>ThemenPage(),
      },
    );
  }
}
class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/images/searchBg.png")
              )
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hola", style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'circe'
                  ),),
                  Text("Hallo", style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'circe',
                      fontWeight: FontWeight.w700
                  ),),
                  Expanded(
                      child: Container()
                  ),
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 30,
                            )
                        ),
                        Expanded(
                            child: TextField(
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'circe'
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Busque un tema especifico"
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,)
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
                padding: EdgeInsets.all(30),
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Temas / Themen", style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),),
                      ],
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              temaWidget("boy1", "Zahlen", "Números", "A1"),
                              temaWidget("girl", "Pronomen", "Pronombres", "A1"),
                              temaWidget("boy2", "Grüße", "Saludos", "A1"),
                              temaWidget("boy1Big", "Wesentlich", "Esenciales", "A1"),
                            ],
                          ),
                        )
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
  InkWell temaWidget(String img, String tema, String thema, String nivel)
  {
    return InkWell(
      onTap: openThemenPage,
      child: Container(
        margin: EdgeInsets.only(top: 20),
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: lightBlue.withOpacity(0.5)
        ),
        child: Row(
          children: [
            Container(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                    child: Container(
                      height: 125,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('asset/images/iconBgNew.png'),
                              fit: BoxFit.contain
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    child: Hero(
                      tag: img,
                      child: Container(
                        width: 100,
                        height: 130,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('asset/images/$img.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("NIVEAU $nivel",style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey
                        ),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Text(tema, style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),),
                    Text(thema, style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: darkBlue
                    ),),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Vorwärts! / ¡Vamos!",style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500
                          ),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  void openThemenPage()
  {
    Navigator.pushNamed(context, '/ThemenPage');
  }
}