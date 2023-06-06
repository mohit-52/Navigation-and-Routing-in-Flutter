import 'package:flutter/material.dart';
import 'package:navigation_and_routing/Utils/routes_names.dart';

class ScreenTwo extends StatelessWidget {
  dynamic data;
   ScreenTwo({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text(data['name'].toString(), style: TextStyle(color: Colors.red, fontSize: 50),)),
            InkWell(
              onTap: (){
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ScreenThree(),),);

                Navigator.pushNamed(context, RouteName.screenThree);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.indigoAccent
                ),
                child: Center(child: Text("Screen 3"),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
