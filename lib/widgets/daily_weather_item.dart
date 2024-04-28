import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_ui/utils/string_extensions.dart';

class DailyWeatherItem extends StatelessWidget {
  IconData icon;
  String day;
  String date;
  String month;
  String temp;
  String feelsLike;
  bool isSun;
  DailyWeatherItem({
    required this.icon,
    required this.day,
    required this.date,
    required this.month,
    required this.temp,
    required this.feelsLike,
    required this.isSun,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: isSun ? Colors.amber.shade500 : Colors.white,
                size: 35,
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                "${day.capitalize()},",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                date,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                month.capitalize(),
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                temp,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "/",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "$feelsLike°",
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
