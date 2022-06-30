import 'package:flutter/material.dart';
class showing extends StatelessWidget {
final String patient;
final String doctor;
showing({
  @required this.patient,
  @required this.doctor,
});
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
      body:Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Table(
                defaultColumnWidth: FixedColumnWidth(180.0),
                border: TableBorder.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 2),
                children: [
                  TableRow( children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(children:[Text('patient', style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(children:[Text('$patient', style: TextStyle(fontSize: 20.0))]),
                    ),
                  ]),
                  TableRow( children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(children:[Text('doctor',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(children:[Text('$doctor',style: TextStyle(fontSize: 20),),]),
                    ),

                  ]),
                  TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(children:[Text('last measurment',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(children:[Text('-1.3',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                          ]),
                        ),
                      ]
                  ),
                ]
            ),
          ),
         SizedBox(height: 30,),
          Text('"You should visit your doctor"',style: TextStyle(
            fontSize: 25,
          ),),
        ],
      ),
    );
  }
}
