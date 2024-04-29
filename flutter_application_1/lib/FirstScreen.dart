
import 'package:flutter/material.dart';



class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
            width: double.infinity,
            
            
            child: const Column(
              children: [
            
            WelcomeTextOne(),
            loginInputOne(),
            PasswordInputOne(),
            ForgotPassOne(),
            FinalSecureOne(),
            
            
              ],
            ),
          ),
        ),
      
    );
  }
}



class WelcomeTextOne extends StatelessWidget {
  const WelcomeTextOne({super.key});

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





// ignore: camel_case_types
class loginInputOne extends StatelessWidget {
  const loginInputOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [

const SizedBox(height: 30,),

       const Row(children: [
        Text('Login',style: TextStyle(fontFamily: 'Poppins',fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
      ],),

      const SizedBox(height: 10,),

TextField(

decoration: InputDecoration(

enabledBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(20),
  borderSide: const BorderSide(color: Color.fromARGB(99, 148, 148, 148))
),


focusedBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(20),
  borderSide: const BorderSide(color: Color.fromARGB(255 ,153, 17, 21))

),

disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
  borderSide: const BorderSide(color: Colors.black)
),

prefixIcon: const Icon(Icons.person,color: Color.fromARGB(164, 34, 34, 34),),
hintText: 'Loginni kiriting'

),



)


    ],);
  }
}






class PasswordInputOne extends StatelessWidget {
  const PasswordInputOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [

const SizedBox(height: 20,),

      const Row(children: [
        Text('Parol',style: TextStyle(fontFamily: 'Poppins',fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
      ],),

      const SizedBox(height: 10,),

TextField(

decoration: InputDecoration(

enabledBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(20),
  borderSide: const BorderSide(color: Color.fromARGB(99, 148, 148, 148))
),


focusedBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(20),
  borderSide: const BorderSide(color: Color.fromARGB(255 ,153, 17, 21))

),

disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
  borderSide: const BorderSide(color: Colors.black)
),

prefixIcon: const Icon(Icons.lock,color: Color.fromARGB(164, 34, 34, 34),),
hintText: 'Parolni kiriting',


),

obscureText: true,
obscuringCharacter: '*',

)


    ],);
  }
}





class ForgotPassOne extends StatelessWidget {
  const ForgotPassOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 70,),

      Row(children: [
        const SizedBox(width: 10,),
        TextButton(onPressed: (){}, child: 

 const Text('Parolni unutdingizmi?',style: TextStyle(fontFamily: 'Poppins',fontSize: 15,color: Color.fromARGB(255, 54, 86, 209),fontWeight: FontWeight.bold),),
        )
      ],)
    ],);
  }
}




class FinalSecureOne extends StatelessWidget {
  const FinalSecureOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
const SizedBox(height: 50,),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [





 Expanded(
   child: FloatingActionButton(onPressed: (){
    Navigator.pushNamed(context, '/second');
   },
   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
   
   backgroundColor: const Color.fromARGB(255, 54, 86, 209),
   child: const Text('Kirish',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Poppins'),),
   ),
 )


      ],),

const SizedBox(height: 50,),

Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  const Text('Akkauntingiz yo\'qmi?'),
  TextButton(onPressed: (){}, child: const Text('Ro\'yhatdan o\'ting',style: TextStyle(color: Color.fromARGB(255, 54, 86, 209)),))
],)



    ],);
  }
}