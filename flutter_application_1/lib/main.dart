import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
            width: double.infinity,
            
            
            child: const Column(
              children: [
            
            WelcomeText(),
            loginInput(),
            PasswordInput(),
            ForgotPass(),
            FinalSecure(),
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        
         Row(
          children: [
            Text('Hush kelibsiz!',style: TextStyle(fontFamily: 'Poppins',fontSize: 20,color: Colors.black),),
           
          ],
        ),

        SizedBox(height: 20,),

         Row(
          children: [
            Text('Tizimga kirish uchun login va parolni kiriting',style: TextStyle(fontFamily: 'Poppins',fontSize: 15,color: Color.fromARGB(141, 0, 0, 0)),),
           
          ],
        ),



      ],
    );
  }
}





class loginInput extends StatelessWidget {
  const loginInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [

SizedBox(height: 30,),

      Row(children: [
        Text('Login',style: TextStyle(fontFamily: 'Poppins',fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
      ],),

      SizedBox(height: 10,),

TextField(

decoration: InputDecoration(

enabledBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(20),
  borderSide: BorderSide(color: Color.fromARGB(99, 148, 148, 148))
),


focusedBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(20),
  borderSide: BorderSide(color: Color.fromARGB(255 ,153, 17, 21))

),

disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
  borderSide: BorderSide(color: Colors.black)
),

prefixIcon: Icon(Icons.person,color: Color.fromARGB(164, 34, 34, 34),),
hintText: 'Loginni kiriting'

),



)


    ],);
  }
}






class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [

SizedBox(height: 20,),

      Row(children: [
        Text('Parol',style: TextStyle(fontFamily: 'Poppins',fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
      ],),

      SizedBox(height: 10,),

TextField(

decoration: InputDecoration(

enabledBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(20),
  borderSide: BorderSide(color: const Color.fromARGB(99, 148, 148, 148))
),


focusedBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(20),
  borderSide: BorderSide(color: Color.fromARGB(255 ,153, 17, 21))

),

disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
  borderSide: BorderSide(color: Colors.black)
),

prefixIcon: Icon(Icons.lock,color: Color.fromARGB(164, 34, 34, 34),),
hintText: 'Parolni kiriting',


),

obscureText: true,
obscuringCharacter: '*',

)


    ],);
  }
}





class ForgotPass extends StatelessWidget {
  const ForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 70,),

      Row(children: [
        SizedBox(width: 10,),
        TextButton(onPressed: (){}, child: 

 Text('Parolni unutdingizmi?',style: TextStyle(fontFamily: 'Poppins',fontSize: 15,color: Color.fromARGB(255, 54, 86, 209),fontWeight: FontWeight.bold),),
        )
      ],)
    ],);
  }
}




class FinalSecure extends StatelessWidget {
  const FinalSecure({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
SizedBox(height: 50,),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [





 Expanded(
   child: FloatingActionButton(onPressed: (){},
   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
   
   backgroundColor: const Color.fromARGB(255, 54, 86, 209),
   child: Text('Kirish',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Poppins'),),
   ),
 )


      ],),

SizedBox(height: 50,),

Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Text('Akkauntingiz yo\'qmi?'),
  TextButton(onPressed: (){}, child: Text('Ro\'yhatdan o\'ting',style: TextStyle(color: Color.fromARGB(255, 54, 86, 209)),))
],)



    ],);
  }
}