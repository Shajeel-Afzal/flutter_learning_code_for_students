import 'dart:convert';
import 'dart:io';

import 'package:erozgaar_app/weather_app_demo/WeatherInfoModel.dart';
import 'package:http/http.dart' as http;

class WeatherAPIService{


  Future<WeatherInfoModel> fetchWatherInformation() async{
    final response = await http.get("https://samples.openweathermap.org/data/2.5/weather?q=Lahore,pk&appid=b6907d289e10d714a6e88b30761fae22");

    if(response.statusCode == 200){
      // TODO get weather information. The request was successful

      final body = response.body;

      final weatherModel = WeatherInfoModel.fromJson(json.decode(body));

      print(weatherModel);

      return weatherModel;

    } else{
      // Error
    }

    print(response);
  }

}
