import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:deutsche_zone/ColorScheme.dart';
import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/HomePage':(context)=>HomePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Deutsche Zone", style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'circe'
                  ),),
                  Text("Siguiente", style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'circe'
                  ),)
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/images/logo_DZ.png'),
                  fit: BoxFit.contain
                )
              ),
            ),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("DONDE LOS NIÑOS AMAN APRENDER",style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'circe'
                    ),),
                    Text("Hallo, willkommen \nHola, bienvenido",style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'circe'
                    ),textAlign: TextAlign.center,),
                    Text("Aprende con uno de los mejores \n  métodos de aprendizaje y  \nmemorización  desde tu hogar",style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'circe'
                    ),textAlign: TextAlign.center,),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 15,
                            color: Colors.black.withOpacity(0.1),
                          )
                        ),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: darkBlue,
                          ),
                          child: IconButton(
                            onPressed: openHomePage,
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
  void openHomePage(){
      Navigator.pushNamed(context, '/HomePage');
  }
}
