import 'package:flutter/material.dart';

import '../screens/settings_screen.dart';

class MyCustomDrawer extends StatelessWidget {
  const MyCustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      elevation: 10,
      backgroundColor: Theme.of(context).colorScheme.secondary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30,),
              // drawer header logo
              Padding(
                padding: const EdgeInsets.only(top: 50.0,left: 25.0,right: 25.0,bottom: 10.0),
                child: Container(
                  color: Theme.of(context).colorScheme.secondary,
                  child: Center(
                    child: Image.asset(
                      "assets/images/logo.png",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              // home
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 0.0),
                child: ListTile(
                  title: Text(
                    "H O M E",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),

                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),

              // about
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10.0),
                child: ListTile(
                  title: Text(
                    "S E T T I N G S",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),

                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsScreen()),
                    );
                  },
                ),
              ),
            ],
          ),

          // logout
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 20),
            child: ListTile(
              title: Text(
                "L O G O U T",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              onTap: (){},
            ),
          ),
        ],
      ),
    );
  }
}
