import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 20),
    child: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height*0.19,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.blue
      ),
      child: Padding(padding:EdgeInsetsDirectional.symmetric(vertical: 10,horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/026/375/249/small_2x/ai-generative-portrait-of-confident-male-doctor-in-white-coat-and-stethoscope-standing-with-arms-crossed-and-looking-at-camera-photo.jpg'),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Dr.Ruben Dorwart.',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19),),
                  Text('Dental Speacialist.',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 12),),
                ],
              )
            ],
          ),
          SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width*0.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black12
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Row(
                  children: [
                    Icon(Iconsax.calendar,color: Colors.white70,size: 15,),
                    SizedBox(width: 3,),
                    Text('Today',style: TextStyle(color: Colors.white70,fontSize: 10,fontWeight: FontWeight.bold),)
                  ],
                 ),
                  Row(
                  children: [
                    Icon(Iconsax.clock,color: Colors.white70,size: 15,),
                    SizedBox(width: 3,),
                    Text('10:00 am - 5:30 pm',style: TextStyle(color: Colors.white70,fontSize: 10,fontWeight: FontWeight.bold),)
                  ],
                 )
                ],
              ),
            ),
          )
        ],
      ),
      ),
    ),
  );
  }
}