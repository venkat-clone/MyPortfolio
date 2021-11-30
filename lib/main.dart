import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  OpenUrl(String _url) async{
    if (!await launch(_url)) throw 'Could not launch $_url';
    return ;
  }

  contact_add(var pair){
    return IconButton(
      icon: Image.asset(pair[0].toString()),
      onPressed: (()=>OpenUrl(pair[1].toString())),
    );
  }
  contact(){
    var lis = [["assets/git_mark.png","https://github.com/venkat-clone"],
      ["assets/Linked.png","https://www.linkedin.com/in/venkey-venkey-b2aa34202"],
      ['assets/gmail.png',"mailto:lingampally.venkey@gmail.com"],
      ['assets/twitter.png',''],
    ];
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for(var i in lis) contact_add(i),
    IconButton(

      icon: Image.asset('assets/WhatsApp.png',
        fit: BoxFit.fitWidth,
        centerSlice: Rect.fromLTRB(1, 1, 1, 1),
        scale: 19,
      ),
      onPressed: (()=>OpenUrl('https://wa.me/+918184926683')),
    ),
      ],
    );
  }
   Icon star(int n) {
    if(n==2) {
      return const Icon(Icons.star);
    }
    else if(n==1) {
      return const Icon(Icons.star_half);}
    else {
      return const Icon(Icons.star_border);}

  }

  skill(var _skill,int n){
    var lis = List<int>.filled(5, 0);
    for(int i=0;i<5;i++){
      if(n>=2){
        lis[i]=2;
        n=n-2;
      }
      else if(n==1) {
      lis[i]=1;
      n=n-1;
      }
      else break;
    }

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(_skill.toString()),

        Row(
          children: <Widget>[

            for(int i=0;i<5;i++) star(lis[i]) ,

          ],
        ),
      ],
    );
  }

  skills(){
    var lis =[["C/C++","5"],["Html/Css","8"],["Python Programing","5"],
            ["Flutter/Dart","4"],["Android Devoloment","4"],];

    return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          for( var x in lis) skill(x[0],int.parse(x[1])),
        ]
    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(

        child: ListView(
          scrollDirection: Axis.vertical,
          children: [

            Container(

              foregroundDecoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(
                  color: Colors.black54,
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              margin: const EdgeInsets.only(top: 0,left: 2,right: 2),
              padding: const EdgeInsets.all(15),
              height: 190,
              // color: Colors.white70,
              // color: Colors.black26,

              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget> [
                  Container(
                    // padding: const EdgeInsets.symmetric(),

                    margin: const EdgeInsets.fromLTRB(0, 20, 0,10),

                    child : Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget> [
                        Container(
                          padding:const EdgeInsets.fromLTRB(0, 0, 10,15),
                          child: const Text("Venkatesh Lingampally",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: const <Widget>[
                          Text("  Age : 19"),
                          Text("  Drk Collage of Engineering"),
                          Text("  Gender :Mail"),
                          Text("  Qualification : b-teach"),
                        ],
                        ),


                      ],
                    ),
                  ),
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        // alignment: Alignment(5, 0),
                        centerSlice: Rect.fromLTRB(1, 1, 1, 1),
                        scale: 0.97,
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/venkey.jpg',
                        ),
                      ),

                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),),

                ],
              ),
            ),

            Container(

              color: Colors.white,
              padding: const  EdgeInsets.symmetric(horizontal: 20 ,vertical: 10),
              child: Column(
                children : [
                  Container(
                    padding:  const EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.centerLeft,
                    child: const Text("Contact",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    foregroundDecoration: BoxDecoration(
                      color: Colors.black26,

                      border: Border.all(
                        color: Colors.black54,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding:  const EdgeInsets.symmetric(horizontal: 10 ,vertical: 10),
                    child:const Text(" I'm perusing my B-teach in Computer since and cyber security"
                        " at Drk Collage of engineering ,"
                        "In the year 2014 since I'm in my 2nd year."
                        "I want to become a software engineer in my future."
                        "My hobbies are coding ,learning new things every day"
                        ", exploring things, web browsing and streaming youtube etc.."
                        "",
                      style: TextStyle(
                        fontSize: 15,

                      ),

                    ),
                  ),

                  Container(
                    padding:  const EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.centerLeft,
                    child: const Text("Skills",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15,),
                    child: skills(),
                  ),
                  Column(

                    children: [
                  Container(
                    padding: const  EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.centerLeft,
                    child: const Text("Contact",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    padding: const  EdgeInsets.symmetric(horizontal: 30,vertical: 0),
                    height: 70,
                    child: contact(),
                  ),
                    ],
                  ),
                  Container(
                    child: FlatButton(
                      child: const Text("Hire Me!",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                      color: Colors.lightBlueAccent,
                      onPressed:(()=>OpenUrl("https://wa.me/+918184926683")),
                        ),
                        )

                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
