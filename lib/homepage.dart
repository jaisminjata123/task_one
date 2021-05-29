import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  double w1,w2,w3,w4,w5=30;
  double h1,h2,h3,h4,h5=100;


  bool tooltip_status_1=false;
  bool tooltip_status_2=false;
  bool tooltip_status_3=false;
  bool tooltip_status_4=false;
  bool tooltip_status_5=false;

  Widget time(int number,String val)
  {

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 38,
          width: 65,
          decoration:BoxDecoration(
              border: Border.all(color: Colors.white)
          ) ,
      child:Padding(
        padding: const EdgeInsets.fromLTRB(12,12,13,11),
        child: Row(
          children: [
            Text('$number ',style:TextStyle(color:Colors.white)),
            Text('$val',style:TextStyle(color:Colors.white))
          ],
        ),
      )

      ),
  );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children:<Widget>[

              //usd,inr
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,

                  child:Column(

              children:<Widget> [
                Row(
                    children:<Widget> [
                      SizedBox(width: 16,),
                      Container(
                          height: 24,
                        width: 24,
                        child:Icon(Icons.arrow_back_ios_rounded,color:Colors.white)
                      ),
                      SizedBox(width: 33,),
                      Container(
                        height:20,
                        width: 92,
                        child: Text(
                          'USD/INR',style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 21,fontFamily: 'IBMPlexSans-Medium')
                        ),
                      ),

                    ]
                ),
                SizedBox(height: 22,),
                //dropdown
                Container(
                  height:40 ,
                  width: 328,

                  decoration: BoxDecoration(
                    color: Color(0xFF121212),
                    border: Border.all(
                      width: 1,

                   color: Color(0xFF121212),


                    ),borderRadius: BorderRadius.all(
                      Radius.circular(5.0) //                 <--- border radius here
                  ),
                  ),
                  child:
                  DropdownButton<String>(
                    focusColor:Colors.white,

                    //elevation: 5,
                    style: TextStyle(color: Colors.white),

                    iconEnabledColor:Colors.white,
                    items: <String>[
                      'one',
                      'two',

                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,style:TextStyle(color:Colors.black),),
                      );
                    }).toList(),
                    hint:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Technical Indictors',style:TextStyle(color:Colors.white,fontSize: 14,fontFamily: 'IBMPlexSans-Medium')),
                    ),
                    onChanged: (String value) {
                      setState(() {
                        print('state change');
                      });
                    },
                  ),

                )

              ]
              )
              ),
              //summary
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0,0,16.0,0),
                child: Container(
                  height: 48,
                  width: 328,


                  child: Center(
                    child: Text(
                        'Summary',style:TextStyle(color:Colors.white,fontSize: 16,fontFamily: 'IBMPlexSans-Bold')
                    ),
                  ),


                ),
              ),

              //indicator




              Container(

               width: MediaQuery.of(context).size.width,
                child:Row(
                  children:<Widget> [
                    Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget> [
                           // SliderGrid()
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,0,0,0),
                            child: Column(
                                children:<Widget> [
                                Row(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        width: (tooltip_status_1)?w1:10,

                                        height: (tooltip_status_1)?h1:80,
                                        color:Color(0xff007AFF)
                                      ),
                                      onTap: (){
                                        setState(() {
                                          tooltip_status_1=true;
                                          tooltip_status_2=false;
                                          tooltip_status_3=false;
                                          tooltip_status_4=false;
                                          tooltip_status_5=false;



                                        });

                                      },
                                    ),

                                    (tooltip_status_1)?Container(
                                      child:Row(
                                        children: [
                                          SizedBox(width: 28,),
                                          Container( width: 10,

                                        height: 80,
                                        color:Color(0xff007AFF)
                                    ),

                                        ],
                                      )
                                    ):Container()

                                  ],
                                ),
                                  GestureDetector(
                                    child: Container(
                                        width: (tooltip_status_2)?w1:10,

                                        height: (tooltip_status_2)?h1:80,
                                        color:Color(0xff007AFF)
                                    ),
                                    onTap: (){
                                      setState(() {
                                        tooltip_status_1=false;
                                        tooltip_status_2=true;
                                        tooltip_status_3=false;
                                        tooltip_status_4=false;
                                        tooltip_status_5=false;


                                      });
                                      print('tooltip');
                                    },
                                  ),
                                  GestureDetector(
                                    child: Container(
                                        width: (tooltip_status_3)?w1:10,

                                        height: (tooltip_status_3)?h1:80,
                                        color:Color(0xffFFB946)
                                    ),
                                    onTap: (){
                                      setState(() {
                                        tooltip_status_1=true;
                                        tooltip_status_2=false;
                                        tooltip_status_3=true;
                                        tooltip_status_4=false;
                                        tooltip_status_5=false;


                                      });
                                      print('tooltip');
                                    },
                                  ),
                                  GestureDetector(
                                    child: Container(
                                        width: (tooltip_status_4)?w1:10,

                                        height: (tooltip_status_4)?h1:80,
                                        color:Color(0xffFF2E50)
                                    ),
                                    onTap: (){
                                      setState(() {
                                        tooltip_status_1=false;
                                        tooltip_status_2=false;
                                        tooltip_status_3=false;
                                        tooltip_status_4=true;
                                        tooltip_status_5=false;


                                      });
                                      print('tooltip');
                                    },
                                  ),
                                  GestureDetector(
                                    child: Container(
                                        width: (tooltip_status_5)?w1:10,

                                        height: (tooltip_status_5)?h1:80,
                                        color:Color(0xffFF2E50)
                                    ),
                                    onTap: (){
                                      setState(() {
                                        tooltip_status_1=false;
                                        tooltip_status_2=false;
                                        tooltip_status_3=false;
                                        tooltip_status_4=false;
                                        tooltip_status_5=true;


                                      });
                                      print('tooltip');
                                    },
                                  ),



                                ]
                            ),
                          ),

                        ],

                    ),
                    SizedBox(width: 230,),
                    Column(
                      children:<Widget> [
                        ElevatedButton(
                            child: Text(
                                "1 MIN".toUpperCase(),
                                style: TextStyle(fontSize: 12)
                            ),
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color: Colors.white)
                                    )
                                )
                            ),
                            onPressed: () => null
                        ),
                        ElevatedButton(
                            child: Text(
                                "5 MIN".toUpperCase(),
                                style: TextStyle(fontSize: 12)
                            ),
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color: Colors.white)
                                    )
                                )
                            ),
                            onPressed: () => null
                        ),
                        ElevatedButton(
                            child: Text(
                                "15 MIN".toUpperCase(),
                                style: TextStyle(fontSize: 12)
                            ),
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color: Colors.white)
                                    )
                                )
                            ),
                            onPressed: () => null
                        ),
                        ElevatedButton(
                            child: Text(
                                "30 MIN".toUpperCase(),
                                style: TextStyle(fontSize: 12)
                            ),
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color: Colors.white)
                                    )
                                )
                            ),
                            onPressed: () => null
                        ),
                        ElevatedButton(
                            child: Text(
                                "1 HR".toUpperCase(),
                                style: TextStyle(fontSize: 12)
                            ),
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color: Colors.white)
                                    )
                                )
                            ),
                            onPressed: () => null
                        ),
                        ElevatedButton(
                            child: Text(
                                "5 HR".toUpperCase(),
                                style: TextStyle(fontSize: 12)
                            ),
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color: Colors.white)
                                    )
                                )
                            ),
                            onPressed: () => null
                        ),
                        ElevatedButton(
                            child: Text(
                                "1 DAY".toUpperCase(),
                                style: TextStyle(fontSize: 12)
                            ),
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color: Colors.white)
                                    )
                                )
                            ),
                            onPressed: () => null
                        ),
                        ElevatedButton(
                            child: Text(
                                "1 WK".toUpperCase(),
                                style: TextStyle(fontSize: 12)
                            ),
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color: Colors.white)
                                    )
                                )
                            ),
                            onPressed: () => null
                        ),
                        ElevatedButton(
                            child: Text(
                                "1 MON".toUpperCase(),
                                style: TextStyle(fontSize: 12)
                            ),
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color: Colors.white)
                                    )
                                )
                            ),
                            onPressed: () => null
                        ),



                      ],

                    ),



                  ],
                ),
              ),


              //Moving averages
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0,0,16.0,0),
                child: Container(
                  height: 48,
                  width: 328,


                  child: Center(
                    child: Text(
                        'Moving Averages',style:TextStyle(color:Colors.white,fontSize: 16,fontFamily: 'IBMPlexSans-Bold')
                    ),
                  ),


                ),
              ),

              //buy button
              ElevatedButton(
                  child: Text(
                      "Buy".toUpperCase(),
                      style: TextStyle(fontSize: 14)
                  ),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Colors.blue)
                          )
                      )
                  ),
                  onPressed: () => null
              ),
                Container(
                    child: Row(
                      children:<Widget>[
                        SizedBox(width: 40,),
                      Column(
                          children:<Widget>[
                            Text('7',style:TextStyle(color:Colors.white,fontSize: 18,fontFamily: 'IBMPlexSans-Medium')),
                            SizedBox(height: 10,),
                            Text('Buy',style:TextStyle(color:Colors.white,fontSize: 12,fontFamily: 'IBMPlexSans')),

                          ]

                      ),
                        SizedBox(width: 100,),
                        Column(
                            children:<Widget>[
                              Text('-',style:TextStyle(color:Colors.white,fontSize: 18,fontFamily: 'IBMPlexSans-Medium')),
                              SizedBox(height: 10,),
                              Text('Neutral',style:TextStyle(color:Colors.white,fontSize: 12,fontFamily: 'IBMPlexSans')),
                            ]

                        ),
                        SizedBox(width: 100,),
                        Column(
                            children:<Widget>[
                              Text('5',style:TextStyle(color:Colors.white,fontSize: 18,fontFamily: 'IBMPlexSans-Medium')),
                              SizedBox(height: 10,),
                              Text('Sell',style:TextStyle(color:Colors.white,fontSize: 12,fontFamily: 'IBMPlexSans')),
                            ]

                        ),
                        SizedBox(width: 40,),
                      ]
                    )
                ),
              SizedBox(height: 10,),
              Container(
                height:40 ,
                width: 118,

                decoration: BoxDecoration(
                  color: Color(0xFF121212),
                  border: Border.all(
                    width: 1,

                    color: Color(0xFF121212),


                  ),borderRadius: BorderRadius.all(
                    Radius.circular(8.0) //                 <--- border radius here
                ),
                ),

                        child: DropdownButton<String>(
                          focusColor:Colors.white,

                          //elevation: 5,
                          style: TextStyle(color: Colors.white),

                          iconEnabledColor:Colors.white,
                          items: <String>[
                            'one',
                            'two',

                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value,style:TextStyle(color:Colors.black),),
                            );
                          }).toList(),
                          hint:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'Exponential',style:TextStyle(color:Colors.white,fontSize: 14,fontFamily: 'IBMPlexSans-Medium'))),
                          onChanged: (String value) {
                            setState(() {
                              print('state change');
                            });
                          },
                        ),

                      ),



              SizedBox(height: 10,),
              Container(
                height:40 ,
                width: 328,

                decoration: BoxDecoration(
                  color: Color(0xFF121212),
                  border: Border.all(
                    width: 1,

                    color: Color(0xFF121212),


                  ),borderRadius: BorderRadius.all(
                    Radius.circular(5.0) //                 <--- border radius here
                ),
                ),
                child: Row(
                    children:<Widget> [
                      SizedBox(width: 18,),
                      Container(
                        height:14,
                        width: 36,
                        child: Text(
                            'Period',style:TextStyle(color:Colors.white,fontSize: 12,fontFamily: 'IBMPlexSans-Medium')
                        ),
                      ),
                      SizedBox(width: 100,),
                      Container(
                        height:14,
                        width: 36,
                        child: Text(
                            'Value',style:TextStyle(color:Colors.white,fontSize: 12,fontFamily: 'IBMPlexSans-Medium')
                        ),
                      ),
                      SizedBox(width: 100,),
                      Container(
                        height:14,
                        width: 36,
                        child: Text(
                            'Type',style:TextStyle(color:Colors.white,fontSize: 12,fontFamily: 'IBMPlexSans-Medium')
                        ),
                      ),



                    ]
                ),
              ),
            Table(
              border:TableBorder.all(
                  color: Colors.black,
                  style:BorderStyle.solid,
                  width:2

              ),
              children: [
                TableRow(
                    children:[
                      Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('MA5',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('465.28',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('SELL',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.pink),),
                      ))


                    ]),

                TableRow(
                    children:[
                      Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('MA10',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('465.28',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('SELL',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.pink),),
                      ))


                    ]),
                TableRow(
                    children:[
                      Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('MA5',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('465.28',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('BUY',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.blue),),
                      )),


                    ]),
                TableRow(
                    children:[
                      Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('MA50',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('465.28',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('BUY',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.blue),),
                      )),


                    ]),
                TableRow(
                    children:[
                      Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('MA100',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('465.28',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('SELL',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.pink),),
                      ))


                    ]),
                TableRow(
                    children:[
                      Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('MA200',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('465.28',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('BUY',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.blue),),
                      )),


                    ]),

              ],
            ),
