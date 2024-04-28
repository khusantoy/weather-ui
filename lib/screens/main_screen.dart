import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_ui/utils/string_extensions.dart';
import 'package:weather_ui/widgets/weather_item.dart';

class MainScreen extends StatelessWidget {
  List<Map<String, dynamic>> data = [
    {
      "time": "12:00",
      "icon": CupertinoIcons.cloud_fill,
      "temp": "Now",
      "isSelected": true
    },
    {
      "time": "14:00",
      "icon": CupertinoIcons.cloud_rain_fill,
      "temp": "22°",
      "isSelected": false
    },
    {
      "time": "16:00",
      "icon": CupertinoIcons.cloud_sun_fill,
      "temp": "26°",
      "isSelected": false
    },
    {
      "time": "18:00",
      "icon": CupertinoIcons.sun_min_fill,
      "temp": "31°",
      "isSelected": false
    },
    {
      "time": "20:00",
      "icon": CupertinoIcons.cloud_sun_fill,
      "temp": "25°",
      "isSelected": false
    },
    {
      "time": "22:00",
      "icon": CupertinoIcons.cloud_fill,
      "temp": "20°",
      "isSelected": false
    },
    {
      "time": "12:00",
      "icon": CupertinoIcons.cloud_fill,
      "temp": "23°",
      "isSelected": false
    }
  ];

  int count = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.ellipsis,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(
            20,
          ),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "Bandung,",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Indonesia",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 350,
                height: 460,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Icon(
                      CupertinoIcons.cloud_sun_fill,
                      size: 80,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Heavy rain".capitalize(),
                      style: const TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Sunday, 02 Oct",
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "24°",
                      style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 175,
                          height: 60,
                          decoration: const BoxDecoration(
                            border: Border(
                              top: BorderSide(color: Colors.white54),
                            ),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Icon(
                                    CupertinoIcons.wind,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Wind".toUpperCase(),
                                    style: const TextStyle(
                                      color: Colors.white70,
                                    ),
                                  ),
                                  const Text(
                                    "19.2km/j",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 175,
                          height: 60,
                          //  border: Border(top: BorderSide(width: 16.0, color: Colors.lightBlue.shade50),
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Colors.white54),
                                left: BorderSide(color: Colors.white54)),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Icon(
                                    CupertinoIcons.thermometer,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "feels like".toUpperCase(),
                                    style: const TextStyle(
                                      color: Colors.white70,
                                    ),
                                  ),
                                  const Text(
                                    "25°",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 175,
                          height: 60,
                          decoration: const BoxDecoration(
                            border: Border(
                              top: BorderSide(color: Colors.white54),
                            ),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Icon(
                                    CupertinoIcons.sun_max,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Index uv".toUpperCase(),
                                    style: const TextStyle(
                                      color: Colors.white70,
                                    ),
                                  ),
                                  const Text(
                                    "2",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 175,
                          height: 60,
                          //  border: Border(top: BorderSide(width: 16.0, color: Colors.lightBlue.shade50),
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Colors.white54),
                                left: BorderSide(color: Colors.white54)),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Icon(
                                    CupertinoIcons.graph_square,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "pressure".toUpperCase(),
                                    style: const TextStyle(
                                      color: Colors.white70,
                                    ),
                                  ),
                                  const Text(
                                    "1014 mbar",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                children: [
                  Text(
                    "Today",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 168,
                  ),
                  Text(
                    "Next 7 Days",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black54),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(CupertinoIcons.right_chevron),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var item in data)
                      WeatherItem(
                        time: item['time'],
                        icon: item['icon'],
                        temp: item['temp'],
                        isSelected: item['isSelected'],
                      )
                  ],
                ),
              )
            ],
          ),
        ),
        drawer: const Drawer(),
      ),
    );
  }
}
