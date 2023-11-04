import 'package:equatable/equatable.dart';
import 'package:rugram/domain/models/location.dart';

class UserFull extends Equatable {
  /// Autogenerated
  final String id;

  /// "mr", "ms", "mrs", "miss", "dr", ""
  final String title;
  final String firstName;
  final String lastName;

  /// "male", "female", "other", ""
  final String gender;
  final String email;
  final DateTime dateOfBirth;
  final String registerDate;
  final String phone;

  ///url
  final String picture;
  final Location location;

  const UserFull({
    required this.id,
    required this.title,
    required this.firstName,
    required this.lastName,
    required this.picture,
    required this.gender,
    required this.email,
    required this.dateOfBirth,
    required this.registerDate,
    required this.phone,
    required this.location,
  });

  @override
  List<Object?> get props =>
      [id,
        title,
        firstName,
        lastName,
        picture,
        gender,
        email,
        dateOfBirth,
        registerDate,
        phone,
        location,
      ];
}