//Technical Indicator
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0,0,16.0,0),
                child: Container(
                  height: 48,
                  width: 328,


                  child: Center(
                    child: Text(
                        'Technical Indicators',style:TextStyle(color:Colors.white,fontSize: 16,fontFamily: 'IBMPlexSans-Bold')
                    ),
                  ),


                ),
              ),

              //buy button
              ElevatedButton(
                  child: Text(
                      "STRONG SELL".toUpperCase(),
                      style: TextStyle(fontSize: 12)
                  ),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.pink),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Colors.pink)
                          )
                      )
                  ),
                  onPressed: () => null
              ),
              Container(
                  child: Row(
                      children:<Widget>[
                        SizedBox(width: 40,),
                        Column(
                            children:<Widget>[
                              Text('1',style:TextStyle(color:Colors.white,fontSize: 18,fontFamily: 'IBMPlexSans-Medium')),
                              SizedBox(height: 10,),
                              Text('Buy',style:TextStyle(color:Colors.white,fontSize: 12,fontFamily: 'IBMPlexSans')),

                            ]

                        ),
                        SizedBox(width: 100,),
                        Column(
                            children:<Widget>[
                              Text('1',style:TextStyle(color:Colors.white,fontSize: 18,fontFamily: 'IBMPlexSans-Medium')),
                              SizedBox(height: 10,),
                              Text('Neutral',style:TextStyle(color:Colors.white,fontSize: 12,fontFamily: 'IBMPlexSans')),
                            ]

                        ),
                        SizedBox(width: 100,),
                        Column(
                            children:<Widget>[
                              Text('9',style:TextStyle(color:Colors.white,fontSize: 18,fontFamily: 'IBMPlexSans-Medium')),
                              SizedBox(height: 10,),
                              Text('Sell',style:TextStyle(color:Colors.white,fontSize: 12,fontFamily: 'IBMPlexSans')),
                            ]

                        ),
                        SizedBox(width: 40,),
                      ]
                  )
              ),
