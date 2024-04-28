import 'package:flutter/material.dart';

class WeatherItem extends StatelessWidget {
  String time;
  IconData icon;
  String temp;
  bool isSelected;
  WeatherItem(
      {required this.time,
      required this.icon,
      required this.temp,
      required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 110,
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : Colors.white,
        border: isSelected ? null : Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(
        right: 15,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            time,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black87,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Icon(
            icon,
            size: 30,
            color: isSelected ? Colors.white : Colors.blue,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            temp,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: isSelected ? Colors.white : Colors.black),
          ),
        ],
      ),
    );
  }
}
