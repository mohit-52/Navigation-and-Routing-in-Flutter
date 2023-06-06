import 'package:flutter/material.dart';
import 'package:navigation_and_routing/Utils/routes_names.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation And Routing"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ScreenTwo(name: "Mohit",)));

                // Navigator.pushNamed(context, ScreenTwo.id,
                // arguments: {
                //   'name' : 'Mohit Sharma',
                //   'age' : 20,
                //
                // });

                  Navigator.pushNamed(context, RouteName.screenTwo, arguments:  {
                  'name': 'Mohit Sharma',
                  'age': 20,
                });
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.grey),
                child: Center(
                  child: Text("Screen 2"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
