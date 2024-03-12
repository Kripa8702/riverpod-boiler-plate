import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String token;
  final String? gender;
  final String? image;
  final int? age;
  final String? phone;
  final Address? address;

  const UserModel({
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.token,
    this.gender,
    this.image,
    this.age,
    this.phone,
    this.address,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'],
        username: json['username'],
        email: json['email'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        token: json['token'],
        gender: json['gender'] ?? "",
        image: json['image'] ?? "",
        age: json['age'] ?? 0,
        phone: json['phone'] ?? "",
        address: Address.fromJson(json['address']),
      );

  factory UserModel.fromSignInResponse(Map<String, dynamic> json) => UserModel(
        id: json['id'],
        username: json['username'],
        email: json['email'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        token: json['token'],
        gender: json['gender'] ?? "",
        image: json['image'] ?? "",
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'email': email,
        'firstName': firstName,
        'lastName': lastName,
        'token': token,
        'gender': gender,
        'image': image,
        'age': age,
        'phone': phone,
        'address': address!.toJson(),
      };

  Map<String, dynamic> toSignInResponseJson() => {
        'id': id,
        'username': username,
        'email': email,
        'firstName': firstName,
        'lastName': lastName,
        'token': token
      };

  @override
  List<Object?> get props => [id, username, email, firstName, lastName, token];
}

class Address {
  final String address;
  final String city;
  final String postalCode;
  final String state;
  final Coordinates coordinates;

  const Address({
    required this.address,
    required this.city,
    required this.postalCode,
    required this.state,
    required this.coordinates,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        address: json['address'],
        city: json['city'],
        postalCode: json['postalCode'],
        state: json['state'],
        coordinates: Coordinates.fromJson(json['coordinates']),
      );

  Map<String, dynamic> toJson() => {
        'address': address,
        'city': city,
        'postalCode': postalCode,
        'state': state,
        'coordinates': coordinates.toJson(),
      };
}

class Coordinates {
  final double lat;
  final double lng;

  const Coordinates({
    required this.lat,
    required this.lng,
  });

  factory Coordinates.fromJson(Map<String, dynamic> json) => Coordinates(
        lat: json['lat'],
        lng: json['lng'],
      );

  Map<String, dynamic> toJson() => {
        'lat': lat,
        'lng': lng,
      };
}
