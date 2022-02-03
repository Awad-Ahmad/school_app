import 'package:cloud_firestore/cloud_firestore.dart';

class MyUsers {
  final String firstName;
  final String email;
  final String lastName;
  final String phoneNumber;
  final String password;
  final String type;

  MyUsers(this.firstName, this.email, this.lastName, this.phoneNumber,
      this.password, this.type);

  // factory Users.fromDocument(DocumentSnapshot document) {
  //   return Users(
  //     document['userName'],
  //     document['email'],
  //     document['name'],
  //     document['phoneNumber'],
  //     document['profilePictureUrl'],
  //    document['profilePictureUrl'],
  //   );
  // }
}
