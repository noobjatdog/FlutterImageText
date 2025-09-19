import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 return MaterialApp(
   title: 'My Profile App',
   theme: ThemeData(
     primarySwatch: Colors.grey,
   ),
   home: ProfilePage(),
 );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text('My Profile'),
    centerTitle: true,
    backgroundColor: Colors.grey,
    elevation: 0,
  ),
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 4,
              color: Colors.black,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 20,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: ClipOval(
            child: Image.network
              ('https://lh3.googleusercontent.com/a/ACg8ocJ0KQrO8jBGbA5nFQ2AUazj1aCD9joqeGG2byXPMH9nLfzYCKw=s288-c-no',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 30),
          Text('IRO T. MOGOTE',
          style: TextStyle(
            fontSize:20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          ),
          SizedBox(height: 10),
          Text('BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY',
          style: TextStyle(
          fontSize:15,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          ),
          ),
          SizedBox(height: 10),
          Text(' I AM IRO FROM PHILIPPINES LOOKING FOR ENTRY-LEVEL JOB. MY EXPERTISE IS ALIGN WITH THE OPEN JOB POSITION. I AM SEEKING FOR KNOWLEDGE AND COMMUNITY THAT WILL ENHANCE MY SKILLS AND ATTITUDE. ',
          style: TextStyle(
            fontSize:13,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.grey,
          ),
            textAlign: TextAlign.center,
        ),
      ],
    ),
  ),
);
  }
}