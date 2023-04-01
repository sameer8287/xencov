import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xencov/Screens/screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    int _currindex=0;
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.blue.shade900));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        actions: [
          Icon(Icons.menu, size: 35),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Icon(Icons.account_circle_sharp,size: 80,color: Colors.grey,),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tommy Berns',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text('Los Angles',style: TextStyle(fontSize: 18)),
                          Icon(Icons.location_on,color: Colors.green,)
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text('Balance',style: TextStyle(fontSize: 20),),
                  SizedBox(width: 20,),
                  Text('\$567,57',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){

                  },style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    primary: Colors.white,
                    elevation: 5
                  ), child: Padding(
                    padding: const EdgeInsets.all(2.75),
                    child: Icon(Icons.add,color: Colors.blue.shade900,size: 50,),
                  )),
                  ElevatedButton(onPressed: (){

                  },style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.white,
                      elevation: 5
                  ), child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Icon(Icons.search,color: Colors.blue.shade900,size: 35,),
                  )),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Screen3()));
                  },style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.white,
                      elevation: 5
                  ), child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.bar_chart,color: Colors.blue.shade900,size: 40,),
                  )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Material(
                child :Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.29,
                    width: MediaQuery.of(context).size.width*0.85,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [Colors.green.shade600,Colors.green.shade400]
                      ),
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Transform.translate(
                            offset: Offset(230,20),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.black38,
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('CARD',style: TextStyle(fontSize: 20,color: Colors.white),),
                                )
                            ),
                          ),
                          SizedBox(height: 35,),
                          Text('3567 55437 9080 5600',style: TextStyle(fontSize: 25,color: Colors.white),),
                          SizedBox(height: 10,),
                          Text('Card number',style: TextStyle(fontSize: 20,color: Colors.white),),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              Text('Tommy Berna',style: TextStyle(fontSize: 20,color: Colors.white),),
                              SizedBox(width: 50,),
                              Text('05/20',style: TextStyle(fontSize: 19,color: Colors.white))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ),
              SizedBox(height: 20,),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Row(
                    children: [
                      Text('My cards',style: TextStyle(fontSize: 20),),
                      SizedBox(
                        width: 205,
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Row(
                    children: [
                      Text('Transsaction',style: TextStyle(fontSize: 20),),
                      SizedBox(
                        width: 170,
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              )
            ],  
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue.shade900,
        currentIndex: _currindex,
        // showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.area_chart,size: 40,),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.currency_exchange,size: 40,),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.security,size: 40,),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined,size: 40,),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings,size: 40,),
              label: ''),
        ],
        onTap: (index)
        {
          setState(() {
            _currindex = index;
          });
        },

      ),
    );
  }
}
