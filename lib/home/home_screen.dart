import 'package:flutter/material.dart';
import 'package:healsoon/doctor/doctor_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Hi, Shakil',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.notifications_outlined))
              ],
            ),
          ),
          //Search Bar
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.5)),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Icon(Icons.search),
          ),
          //Speciality Bar
          Container(
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Card(
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: const Center(child: Text('Allergy'))),
                ),
                Card(
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: const Center(child: Text('Anesthesiology'))),
                ),
                Card(
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: const Center(child: Text('Dermatology'))),
                ),
                Card(
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: const Center(child: Text('Diagnostic radiology'))),
                )
              ],
            ),
          ),
          //Top Doctors
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text(
              'Top Doctors',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          DoctorCard(),
          DoctorCard(),
          DoctorCard(),
          DoctorCard(),
          DoctorCard(),

        ],
      ),
    );
  }
}
