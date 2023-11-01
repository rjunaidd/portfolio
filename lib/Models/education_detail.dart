import 'package:flutter/material.dart';
Widget buildEducationTable() {
  List<TableRow> rows = [
    TableRow(
      children: [
        TableCellContent("Degree", bold: true),
        TableCellContent("Institution", bold: true),
        TableCellContent("Year", bold: true),
        TableCellContent("Marks", bold: true),
      ],
    ),
    TableRow(
      children: [
        TableCellContent("FSc Pre-Engineering"),
        TableCellContent("Aspire College Pattoki"),
        TableCellContent("2017-2019"),
        TableCellContent("646"),
      ],
    ),
    TableRow(
      children: [
        TableCellContent("BS Software Engineering"),
        TableCellContent("University of Okara"),
        TableCellContent("2019-2023"),
        TableCellContent("3.2 cgpa"),
      ],
    ),
    // Add more education rows as needed
  ];

  return Table(
    border: TableBorder.all(color: Colors.grey.shade900),

    children: rows,
  );
}

Widget TableCellContent(String content, {bool bold = false}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      content,
      style: TextStyle(fontWeight: bold ? FontWeight.bold : FontWeight.normal,),
    ),
  );
}
