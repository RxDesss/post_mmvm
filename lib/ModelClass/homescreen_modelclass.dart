class HomescreenModelclass {
  int? code;
  int? status;
  List<Data>? data;

  HomescreenModelclass({this.code, this.status, this.data});

  HomescreenModelclass.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? userId;
  String? username;
  String? profilePic;
  String? emailId;
  String? logintype;
  String? verify;

  Data(
      {this.userId,
      this.username,
      this.profilePic,
      this.emailId,
      this.logintype,
      this.verify});

  Data.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    username = json['username'];
    profilePic = json['profile_pic'];
    emailId = json['email_id'];
    logintype = json['logintype'];
    verify = json['verify'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['username'] = this.username;
    data['profile_pic'] = this.profilePic;
    data['email_id'] = this.emailId;
    data['logintype'] = this.logintype;
    data['verify'] = this.verify;
    return data;
  }
}
