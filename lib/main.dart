import 'package:flutter/material.dart';

void main() {
  runApp(const DeviceApp());
}

class DeviceApp extends StatelessWidget {
  const DeviceApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Device Profile App',
        debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFFFF9C4)),
      ),

      home: Scaffold(
        backgroundColor: Color(0xFFFFF9C4),
          body:  Center(
            child: SingleChildScrollView(
              child: DeviceCard(),
            ),
          ),
          // add app banner
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Device Details',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber),

            ),
      )

      )
    );

  }
}

class DeviceCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container (
      width: 320 , // card width
      padding: EdgeInsets.all(20),  // internal space inside the element 
      decoration: BoxDecoration(
        color:Colors.white, 
        borderRadius: BorderRadius.circular(25)  // to make a circle

      ),
      child: Column( // arrange the elements
        mainAxisSize: MainAxisSize.min,
        children: [
        //  1 cicle shape anf photo
          CircleAvatar(
            radius : 60, // circle size
            backgroundColor: Colors.white,
          backgroundImage :NetworkImage('https://m.media-amazon.com/images/I/41+YRy5xkwL._SL1000_.jpg')
           // backgroundImage: AssetImage('realmeC55.jpg'),
          ),
          SizedBox(height: 15),
          
        //  2 text styles
        // phone details

          Text('Realme C55', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),
          Text('Realme', style: TextStyle(color: Colors.grey, fontSize: 16),),
          SizedBox(height: 10),
          // 3 price
          Text(
            '\$300', style: TextStyle(color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),

          // arrange the attribuites in a row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // distrubtion elemnts equally
            children: [
              Column(children: [Text('8GB'), Text('RAM', style: TextStyle(color: Colors.grey))]),
              Column(children: [Text('128GB'), Text('Storage', style: TextStyle(color: Colors.grey))]),
              Column(children: [Text('64MP'), Text('Camera', style: TextStyle(color: Colors.grey))]),
            ],
          ),
          SizedBox(height: 20),
          // 4 button 
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow[700],
              foregroundColor: Colors.black,
              shape: StadiumBorder(), // oval shape
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            ),
            child: Text('Buy Now'),
          ),
        ],



      ),


    );
    
  }
}
