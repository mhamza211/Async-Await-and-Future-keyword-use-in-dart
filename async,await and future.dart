import 'dart:async';

void main() async {
  print('Fetching weather data...');

  try {
    String weatherData = await fetchWeatherData();
    print('Weather Details: $weatherData');
  } catch (e) {
    print('Error occurred: $e');
  }

  print('Program finished.');
}
Future<String> fetchWeatherData() async {
  await Future.delayed(Duration(seconds: 3)); 
  bool apiSuccess = true; 

  if (apiSuccess) {
    return 'Sunny, 25°C'; 
  } else {
    throw Exception('Failed to fetch weather data'); 
  }
}
