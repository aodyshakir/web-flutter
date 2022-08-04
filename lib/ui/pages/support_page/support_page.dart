import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webflutter/ui/shared/center_widget.dart';
import '../../shared/nav_bar.dart';

class SupportPage extends StatelessWidget {
  static const routeName = '/SuppotPage';
  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return Scaffold(
      appBar: deviceType == DeviceScreenType.mobile ? AppBar() : null,
      drawer: deviceType == DeviceScreenType.mobile
          ? Drawer(
              child: Container(color: Colors.red),
            )
          : null,
      body: ScreenTypeLayout(
        mobile: Container(
            child: Column(
          children: [
            CenterdedWidget(
              child: Text('support Page'),
            ),
          ],
        )),
        tablet: Container(
          child: Column(
            children: <Widget>[
              NavBarWidget(),
              CenterdedWidget(
                child: Text('support Page'),
              ),
            ],
          ),
        ),
        desktop: Container(
          child: Column(
            children: <Widget>[
              NavBarWidget(),
              CenterdedWidget(
                child: Text('support Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// map of poeple of details



// class of people
class Person {
  String name;
  int age;
  double height;
  double weight;
  bool isMarried;
  List<String> children;
  Map<String, String> address;

  Person({
    required this.name,
    required this.age,
    required this.height,
    required this.weight,
    required this.isMarried,
    required this.children,
    required this.address,
  });
}

// convert list of people to list of person
List<Person> _peopleList = [
  Person(
    name: 'John',
    age: 30,
    height: 1.8,
    weight: 80,
    isMarried: false,
    children: ['John', 'Jane', 'Mary'],
    address: {
      'street': '123 Main St',
      'city': 'New York',
      'state': 'NY',
      'zip': '10001',
    },
  ),
  Person(
    name: 'Jane',
    age: 25,
    height: 1.6,
    weight: 60,
    isMarried: true,
    children: ['John', 'Jane', 'Mary'],
    address: {
      'street': '456 Main St',
      'city': 'New York',
      'state': 'NY',
      'zip': '10001',
    },
  ),
];

// print list of people with details
void printPeopleDetails() {
  for (var person in _peopleList) {
    print(person.name);
    print(person.age);
    print(person.height);
    print(person.weight);
    print(person.isMarried);
    print(person.children);
    print(person.address);
  }
}

// print list of each child of each person
void printChildren() {
  for (var person in _peopleList) {
    print(person.name);
    for (var child in person.children) {
      print(child);
    }
    for (var value in person.address.values) {
      print(value);
    }
  }
}
