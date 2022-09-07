import 'package:container/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<MainProvider>(
                  builder: (context, value, child) {
                    return Container(
                      height:150.0,
                      decoration: BoxDecoration(
                        color: value.color1,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 15),
                Container(
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(height: 15),
                Consumer<MainProvider>(
                  builder: (context, value, child) {
                    return Container(
                      height:150.0,
                      decoration: BoxDecoration(
                          color: value.color2,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Provider.of<MainProvider>(context, listen: false)
                            .changeColors();
                      },
                      color: Colors.black,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: const Text(
                        'Change Colors',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Provider.of<MainProvider>(context, listen: false)
                            .resetColors();
                      },
                      height: MediaQuery.of(context).size.height * 0.08,
                      color: Colors.black,
                      child: const Text(
                        'Reset Colors',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
