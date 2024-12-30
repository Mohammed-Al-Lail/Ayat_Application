import 'package:ayat_application/Classes/Aya.dart';
import 'package:flutter/material.dart';

class AlAyaContainer extends StatefulWidget {

  const AlAyaContainer({
    super.key,
    required this.aya
    });

  final Aya aya ;

  @override
  State<AlAyaContainer> createState() => _AlAyaContainerState();
}

class _AlAyaContainerState extends State<AlAyaContainer> {


// method for that display the tafseer dialog for an Aya
  _showTafseerDialog(){

    showDialog(

      context: context, 
      builder: (context) {
        
        return AlertDialog(

          scrollable: true,
          title:   Row(

            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
               widget.aya.aya ,
               style:  TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green[800]
               ),
              ),
              
              const Text(
               " : تَفْسِيرُ الْآيَةِ" ,
               style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900
               ),
              ),
              const SizedBox(width: 5,),

              
            ],
          ),
          actions: [

            Column(
              children: [

                  Text(
              widget.aya.AyaTafseer,
              style: const TextStyle(
                fontWeight: FontWeight.w500
              ),
            ),

          // close buttone 
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.red)
              ), 
              child: const Text(
                "اغلاق",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              ),
              ],
            )
            
          ],
          
        );
      },
      
      );
  }

  @override
  Widget build(BuildContext context) {
    
    return Column(
      
      children: [
        
        // This container will has The Aya itself
          Container(
            width: 500,
            padding: const EdgeInsets.all(25),
            margin: const EdgeInsets.all(10),
            
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),

            child: Center(
              child: Text(
                widget.aya.aya,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.green[800],
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          const SizedBox(height: 5,),

          // text for sourah Name 
            Text(
              "${widget.aya.sourahName} [${widget.aya.AyaNumber}]",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w900
              ),
            ),
          
          const SizedBox(height: 20,),

        // This row will has two buttons 
          // 1 => Button to Listen to the Aya
          // 2 => Button to show the Tafseer of the Aya
          Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  // listen to the Aya Button 
                    ElevatedButton(
                      onPressed: widget.aya.playAudio,

                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.amber)
                      ), 

                      child: const Text(
                        "الاستماع",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      ),
                      

                  // show Aya tafseer Button
                    ElevatedButton(
                      onPressed: _showTafseerDialog,

                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.amber)
                      ),  
                      child: const Text(
                        "التفسير",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      )
                      )
                ],
              )
        
      ],
    );
  }
}