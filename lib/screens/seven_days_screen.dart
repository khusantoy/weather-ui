import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_ui/utils/string_extensions.dart';
import 'package:weather_ui/widgets/daily_weather_item.dart';

class SevenDaysScreen extends StatelessWidget {
  List<Map<String, dynamic>> data = [
    {
      "icon": CupertinoIcons.sun_min_fill,
      "day": "monday",
      "date": "3",
      "month": "oct",
      "temp": "32",
      "feels_like": "31",
      "isSun": true
    },
    {
      "icon": CupertinoIcons.cloud_rain_fill,
      "day": "tuesday",
      "date": "4",
      "month": "oct",
      "temp": "22",
      "feels_like": "23",
      "isSun": false
    },
    {
      "icon": CupertinoIcons.sun_min_fill,
      "day": "wednesday",
      "date": "5",
      "month": "oct",
      "temp": "30",
      "feels_like": "31",
      "isSun": true
    },
    {
      "icon": CupertinoIcons.cloud_fill,
      "day": "thursday",
      "date": "6",
      "month": "oct",
      "temp": "24",
      "feels_like": "26",
      "isSun": false
    },
    {
      "icon": CupertinoIcons.cloud_sun_fill,
      "day": "friday",
      "date": "7",
      "month": "oct",
      "temp": "26",
      "feels_like": "27",
      "isSun": false
    },
    {
      "icon": CupertinoIcons.cloud_sun_fill,
      "day": "saturday",
      "date": "8",
      "month": "oct",
      "temp": "27",
      "feels_like": "28",
      "isSun": false
    },
    {
      "icon": CupertinoIcons.cloud_rain_fill,
      "day": "sunday",
      "date": "9",
      "month": "oct",
      "temp": "22",
      "feels_like": "23",
      "isSun": false
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          leadingWidth: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.back,
                color: Colors.white,
              ),
            ),
          ),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bandung,",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Indonesia",
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Next 7 days".capitalize(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              for (var item in data)
                DailyWeatherItem(
                  icon: item['icon'],
                  day: item['day'],
                  date: item['date'],
                  month: item['month'],
                  temp: item['temp'],
                  feelsLike: item['feels_like'],
                  isSun: item['isSun'],
                )
            ],
          ),
        ),
      ),
    );
  }
}
