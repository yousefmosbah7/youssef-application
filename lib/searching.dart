import 'package:flutter/material.dart';
import 'package:untitled2/showing.dart';

class searching extends StatefulWidget {

  @override
  State<searching> createState() => _searchingState();
}

class _searchingState extends State<searching> {
  final patientController =new TextEditingController();
  final doctorController =new TextEditingController();
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
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          TextFormField(

            controller: patientController,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: 'patient',
              prefixIcon:Icon(Icons.local_hospital,),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: doctorController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'doctor',
              prefixIcon:Icon(Icons.local_hospital_rounded,),
              border: OutlineInputBorder(),

            ),
          ),
          SizedBox(
            height: 30,),
          Container(
            width: double.infinity,
            child: MaterialButton(
              onPressed:(){
                var patient = patientController.text;
                print(patientController);
                var doctor = doctorController.text;
                print(doctorController);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>showing
                (
doctor: doctor,
                  patient: patient,
                ),));
              },
              child: Text(
                'Show measurment',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8,),
            ),

          ),
        ],
      ),
    ),
    );
  }
}