SizedBox(height: 10,),
              Container(
                height:40 ,
                width: 328,

                decoration: BoxDecoration(
                  color: Color(0xFF121212),
                  border: Border.all(
                    width: 1,

                    color: Color(0xFF121212),


                  ),borderRadius: BorderRadius.all(
                    Radius.circular(5.0) //                 <--- border radius here
                ),
                ),
                child: Row(
                    children:<Widget> [
                      SizedBox(width: 18,),
                      Container(
                        height:14,
                        width: 36,
                        child: Text(
                            'Name',style:TextStyle(color:Colors.white,fontSize: 12,fontFamily: 'IBMPlexSans-Medium')
                        ),
                      ),
                      SizedBox(width: 100,),
                      Container(
                        height:14,
                        width: 36,
                        child: Text(
                            'Value',style:TextStyle(color:Colors.white,fontSize: 12,fontFamily: 'IBMPlexSans-Medium')
                        ),
                      ),
                      SizedBox(width: 100,),
                      Container(
                        height:14,
                        width: 36,
                        child: Text(
                            'Action',style:TextStyle(color:Colors.white,fontSize: 12,fontFamily: 'IBMPlexSans-Medium')
                        ),
                      ),



                    ]
                ),
              ),
              Table(
                border:TableBorder.all(
                    color: Colors.black,
                    style:BorderStyle.solid,
                    width:2

                ),
                children: [
                  TableRow(
                      children:[
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('RSI (14)',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('-53.6549',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('NEUTRAL',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.yellow),),
                        ))


                      ]),
                  TableRow(
                      children:[
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('MA50',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('-53.6549',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('SELL',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.pink),),
                        ))

                      ]),

                  TableRow(
                      children:[
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('STOCH (9,6)',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('-53.6549',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('SELL',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.pink),),
                        ))


                      ]),
                  TableRow(
                      children:[
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('MA5',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('-53.6549',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('BUY',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.blue),),
                        )),


                      ]),
                  TableRow(
                      children:[
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('MA50',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('-53.6549',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('SELL',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.pink),),
                        ))

                      ]),
                  TableRow(
                      children:[
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('MA100',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('-53.6549',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('SELL',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.pink),),
                        ))


                      ]),
                  TableRow(
                      children:[
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('MA50',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('-53.6549',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('SELL',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.pink),),
                        ))

                      ]),
                  TableRow(
                      children:[
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('MA50',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('-53.6549',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('SELL',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.pink),),
                        ))

                      ]),
                  TableRow(
                      children:[
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('MA50',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('-53.6549',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('SELL',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.pink),),
                        ))

                      ]),
                  TableRow(
                      children:[
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('MA50',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('-53.6549',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('SELL',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.pink),),
                        ))

                      ]),
                  TableRow(
                      children:[
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('MA50',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('-53.6549',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('SELL',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.pink),),
                        ))

                      ]),
                  TableRow(
                      children:[
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('MA50',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('-53.6549',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('LESS VOLATILE',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.grey),),
                        ))

                      ]),

                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0,0,16.0,0),
                child: Container(
                  height: 48,
                  width: 328,


                  child: Center(
                    child: Text(
                        'Pivot Points',style:TextStyle(color:Colors.white,fontSize: 16,fontFamily: 'IBMPlexSans-Bold')
                    ),
                  ),


                ),
              ),
              Container(
                height:40 ,
                width: 118,

                decoration: BoxDecoration(
                  color: Color(0xFF121212),
                  border: Border.all(
                    width: 1,

                    color: Color(0xFF121212),


                  ),borderRadius: BorderRadius.all(
                    Radius.circular(8.0) //                 <--- border radius here
                ),
                ),

                child: DropdownButton<String>(
                  focusColor:Colors.white,

                  //elevation: 5,
                  style: TextStyle(color: Colors.white),

                  iconEnabledColor:Colors.white,
                  items: <String>[
                    'one',
                    'two',

                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,style:TextStyle(color:Colors.black),),
                    );
                  }).toList(),
                  hint:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Classic',style:TextStyle(color:Colors.white,fontSize: 14,fontFamily: 'IBMPlexSans-Medium'))),
                  onChanged: (String value) {
                    setState(() {
                      print('state change');
                    });
                  },
                ),

              ),
              Table(
                border:TableBorder.all(
                    color: Colors.black,
                    style:BorderStyle.solid,
                    width:2

                ),
                children: [
                  TableRow(
                      children:[
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('S3',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),


                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('456.87',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.white),),
                        )),

                      ]),

                  TableRow(
                      children:[
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('S2',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),

                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('456.87',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.white),),
                        )),


                      ]),
                  TableRow(
                      children:[
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('S1',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),

                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('456.87',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.white),),
                        )),


                      ]),
                  TableRow(
                      children:[
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Pivot points',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),


                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('456.87',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.white),),
                        )),


                      ]),
                  TableRow(
                      children:[
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('R1',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),


                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('456.87',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.white),),
                        )),


                      ]),
                  TableRow(
                      children:[
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('R2',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),

                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('456.87',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.white),),
                        )),



                      ]),
                  TableRow(
                      children:[
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('R3',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium'),),
                        )),

                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('456.87',style: TextStyle(fontSize: 14,fontFamily: 'IBMPlexSans-Medium',color:  Colors.white),),
                        )),



                      ]),

                ],
              ),




            ]
          ),
        ),
      ),
    );
  }
}
