import 'package:flutter/material.dart';
import 'package:miniproject/database2.dart';

class Seconddesign extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage("assets/images/burger1.jpeg"),
                    fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Icon(Icons.arrow_back,color: Colors.white,)
                
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Text("Filters",style: TextStyle(color: Colors.white,fontSize: 20),
                  )),
                  Positioned(
                    top: 250,
                    left: 10,
                    child: Text("American\nRestaurants",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),)),
                    Positioned(
                      top: 360,
                      left: 10,
                      child: Text("36 places",style: TextStyle(color: Colors.grey,fontSize: 20),)),
                      
                      
              ],
              
              
            ),
            Expanded(
              
              
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context,index){
                    return SizedBox(height: 25);
                  },
                  itemCount: 4,
                  itemBuilder: (context,index){
                  return  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 56, 55,55),
                    borderRadius:BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Container(
                          
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            
                            image: DecorationImage(image: AssetImage(Database2.MyList[index]["image"])
                        
                            ),
                            
                          
                          ),
                          
                        ),
                        Text(Database2.MyList[index]["name"],style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  );
                  },
                ),),
              ),
          ],
        ),
      ),
    );
  }
}