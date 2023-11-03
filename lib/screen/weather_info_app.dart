import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherInfoMainScreen extends StatefulWidget {
  const WeatherInfoMainScreen({super.key});

  @override
  State<WeatherInfoMainScreen> createState() => _WeatherInfoMainScreenState();
}

class _WeatherInfoMainScreenState extends State<WeatherInfoMainScreen> {

  List<Map<String, dynamic>> weatherData = [

    {

      "city": "New York",

      "temperature": 20,

      "condition": "Clear",

      "humidity": 60,

      "windSpeed": 5.5

    },

    {

      "city": "Los Angeles",

      "temperature": 25,

      "condition": "Sunny",

      "humidity": 50,

      "windSpeed": 6.8

    },

    {

      "city": "London",

      "temperature": 15,

      "condition": "Partly Cloudy",

      "humidity": 70,

      "windSpeed": 4.2

    },

    {

      "city": "Tokyo",

      "temperature": 28,

      "condition": "Rainy",

      "humidity": 75,

      "windSpeed": 8.0

    },

    {

      "city": "Sydney",

      "temperature": 22,

      "condition": "Cloudy",

      "humidity": 55,

      "windSpeed": 7.3

    }

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather Info App"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: weatherData.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "City: ${weatherData[index]['city']}",
                              style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),
                            ),
                            Text("Temperature: ${weatherData[index]["temperature"]}°C",style: TextStyle(fontSize: 21,color: Colors.grey.shade600),),
                            Text("Condition: ${weatherData[index]["condition"]}",style: TextStyle(fontSize: 21,color: Colors.grey.shade600)),
                            Text("Humidity: ${weatherData[index]["humidity"]}%",style: TextStyle(fontSize: 21,color: Colors.grey.shade600)),
                            Text("Wind Speed: ${weatherData[index]["windSpeed"]} m/s",style: TextStyle(fontSize: 21,color: Colors.grey.shade600)),
                          ],
                        ),
                      ),
                    ),
                  );

                }),
          )
        ],
      ),
    );
  }
}
