import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:deutsche_zone/ColorScheme.dart';
import 'package:flutter/widgets.dart';

class ThemenPage extends StatefulWidget {
  @override
  _ThemenPageState createState() => _ThemenPageState();
}

class _ThemenPageState extends State<ThemenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe7f4f5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 200,
                height: 260,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 200,
                        height: 240,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('asset/images/iconBg.png'),
                            fit: BoxFit.contain
                          )
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 20,
                      child: Hero(
                        tag: "boy1Big",
                        child: Container(
                          height: 220,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('asset/images/boy1Big.png')
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
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Wesentlich", style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'product'
                        ),),
                        SizedBox(height: 5,),
                        Text("Escenciales", style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: darkBlue,
                          fontFamily: 'circe'
                        ) ,)
                      ],
                    ),
                  )
              )
            ],
          ),
          Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(30),
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Tipps", style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        fontFamily: 'product'
                      ),),
                      SizedBox(height: 10,),
                      Text("Un idioma como el alemán requiere constancia y es importante que sepas que el aprendizaje de un idioma se basa en una curva de aprendizaje. Trata de Evita las distracciones, proramar tu estudio y rodeate del idioma.", style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 12,
                      ),),
                      SizedBox(height: 20,),
                      Text("Neue Wörter / nuevas palabras", style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          fontFamily: 'product'
                      ),),
                      SizedBox(height: 10,),
                      Container(
                        height: 400,
                        width: MediaQuery.of(context).size.width,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              courseWidget("icon1", "Hallo!",  lightBlue, darkBlue),
                              courseWidget("icon2", "Danke", yellow, Color(0xff4d4d4d)),
                              courseWidget("icon3", "Bitte", pink, Color(0xff4a155f)),
                              courseWidget("icon1", "Mein \nname ist",  lightBlue, darkBlue),
                              courseWidget("icon2", "Ich \nbin...", yellow, Color(0xff4d4d4d)),
                              courseWidget("icon3", "Ich \nheisse", pink, Color(0xff4a155f)),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
          )
        ],
      )
    );
  }
  Container courseWidget(String img, String name, Color color, Color textColor)
  {
    return Container(
      height: 300,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: color
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(name, style: TextStyle(
                  color: textColor,
                  fontSize: 23,
                  fontWeight: FontWeight.w500
                ),),

              ],
            ),
          ),
          Hero(
            tag: 'soy',
            child: Container(
              height: 90,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/images/$img.png'),
                  fit: BoxFit.contain
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
