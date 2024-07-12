import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BmiScreen> {
  double number = 180;
  double weight = 80;
  double age = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 0, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Colors.yellow;
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        minimumSize: const Size(150, 50),
                      ),
                      icon: const Icon(
                        Icons.male,
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Male',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        minimumSize: const Size(150, 50),
                      ),
                      icon: const Icon(
                        Icons.female,
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Female',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(100)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Height',
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                '${number.round()}',
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Cm',
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
              
                          // const Slider(
              
                          //   value: 180,
                          //   min: 100,
                          //   max: 200,
                          //   onChanged: null,
              
                          // ),
                          Slider(
                            value: number,
                            min: 100,
                            max: 200,
                            onChanged: (height) {
                              setState(() {
                                number = height;
                                print(height);
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueGrey),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Weight',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                            const Text(
                              '64',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 42,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.remove)),
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.add))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueGrey),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Weight',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                            const Text(
                              '64',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 42,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.remove)),
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.add))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    minimumSize: const Size(150, 50),
                  ),
                  icon: const Icon(
                    Icons.calculate,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Calculate',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
