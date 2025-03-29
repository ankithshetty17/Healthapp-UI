import 'package:flutter/material.dart';
import 'package:health_app/widgets/doctor_profile.dart';
import 'package:health_app/widgets/health_needs.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: false,
        title: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Text('Hi,Jane.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
              Text('How are you feeling today!!.',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 12),)
          ],
        ),
        actions: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black26
              ),
            ),
            child: Icon(Icons.notifications_none,color: Colors.black, size: 20,),
          ),
          SizedBox(width: 10,),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black26
              ),
            ),
            child: Icon(Icons.search,color: Colors.black, size: 20,),
          ),
          SizedBox(width: 10,),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(12),
        children: [
          DoctorProfile(),
          SizedBox(height: 8),
          Text('Health Needs',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 19),),
           SizedBox(height: 8),
          HealthNeeds(),
            SizedBox(height: 8),
          Text('Nearby Doctor',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 19),),
        ],
      ),
    );
  }
}