
class UserModel {
  String firstname;
  String lastname;
  String email;
  String adhaar;
  String gst;
  String pan;
  String firm;
  String phone;
  UserModel({
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.adhaar,
    required this.gst,
    required this.pan,
    required this.firm,
    required this.phone,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        firstname: json[""],
        lastname: json[""],
        email: json[""],
        adhaar: json[""],
        gst: json[""],
        pan: json[""],
        firm: json[""],
        phone: json[""],
      );
}
