


import 'package:flutter/material.dart';



var calories = 0;
void add(String name,int cal) {
    //var calories = 0;
    calories = calories + cal ;
    // print(calories);
    // print(name + " " + calories.toString());

}

// class CaloryCount extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       title: 'Fitness', theme: ThemeData(
//             primarySwatch: Colors.blue,
//          ), 
//       home: AddFoodList() ,
//       );
//   }
// }
class AddFoodList extends StatelessWidget {
  const AddFoodList({Key? key}) : super(key: key);
 
   // This widget is the root of your application. 
   @override 
   Widget build(BuildContext context) {
      return MaterialApp(
         title: 'Flutter Demo', theme: ThemeData(
            primarySwatch: Colors.blue,
         ), 
         home: const FoodList(title: ''), 
      );
   }
}

// class Head extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp();
//   }

//}
class FoodList extends StatelessWidget { 
   const FoodList({Key? key, required this.title}) : super(key: key); 
   final String title; 
   
   @override 
   Widget build(BuildContext context) { 
      return Scaffold( 
         appBar: AppBar(title: const Text("Add Calories")), 
        
         body: ListView(
            shrinkWrap: true, 
            padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0), 
        

            children: const <Widget>[ 
               FoodEntry(
                  name: "idli(plane)", 
                  description: "1.0 Serveing(2.0 piece)", 
                  calories: 48 , 
               ), 
               FoodEntry( 
                  name: "Dosa(plaine)",    
                  description: "1.0 Serveing(2.0 piece)", 
                  calories: 800, 
      
               ), 
               FoodEntry( 
                  name: "Boiled Eggs", 
                  description: "1.0 Serveing(2.0 piece)", 
                  calories: 2000, 
            
               ), 
               FoodEntry( 
                  name: "Pohe", 
                  description: "1.0 Serveing(100 gm)", 
                  calories: 199, 
            
               ), 
               FoodEntry( 
                  name: "Upama", 
                  description: "1.0 Serveing(100 gm)", 
                  calories: 209, 
                
               ), 
               FoodEntry(
                  name: "Plain Cooked Rice", 
                  description: "1.0 Serveing(1 bowl)", 
                  calories: 173, 
        
               ), 
               FoodEntry(
                  name: "Plain Cooked Rice", 
                  description: "1.0 Serveing(1 bowl)", 
                  calories: 173, 
        
               ), 
               FoodEntry(
                  name: "Roti", 
                  description: "1.0 Serveing(2 piece)", 
                  calories: 97, 
        
               ), 
            ],
         )
      );
   }
}
class FoodEntry extends StatelessWidget {
   const FoodEntry({Key? key, required this.name, required this.description, required this.calories}) :
      super(key: key); 
   final String name; 
   final String description; 
   final int calories; 
  
   
   @override
  Widget build(BuildContext context) {
      return Container(
         padding: const EdgeInsets.all(2), 
         height: 60, 
         //child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
               mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
               children:<Widget>[  
           Column(  
             
              
              children: [Text(name + "\n" + description)],  
            ),  
            Column(  
              
              
              children: [Text(calories.toString() + " cal")],  
            ),  
            Column(  
              
              
              children: 
                                [RaisedButton(
                                  onPressed: () => add(name, calories),
                                  child: const Text('+'),
                                  textColor: Colors.white,
                                  color: Colors.blue,
                                  shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(10),
                                  //padding: EdgeInsets.fromLTRB(6, 12, 12, 12),
                                ),
                              ],  
            )  
          ]  
               
               
            )
         //)
      );
   }
}

// class FoodEntry extends StatelessWidget {
//    FoodEntry({Key? key, required this.name, required this.description, required this.calories}) :
//       super(key: key); 
//    final String name; 
//    final String description; 
//    final int calories; 
  
   
//    Widget build(BuildContext context) {
//       return Container(
//          padding: EdgeInsets.all(2), 
//          height: 120, 
//          //child: Card(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
//                children:<Widget>[  
//            Column(  
//               mainAxisAlignment: MainAxisAlignment.start,
              
//               children: [Text(this.name + "\n" + this.description)],  
//             ),  
//             Column(  
              
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [Text(this.calories.toString() + " cal")],  
//             ),  
//             Column(  
              
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: 
//                                 [RaisedButton(
//                                   onPressed: () => add(this.calories),
//                                   child: Text('+'),
//                                   textColor: Colors.white,
//                                   color: Colors.blue,
//                                   shape: CircleBorder(),
//                                       padding: EdgeInsets.all(10),
//                                   //padding: EdgeInsets.fromLTRB(6, 12, 12, 12),
//                                 ),
//                               ],  
//             )  
//           ]  
               
               
//             )
//          //)
//       );
//    }
// }


