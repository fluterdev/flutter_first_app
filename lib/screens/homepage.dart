import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(title: const Text('First Flutter App')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go Back'),
          ),
          const SizedBox(height: 20),
          //Column Demo
          const Text(
            "Column Widget Demo ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            color: Colors.white,
            height: 200,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text('I am under Column'),
                Text('I am under Column'),
                Text('I am under Column'),
              ],
            ),
          ),
          const SizedBox(height: 20),
          //Row Demo
          const Text(
            "Row Widget Demo ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 100,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text('I am under Row'),
                Text('I am under Row'),
                Text('I am under Row'),
                // Text('I am under Row'),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Stack Demo
          const Text(
            "Stack Widget Demo ",
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Stack(
            // alignment: Alignment.center,
            children: [
              Image.asset('images/test_image.jpg'),
              const Text(
                "I am at stack top",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Positioned(
                left: 0,
                right: 0,
                bottom: 10,
                child: Center(
                    child: Text(
                  'I am with position widget',
                  style: TextStyle(color: Colors.white),
                )),
              )
            ],
          ),
          const SizedBox(height: 20),

          //More about images
          const Text(
            "Image Widget Demo ",
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('images/test_image.jpg'),
          ),
          // Image.network('')
          const SizedBox(height: 20),
          const Text(
            "Expanded Widgets on Row",
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          _buildProfileCard(),
          const SizedBox(height: 20),
          //
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          //   child: const Text('Go Back'),
          // ),

          //  more about container
          //   Container(
          //     width: double.infinity,
          //     padding: const EdgeInsets.all(10),
          //     margin: const EdgeInsets.only(top: 10),
          //     decoration: BoxDecoration(
          //       color: Colors.lightBlue,
          //       borderRadius: BorderRadius.circular(10),
          //       // gradient: const LinearGradient(
          //       //   begin: Alignment.centerLeft,
          //       //   end: Alignment.centerRight,
          //       //   colors: [Colors.lightBlueAccent, Colors.blue],
          //       // ),
          //       // boxShadow: const <BoxShadow>[
          //       //   BoxShadow(
          //       //     color: Colors.red,
          //       //     blurRadius: 2,
          //       //     spreadRadius: 3,
          //       //     // offset: Offset(4, 4),
          //       //   ),
          //       // ],
          //     ),
          //     child: const Text(
          //       'I am Lorem Ipsum. I am doing my bachelor degree in . I love playing football.I am Lorem Ipsum. I am doing my'
          //           ' bachelor degree in .I love playing football.',
          //       // textAlign: TextAlign.center,
          //       style: TextStyle(color: Colors.black54, fontSize: 18),
          //     ),
          //   )
        ],
      ),
    );
  }

  Widget _buildProfileCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
      elevation: 6,
      color: Colors.white54,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/test_image.jpg'),
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                "@johndoe",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),

            const SizedBox(height: 10),
            //for name
            const Text('Full Name'),
            const SizedBox(height: 6),
            const Text(
              'John Doe',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            const Divider(color: Colors.black54),
            const SizedBox(height: 10),
            //for email
            const Text('Email'),
            const SizedBox(height: 6),
            const Text(
              'john.doe@gmail.com',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            const Divider(color: Colors.red),
            const SizedBox(height: 10),
            //for phone
            const Text('Phone'),
            const SizedBox(height: 6),
            const Text(
              '9860123456',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            const Divider(color: Colors.black54),
            const SizedBox(height: 10),

            //for Address
            const Text('Address'),
            const SizedBox(height: 6),
            const Text(
              'Kathmandu Nepal',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            const Divider(color: Colors.black54),
            const SizedBox(height: 10),

            const Center(
              child: Text(
                'Connect With Me',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'images/facebook.png',
                  height: 40,
                ),
                Image.asset(
                  'images/instagram.png',
                  height: 40,
                ),
                Image.asset(
                  'images/twitter.png',
                  height: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
