import 'dart:core';

import 'package:equitable/model/person_model.dart';
import 'package:flutter/material.dart';

class SimpleScreen extends StatefulWidget {
  @override
  State<SimpleScreen> createState() => _SimpleScreenState();
}

class _SimpleScreenState extends State<SimpleScreen> {
  List<PersonModel> personList = [
    const PersonModel(name: ""),
    PersonModel(name: "Zunaira"),
    PersonModel(name: "Zumar"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Screen'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: personList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(personList[index].name ?? ""),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          PersonModel person = PersonModel(name: "Zunaira");
          PersonModel person1 = PersonModel(name: "zumar");
          Map<String, dynamic> data = {"name": " Zunaira"};
          PersonModel model = PersonModel.fromJson(data);

          print(model.name.toString());
          model = model.copyWith(name: "huma");
          print("new value:" + model.name.toString());
          print(person == person1);
          print(person.hashCode.toString());
          print(person1.hashCode.toString());
        }, // No functionality added

        child: Icon(Icons.add),
      ),
    );
  }
}

// class PersonModel {
//   String? name;
//   PersonModel({this.name});

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is PersonModel &&
//           runtimeType == other.runtimeType &&
//           name == other.name;
//   @override
//   // TODO: implement hashCode
//   int get hashCode => name.hashCode;
//   PersonModel.fromJson(Map<String, dynamic> json) {
//     name = json["name"];
//   }
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     return data;
//   }

//   PersonModel copyWith({String? name}) {
//     return PersonModel(name: name ?? this.name);
//   }

//   @override
//   String toString() {
//     return "Person(firstName: $name)";
//   }
// }
