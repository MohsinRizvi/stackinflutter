import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_navigation_2_0/theme.dart';
import 'package:provider/provider.dart';

import 'navigation_manager.dart';
import 'route_path.dart';

class LanderScreen extends StatefulWidget {
  LanderScreen({Key key}) : super(key: key);

  @override
  _MyLanderScreenState createState() => _MyLanderScreenState();
}

class _MyLanderScreenState extends State<LanderScreen> {
  @override
  void initState() {
    super.initState();
  }
bool ispassshow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
     
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              ClipPath(
                  clipper: WaveClipperTwo(),
                  child: Container(
                    height: 250,
                    color: MyColors.primaryColor,
                    child: Center(
                        child: Text(
                      "ITSolution 24x7",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              

                SizedBox(
                  height: 40,
                ),
                SafeArea(
                    child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          elevation: 6.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            onEditingComplete: () =>
                                FocusScope.of(context).nextFocus(),
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 14),
                              prefixIcon: Icon(
                                Icons.email,
                                color: MyColors.primaryColor,
                              ),
                              border: InputBorder.none,
                              hintText: "Enter the Email ",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Material(
                          elevation: 6.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          child: TextField(
                            obscureText: !ispassshow,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.done,
                            onEditingComplete: () =>
                                FocusScope.of(context).unfocus(),
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 14),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: MyColors.primaryColor,
                              ),
                              border: InputBorder.none,
                              suffixIcon: IconButton(
                                icon: Icon(ispassshow
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    ispassshow = !ispassshow;
                                  });
                                },
                              ),
                              hintText: "Enter the Password ",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                 
                          },
                          child: Container(
                              padding:
                                  const EdgeInsets.only(top: 30, right: 16.0),
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Forgot your password?",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                onPressed: () {
                  Provider.of<NavigationManager>(context, listen: false).push(RoutePath.details('Show'));
                },
                child: Text(
                  'Login',
                  textScaleFactor: 2,
                )),
                     
                      
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: Text("Sync",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        // color: Color(0xFF5d74e3),
                                        fontSize: 20,
                                        fontFamily: "Poppins-Bold")),
                              )
                            ])
                      ],
                    ),
                  ),
                )),
              ],
            ),
          ),
        ),
    );
  }
}