import 'package:ayat_application/HomePageUtilites/AlAya_Container.dart';
import 'package:ayat_application/HomePageUtilites/mainTatleText.dart';
import 'package:ayat_application/HomePageUtilites/timer.dart';
import 'package:ayat_application/providers/AyaProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});
    
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      backgroundColor: Colors.blueGrey[200],

      body:   SafeArea(
        
        child: Center(
          // The outer container
          child: Container(
            
            width:   MediaQuery.of(context).size.width * 0.8 ,
            height:  600 ,
            margin: const EdgeInsets.all(20),


            decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                    ),
                    border: Border.all(
                
                      color: Colors.white,
                      width: 3
                    )
                  ),
          
          
            child: Column(
            
              children: [
                
                const SizedBox(height: 20,),
            
            // The main Title container          
                const mainTitleText(),
                Divider(color: Colors.grey[100],),
                const SizedBox(height: 50,),
            
            
            // Al Aya Text
              Text(
                "الْآيَةُ",
                style: TextStyle(
                  color: Colors.amber[100],
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                          
                ),
              ),
              const SizedBox(height: 20,),

            // Al basmallah Text
              Text(
                "بِسْمِ اللَّهِ الرَّحْمَـٰنِ الرَّحِيمِ",
                style: TextStyle(
                  color: Colors.grey[100],

                ),
              ),
              const SizedBox(height: 10,),  

            // Al Aya Text container

              AlAyaContainer(aya: Provider.of<AyaProvider>(context,listen: true).getRandomAya()),
              

              const SizedBox(height: 20,),
              const Divider(color: Colors.white, ),
              const SizedBox(height: 20,),
              
            //Timer
              myTimer()

            

              
              ],
            ),
          ),
        ),
      ),
    );

  }
}