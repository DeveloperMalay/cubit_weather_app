// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Weather extends Equatable {
  final String description;
  final String icon;
  final double temp;
  final double tempMax;
  final double tempMin;
  final String name;
  final String country;
  final DateTime lastUpdated;
  Weather({
    required this.description,
    required this.icon,
    required this.temp,
    required this.tempMax,
    required this.tempMin,
    required this.name,
    required this.country,
    required this.lastUpdated,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    final weather = json['weather'][0];
    final main = json['main'];
    return Weather(
      description: weather['description'],
      icon: weather['icon'],
      temp: main['temp'],
      tempMax: main['temp_max'],
      tempMin: main['temp_min'],
      name: '',
      country: '',
      lastUpdated: DateTime.now(),
    );
  }

  factory Weather.inintial() => Weather(
      description: '',
      icon: '',
      temp: 100.0,
      tempMax: 100.0,
      tempMin: 100.0,
      name: '',
      country: '',
      lastUpdated: DateTime(1978));


      
  Weather copyWith({
    String? description,
    String? icon,
    double? temp,
    double? tempMax,
    double? tempMin,
    String? name,
    String? country,
    DateTime? lastUpdated,
  }) {
    return Weather(
      description: description ?? this.description,
      icon: icon ?? this.icon,
      temp: temp ?? this.temp,
      tempMax: tempMax ?? this.tempMax,
      tempMin: tempMin ?? this.tempMin,
      name: name ?? this.name,
      country: country ?? this.country,
      lastUpdated: lastUpdated ?? this.lastUpdated,
    );
  }

  @override
  List<Object?> get props =>
      [description, icon, temp, tempMax, tempMin, name, country, lastUpdated];
}
