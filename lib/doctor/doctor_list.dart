import 'package:flutter/material.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctors'),
      ),
      body: ListView(
        children: [
          Card(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Jhon Doe',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text('Dermotologist')
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
