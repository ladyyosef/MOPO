class ShowAccount {
  String userName;
  String email;
  String password;
  String phone;
  String profileImage;

  ShowAccount({
    required this.userName,
    required this.email,
    required this.password,
    required this.phone,
    required this.profileImage,
  });

  factory ShowAccount.fromJson(Map<String, dynamic> json) {
    return ShowAccount(
      userName: json['user_name'],
      email: json['email'],
      password: json['password'],
      phone: json['phone'],
      profileImage: json['Profile_image'],
    );
  }
}




class ShowUser {
  String fullName;
  String email;
  String phone;
  String profileImage;

  ShowUser({
    required this.fullName,
    required this.email,
    required this.phone,
    required this.profileImage,
  });

  factory ShowUser.fromJson(Map<String, dynamic> json) {
    return ShowUser(
      fullName: json['Full_name'],
      email: json['email'],
      phone: json['phone'],
      profileImage: json['Profile_image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Full_name': fullName,
      'email': email,
      'phone': phone,
      'Profile_image': profileImage,
    };
  }
}
class Card {
  int cardNumber;
  String holderName;
  int cvc;
  String cardImage;
  DateTime expireDate;

  Card({
    required this.cardNumber,
    required this.holderName,
    required this.cvc,
    required this.cardImage,
    required this.expireDate,
  });

  factory Card.fromJson(Map<String, dynamic> json) {
    return Card(
      cardNumber: json['Card_number'],
      holderName: json['Holder_Name'],
      cvc: json['Cvc'],
      cardImage: json['Card_image'],
      expireDate: DateTime.parse(json['Expire_Date']),
    );
  }
}
class Wallet {
  int quantity;

  Wallet({required this.quantity});

  factory Wallet.fromJson(Map<String, dynamic> json) {
    return Wallet(
      quantity: json['Quantity'],
    );
  }
}
class Trade {
  final int price;
  final int quantity;

  Trade({required this.price, required this.quantity});

  factory Trade.fromJson(Map<String, dynamic> json) {
    return Trade(
      price: json['data']['price'],
      quantity: json['data']['quantity'],
    );
  }
}
class CurrencyData {
  int id;
  String logo;
  String currencyName;
  String abbreviation;
  double newPrice;
  double oldPrice;
  double percentage;

  CurrencyData({
    required this.id,
    required this.logo,
    required this.currencyName,
    required this.abbreviation,
    required this.newPrice,
    required this.oldPrice,
    required this.percentage,
  });

  factory CurrencyData.fromJson(Map<String, dynamic> json) {
    return CurrencyData(
      id: json['id'],
      logo: json['logo'],
      currencyName: json['Currency_name'],
      abbreviation: json['Abbrevation'],
      newPrice: json['new_price'].toDouble(),
      oldPrice: json['old_price'].toDouble(),
      percentage: json['percentage'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'logo': logo,
      'Currency_name': currencyName,
      'Abbrevation': abbreviation,
      'new_price': newPrice,
      'old_price': oldPrice,
      'percentage': percentage,
    };
  }
}
