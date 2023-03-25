// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class DoctorList extends StatelessWidget {
  final String docImagepath;
  final String docName;
  final String rating;
  final String docExperience;
  const DoctorList({super.key, required this.docImagepath, required this.docName, required this.rating, required this.docExperience});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  docImagepath,
                  height: 100,
                  width: 100,
                )),
            // ignore: prefer_const_literals_to_create_immutables
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 142, 105, 14),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(rating),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              docName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(docExperience)
          ],
        ),
      ),
    );
  }
}
