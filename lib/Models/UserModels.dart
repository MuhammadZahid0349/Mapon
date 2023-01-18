class UserModel {
  String? uid;
  String? userEmail;
  String? userPassword;
  String? userName;
  String? userAge;
  String? userOccupation;
  String? userLocation;
  String? userPicture;
  String? gender;
  String? tableNumber;
  String? event;
  String? guestNumber;

  UserModel(
      {this.uid,
      this.userEmail,
      this.userPassword,
      this.userName,
      this.userAge,
      this.userOccupation,
      this.userLocation,
      this.userPicture,
      this.gender,
      this.event,
      this.tableNumber,
      this.guestNumber});

  UserModel.fromMap(map) {
    gender = map["gender"];
    userEmail = map["userEmail"];
    uid = map["uid"];
    userPassword = map["userPassword"];
    userName = map["userName"];
    userAge = map["userAge"];
    userOccupation = map["userOccupation"];
    userLocation = map["userLocation"];
    userPicture = map["userPicture"];
    tableNumber = map["tableNumber"];
    guestNumber = map["guestNumber"];
    event = map["event"];
  }
  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "userName": userName,
      "userEmail": userEmail,
      "userPassword": userPassword,
      "userAge": userAge,
      "userOccupation": userOccupation,
      "userLocation": userLocation,
      "userPicture": userPicture,
      "gender": gender,
      "event": event,
      "tableNumber": tableNumber,
      "guestNumber": guestNumber,
    };
  }
}
