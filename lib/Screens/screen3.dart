import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  int _currindex = 0;
  @override
  Widget build(BuildContext context) {
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
              SizedBox(height: 60,),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Container(
                  child: CircularPercentIndicator(
                    radius: 140,
                    lineWidth: 10,
                    percent: 0.4,
                    progressColor: Colors.blue.shade900,
                    backgroundColor: Colors.blue.shade100,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Balance',style: TextStyle(fontSize: 30),),
                        SizedBox(height: 20,),
                        Text('\$567,57',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle,color: Colors.green,),
                  SizedBox(width: 20,),
                  Text('INCOMES',style: TextStyle(fontSize: 20),),
                  SizedBox(width: 70,),
                  Icon(Icons.circle,color: Colors.green,),
                  SizedBox(width: 20,),
                  Text('EXPENSES',style: TextStyle(fontSize: 20),),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('309',style: TextStyle(fontSize: 50),),
                  SizedBox(width: 70,),
                  Text('234',style: TextStyle(fontSize: 50),),
                ],
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
