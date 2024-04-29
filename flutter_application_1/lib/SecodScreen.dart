
import 'package:flutter/material.dart';



class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255 ,153, 17, 21),
          actions: [IconButton(onPressed: (){
            Navigator.pushNamed(context, '/');
          }, icon: Icon(Icons.exit_to_app,color: Colors.white,))],
        ),

        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 227, 231, 235),
          child: SingleChildScrollView(child: Column(children: [

FirsDraweMenu(),
SecondDrawerMenu(),



          ],),),
        ),


        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
            width: double.infinity,
            
            
            child:  Column(
              
              children: [
           

Image.asset('assets/images/house.webp',width: 200,height: 200,),

Text('Uyning raqami',style: TextStyle(fontFamily: 'Poppins',fontSize: 30),),
SizedBox(height: 20,),

Buttons(),

          
            
            
            
              ],
            ),
          ),
        ),
      
    );
  }
}




class FirsDraweMenu extends StatelessWidget {
  const FirsDraweMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      //color: Colors.red,
      padding: EdgeInsets.only(top: 50,),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
Image.asset('assets/images/logo.png',width: 150,height: 150,),

Text('Qo\'riqlash xizmati'),

Divider(endIndent: 10,indent: 10,)

      ],),
    );
  }
}



class SecondDrawerMenu extends StatelessWidget {
  const SecondDrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

Container(
      margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
       child: ElevatedButton(onPressed: (){
         Navigator.pushNamed(context, '/second');
       }, child: Row(children: [
        Icon(Icons.home),
        SizedBox(width: 10,),
        Text('Asosiy sahifa'),
       ],)),
     ),
Container(
      margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
       child: ElevatedButton(onPressed: (){}, child: Row(children: [
        Icon(Icons.security),
        SizedBox(width: 10,),
        Text('Qo\'riqqa topshirish'),
       ],)),
     ),
Container(
      margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
       child: ElevatedButton(onPressed: (){
         Navigator.pushNamed(context, '/third');        
       }, child: Row(children: [
        Icon(Icons.call),
        SizedBox(width: 10,),
        Text('Bog\'lanish'),
       ],)),
     ),
Container(
      margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
       child: ElevatedButton(onPressed: (){}, child: Row(children: [
        Icon(Icons.settings),
        SizedBox(width: 10,),
        Text('Sozlamalar'),
       ],)),
     ),


     


    
      ],
    );
  }
}








class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(

        children: [
      
      
      
      
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Card(
        color: const Color.fromARGB(255, 175,65,84),
        child: Container(
      width: 120,
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Icon(Icons.lock_outline,size: 50,color: Colors.white,),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ Text('Qo\'riqqa',style: TextStyle(color: Colors.white,fontFamily: 'Poppins',),),],),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ Text('topshirish',style: TextStyle(color: Colors.white,fontFamily: 'Poppins',),),],)
      ],),

        ),
      ),
      
      
Card(
        color: const Color.fromARGB(255, 175,65,84),
        child: Container(
      width: 120,
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Icon(Icons.lock_open_rounded,size: 50,color: Colors.white,),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ Text('Qo\'riqdan',style: TextStyle(color: Colors.white,fontFamily: 'Poppins',),),],),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ Text('yechish',style: TextStyle(color: Colors.white,fontFamily: 'Poppins',),),],)
      ],),

        ),
      ),
      



      ],),///////////////////////////////////////////////////////
      
      SizedBox(height: 20,),
    
Table(

  border: TableBorder.all(), // Adds a border to all cells
  columnWidths: const <int, TableColumnWidth>{
    0: FixedColumnWidth(150.0), // fixed to 100.0 width
    1: FlexColumnWidth(100.0), // automatically adapts to fill the table width

  },
  children: const [
    TableRow(
      
      children: [
      Text('Xonadon egasi:'),
      Text('Abdurasulov A.A'),

    ]),
    TableRow(children: [
      Text('So\'ngi martda qo\'riqda:'),
      Text('17.04.2024'),
    ]),
    TableRow(children: [
      Text('Karta raqami:'),
      Text('17555'),

    ]),
    // Add more students and grades here
  ],
)




    

     
      ],),
    );
  }
}
