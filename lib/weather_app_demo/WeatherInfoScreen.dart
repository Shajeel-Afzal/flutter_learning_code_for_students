import 'package:erozgaar_app/apis/WeatherAPIService.dart';
import 'package:erozgaar_app/weather_app_demo/WeatherInfoModel.dart';
import 'package:flutter/material.dart';

class WeatherInfoScreen extends StatefulWidget {
  @override
  _WeatherInfoScreenState createState() => _WeatherInfoScreenState();
}

class _WeatherInfoScreenState extends State<WeatherInfoScreen> {
  WeatherInfoModel _weatherInfoModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather Information"),
      ),
      body: FutureBuilder(
        future: WeatherAPIService().fetchWatherInformation(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Text("Error getting the info.");
          }

          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
              break;
            default:

              _weatherInfoModel = snapshot.data;

              return ListView(
                children: <Widget>[
                  ListTile(
                    title: Text("Location"),
                    subtitle: Text(
                      _weatherInfoModel.name,
                    ),
                  ),
                  ListTile(
                    title: Text("Temperature"),
                    subtitle: Text(
                      _weatherInfoModel.main.temp.toString(),
                    ),
                  ),
                  ListTile(
                    title: Text("Pressure"),
                    subtitle: Text(_weatherInfoModel.main.pressure.toString(),),
                  ),
                  ListTile(
                    title: Text("Humidity"),
                    subtitle: Text(_weatherInfoModel.main.humidity.toString(),),
                  ),
                  ListTile(
                    title: Text("Temp Min"),
                    subtitle: Text(_weatherInfoModel.main.tempMin.toString(),),
                  ),
                  ListTile(
                    title: Text("Temp Max"),
                    subtitle: Text(_weatherInfoModel.main.tempMax.toString(),),
                  )
                ],
              );
          }
        },
      ),
    );
  }
}
