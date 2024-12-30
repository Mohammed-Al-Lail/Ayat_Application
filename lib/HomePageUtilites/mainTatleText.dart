import 'package:flutter/material.dart';

class mainTitleText extends StatelessWidget {
  const mainTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
              child: Container(
              
                width: 500,
                margin: const EdgeInsets.all(15),

                decoration: BoxDecoration(
                  color: Colors.amber[100],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                  ),
                  border: Border.all(
              
                    color: Colors.amber.shade600,
                    width: 3
                  )
                ),
              
              
                child: const Center(
                  child: Text(
                    "آيَاتٌ مُحْكَمَاتٌ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 34,
                      fontWeight:FontWeight.w900 ,
                  
                    ),
                  ),
                ),
              ),
            );
  }
}