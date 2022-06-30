import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'patient_list.dart';

class login extends StatefulWidget {

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController patient = TextEditingController();
  TextEditingController doctor = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text("U.B.D.U",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
        actions: [
          // Image(
          //   image: AssetImage('assets/images/logo.png'),
          //   height: 60,
          //   width: 60,
          //
          // ),
        ],
      ),
body: Padding(
  padding: const EdgeInsets.all(20.0),
    child: Form(
    key:formkey ,
    child: Column(
    children: [
TextFormField(
    controller: patient,
  keyboardType: TextInputType.name,
  decoration: InputDecoration(
    labelText: 'Email',
    prefixIcon:Icon(Icons.local_hospital,),
    border: OutlineInputBorder(),
  ),
    ),
      SizedBox(height: 20,),
      TextFormField(
        controller: doctor,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          labelText: 'Password',
          prefixIcon:Icon(Icons.local_hospital,),
          border: OutlineInputBorder(),
        ),
      ),
      SizedBox(height: 20,),
TextButton(
    onPressed: (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>EmployeesListScreen() ));

    },
    child: Text('Login',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),)
),

    ],
  )
)
),
    );
  }
}
