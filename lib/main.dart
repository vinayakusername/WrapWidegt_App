import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{

Container MyFruits(String imageValue,String friutName,String subHeading){
  
  return Container(
                    width: 160.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.asset(imageValue),
                          ListTile(
                            title: Text(friutName),
                            subtitle: Text(subHeading),
                          )
                        ],
                      ),
                    ),
                  );
}

@override
  Widget build(BuildContext context){

    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
      appBar: AppBar(
          title: Text('Wrap Widget'),
        ),
        body:Padding(
          padding: EdgeInsets.all(16.0), 
          child:Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 300,  
                child:Wrap(
                  runSpacing: 4.0,
                  spacing: 8.0,
                  direction: Axis.horizontal,
                children: <Widget>[
                 MyFruits('assets\fruits\image1.jpg', "Mango","SubHeading1"),
                 MyFruits('assets\fruits\image2.jpg', "Apple","SubHeading2"),
                 MyFruits('assets\fruits\image3.jpg', "Banana","SubHeading3"),
                 MyFruits('assets\fruits\image4.jpg', "Strawberry","SubHeading4"),
                 MyFruits('assets\fruits\image5.jpg', "Orange","SubHeading5"),
                 MyFruits('assets\fruits\image6.jpg', "Watermelon","SubHeading6"),
                ],
                ),
              ),

                
        ),
        ),
        
      );  
    


  }
}