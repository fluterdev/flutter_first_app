import 'package:flutter/material.dart';
import 'package:new_app/screens/homepage.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
        centerTitle: true,
        //action property gives trailing widgets for appbar
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        //single child scroll view makes the child scrollable
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          // padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
          // padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          // padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Flutter Different Buttons Widgets",
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print("I am Elevated Button. Pressed");
                },
                child: const Text("Elevated Button"),
              ),
              const SizedBox(height: 20),
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: () {
                  print("I am Text Button. Pressed");
                },
                child: const Text("Text Button"),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  //outline button border color
                  side: const BorderSide(color: Colors.red),
                ),
                onPressed: () {
                  print("I am Outlined Button. Pressed");
                },
                child: const Text("Outlined Button"),
              ),
              const SizedBox(height: 20),
              MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  print("I am Material Button. Pressed");
                },
                child: const Text("Material Button"),
              ),
              const SizedBox(height: 20),
              const Divider(thickness: 2),
              const SizedBox(height: 20),
              const Text(
                "Flutter Buttons with full width",
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  //for full width button and given height
                  minimumSize: const Size.fromHeight(44),
                  //changing shape of button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //for shadow
                  elevation: 8,
                  //button color
                  primary: Colors.green,
                  //button text color
                  onPrimary: Colors.white,
                ),
                onPressed: () {
                  print("I am Elevated Button. Pressed");
                },
                child: const Text("Elevated Button"),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Another full width button'),
                ),
              ),
              const SizedBox(height: 20),
              const Divider(thickness: 2),
              const SizedBox(height: 20),
              const Text(
                "Tapping Different Widget",
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  GestureDetector(
                    onDoubleTap: () {
                      print("Double tapped gesture detector");
                    },
                    onTap: () {
                      print("Circle Avatar Widget is Pressed with gesture detector");
                    },
                    child: const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('images/facebook.png'),
                    ),
                  ),
                  const SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      print("Circle Avatar Widget is Pressed with Inkwell");
                    },
                    child: const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('images/twitter.png'),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      print('I am pressed. I am Text Widget');
                    },
                    child: const Text("Tap Me"),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Divider(thickness: 2),
              const SizedBox(height: 20),
              const Text(
                "Container Widget with margin and padding",
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.all(30),
                padding: const EdgeInsets.all(30),
                // color: Colors.red,
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                  // gradient: const LinearGradient(
                  //   begin: Alignment.centerLeft,
                  //   end: Alignment.centerRight,
                  //   colors: [Colors.lightBlueAccent, Colors.blue],
                  // ),
                  // boxShadow: const <BoxShadow>[
                  //   BoxShadow(
                  //     color: Colors.red,
                  //     blurRadius: 2,
                  //     spreadRadius: 3,
                  //     // offset: Offset(4, 4),
                  //   ),
                  // ],
                ),
                // alignment: Alignment.center,
                child: Container(
                  color: Colors.teal,
                  child: const Text(
                    "I am Container",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyHomePage(),
                      ),
                    );
                  },
                  child: const Text('Go To MyHomePage'),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
                image: DecorationImage(
                  image: AssetImage('images/test_image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/facebook.png'),
              ),
              // currentAccountPictureSize: Size(50, 50),
              accountName: Text('Your Name'),
              accountEmail: Text("your.email@yahoo.com"),
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
            ),
            Divider(thickness: 1),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
            ),
            Divider(thickness: 1),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Rate us'),
            ),
            Divider(thickness: 1),
          ],
        ),
      ),
    );
  }
}
