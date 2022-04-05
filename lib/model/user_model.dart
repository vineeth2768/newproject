class UserModel{
  int? id;
  String name;
  String email;
  String password;
  String conFormPass;
  UserModel(this.name,this.email,this.password,this.conFormPass);

  toUserMap(){
     return{
       "name" : name,
       "email" : email,
       "password" : password,
       "conformpassword" : conFormPass, 
       
     };
  }
  static fromMap(Map c){
    return UserModel(c["name"], c["email"], c["password"], c["conformpassword"]);
  }
}