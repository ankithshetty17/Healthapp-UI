import 'package:flutter/material.dart';
import 'package:health_app/models/needed_category.dart';
import 'package:health_app/utils/colors.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(customIcons.length, (index){
        return Column(
          children: [
           InkWell(
            onTap: (){
              if(index == customIcons.length-1){
                 showBottomSheet(
                 context: context,
                 showDragHandle: true,
                 builder: (context){
                 return Container(
                  width: double.infinity,
                 padding: EdgeInsets.all(20),
                 height: 300,
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text('Health Needs',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                     SizedBox(height: 10,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:List.generate(healthNeeds.length, (index){
                        return Column(
                          children: [
                           Container(
                              padding: EdgeInsets.all(20),
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: secondaryBgColor
                                ),    
                               child: Image.asset(healthNeeds[index].icon),
                           ),
                            SizedBox(height: 10,),
                               Text(healthNeeds[index].name,style: TextStyle(fontSize: 12),)
                          ],
                        );
                      }),
                     ),
                     SizedBox(height: 20,),
                     Text('Specialised Care',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                     SizedBox(height: 10,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:List.generate(specialisedCared.length, (index){
                        return Column(
                          children: [
                           Container(
                              padding: EdgeInsets.all(20),
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: secondaryBgColor
                                ),    
                               child: Image.asset(specialisedCared[index].icon),
                           ),
                            SizedBox(height: 10,),
                               Text(specialisedCared[index].name,style: TextStyle(fontSize: 12),)
                          ],
                        );
                      }),
                     )
                  ],
                 ),
                 );
                 });
              }
            },
            borderRadius: BorderRadius.circular(190),
            child: Container(
              padding: EdgeInsets.all(25),
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: secondaryBgColor
              ),
              child: Image.asset(customIcons[index].icon),
            ),
           ),
           SizedBox(height: 10,),
           Text(customIcons[index].name)
          ],
        );
      }
      ),
    );
  }
}