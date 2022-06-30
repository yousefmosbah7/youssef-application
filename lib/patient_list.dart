import 'package:flutter/material.dart';
import 'package:untitled2/employee.dart';
import 'package:hive/hive.dart';
import 'adding.dart';

class EmployeesListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EmployeesListState();
  }
}

class EmployeesListState extends State<EmployeesListScreen> {
  
  List<Employee> listEmployees = [];
  TextEditingController tesearch = TextEditingController();


  void getEmployees() async {
    final box = await Hive.openBox<Employee>('employee');
    setState(() {
      listEmployees = box.values.toList();
      var allpatient = [];
      var items = [];
    });
  }

  @override
  void initState() {
    getEmployees();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Text("U.B.D.U",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => AddOrEditEmployeeScreen(false)));
              },
            )
          ],
        ),
        body:

        Container(
            padding: EdgeInsets.all(15),
            child: ListView.builder(
                itemCount: listEmployees.length,
                itemBuilder: (context, position) {
                  Employee getEmployee = listEmployees[position];
                  var salary = getEmployee.empSalary;
                  var age = getEmployee.empAge;
                  return Card(
                    elevation: 8,
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.all(15),
                      child: Stack(
                        children: <Widget>[
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(getEmployee.empName,
                                  style: TextStyle(fontSize: 18))),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              margin: EdgeInsets.only(right: 45),
                              child: IconButton(
                                  icon: Icon(Icons.edit),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => AddOrEditEmployeeScreen(
                                                true, position, getEmployee)));
                                  }),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                icon: Icon(Icons.delete),
                                onPressed: (){
                                  final box = Hive.box<Employee>('employee');
                                  box.deleteAt(position);
                                  setState(() => {
                                    listEmployees.removeAt(position)
                                  });
                                }),
                          ),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Text("Age: $salary | mes: $age",
                                  style: TextStyle(fontSize: 18))),
                        ],
                      ),
                    ),
                  );
                }),
        ),
      ),

    );

  }
}
