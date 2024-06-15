import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Datatableeg(),
  ));
}

class Datatableeg extends StatelessWidget {
  const Datatableeg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DataTable(
          border: TableBorder.all(width: 5,color: Colors.black12),
            columns: [
          DataColumn(
              label: Text(
            "Name",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          )),
          DataColumn(
              label: Text(
            "Age",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          )),
          DataColumn(
              label: Text(
            "Job",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          )),
          DataColumn(
              label: Text(
            "Salary",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ))
        ], rows: [
          DataRow(cells: [
            DataCell(Text("Arun")),
            DataCell(Text("24")),
            DataCell(Text("Engineer")),
            DataCell(Text("20000")),
          ]),
          DataRow(cells: [
            DataCell(Text("Jabbar")),
            DataCell(Text("27")),
            DataCell(Text("Doctor")),
            DataCell(Text("50000"))
          ]),
          DataRow(cells: [
            DataCell(Text("Manu")),
            DataCell(Text("28")),
            DataCell(Text("Teacher")),
            DataCell(Text("40000"))
          ]),
        ]),
      ),
    );
  }
}
