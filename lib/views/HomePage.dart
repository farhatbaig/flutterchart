import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterchart/bar_chart/samples/bar_chart_sample2.dart';
import 'package:flutterchart/line_chart/samples/line_chart_sample1.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF9800),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffC2185B),
        centerTitle: true,
        title: Text('Platinum(pt)'),
      ),
      body: SafeArea(
        child:Container(

          decoration: const BoxDecoration(
            color: Colors.white,
                  gradient: LinearGradient(
                    colors: [

                      Color(0xffFF9800),
                      Color(0xffE64A19),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
          ),
          padding: EdgeInsets.only(top: 30 ,bottom: 50),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                    child: Text('evault Balance' , style: TextStyle(color: Colors.white,fontSize: 20),)),
                SizedBox(height: 10,),
                Text('44.183 g' , style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 10,),
                Text('\$129275.461' , style: TextStyle(color: Colors.white,fontSize: 20),),

                Container(
                  margin: EdgeInsets.only(left: 20,right: 20, top:20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(18)),

                  ),
                  child:    Padding(
                    padding: const EdgeInsets.only(
                      left: 28,
                      right: 28,
                    ),
                    child: LineChartSample1(),
                  ),
                ),

                 SizedBox(
                  height: 22,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(18)),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 28.0, right: 28),
                    child: BarChartSample2(),
                  ),
                ),


              ],
            ),
          ),
        )
      ),

    );
  }
}