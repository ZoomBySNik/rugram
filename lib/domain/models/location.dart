import 'package:equatable/equatable.dart';

class Location extends Equatable {
  final String street;
  final String city;
  final String state;
  final String country;

  /// Valid timezone value ex. +7:00, -1:00
  final String timezone;

  const Location({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.timezone,
  });

  @override
  List<Object?> get props => [
        street,
        city,
        state,
        country,
        timezone,
      ];
}
