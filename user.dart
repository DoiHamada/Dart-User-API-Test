class User{
  String gender,email,phone,cell,nat;

  Name name;
  Location location;
  Login login;
  Dob dob;
  Registered registered;
  Id id;
  Picture picture;
  //constructure
  User({this.gender,this.email,this.phone,this.cell,this.nat,this.name,
  this.location,this.login,this.dob,this.registered,this.id,this.picture});

  factory User.from(dynamic data){
    return User(
      gender: data["gender"],
      email: data["email"],
      phone: data["phone"],
      cell: data["cell"],
      nat: data["nat"],
      name: Name.from(data["name"]),
      location: Location.from(data["location"]),
      login: Login.from(data["login"]),
      dob: Dob.from(data["dob"]),
      registered: Registered.from(data["registered"]),
      id: Id.from(data["id"]),
      picture: Picture.from(data["picture"]),
    );
  }
}
class Name{
  String title,first,last;
  Name({this.title,this.first,this.last});
  factory Name.from(dynamic data){
    return Name(
      title: data["title"],
      first: data["first"],
      last: data["last"]
    );
  }
}
class Location{

  String city,state,country,postcode;
  Street street;
  Coordinates coordinates;
  Timezone timezone;

  Location({this.city,this.state,this.country,this.postcode,this.street,
  this.coordinates,this.timezone});

  factory Location.from(dynamic data){
    var pcode = ""; // Some of postcode from api are int type and some are String type.
    if(data["postcode"] is int){  
      pcode = data["postcode"].toString();
    }else{
      pcode = data["postcode"];
    };
    return Location(
      city: data["city"],
      state: data["state"],
      country: data["country"],
      postcode: pcode,
      street: Street.from(data["street"]),
      coordinates: Coordinates.from(data["coordinates"]),
      timezone: Timezone.from(data["timezone"])
    );
  }
}
class Street{
  int number;
  String name;
  Street({this.name,this.number});
  factory Street.from(dynamic data){
    return Street(
      number: data["number"],
      name: data["name"]
    );
  }
}
class Coordinates{
  String latitude,longitude;
  Coordinates({this.latitude,this.longitude});
  factory Coordinates.from(dynamic data){
    return Coordinates(
      latitude: data["latitude"],
      longitude: data["longitude"]
    );
  }
}
class Timezone{
  String offset,description;
  Timezone({this.offset,this.description});
  factory Timezone.from(dynamic data){
    return Timezone(
      offset: data["offset"],
      description: data["description"],
    );
  }
}
class Login{
  String uuid,username,password,salt,md5,sha1,sha256;
  Login({this.uuid,this.username,this.password,this.salt,this.md5,this.sha1,this.sha256});
  factory Login.from(dynamic data){
    return Login(
      uuid: data["uuid"],
      username: data["username"],
      password: data["password"],
      salt: data["salt"],
      md5: data["md5"],
      sha1: data["sha1"],
      sha256: data["sha256"]
    );
  }
}
class Dob{
  String date;
  int age;
  Dob({this.date,this.age});
  factory Dob.from(dynamic data){
    return Dob(
      date: data["date"],
      age: data["age"]
    );
  }
}
class Registered{
  String date;
  int age;
  Registered({this.date,this.age});
  factory Registered.from(dynamic data){
    return Registered(
      date: data["date"],
      age: data["age"]
    );
  }
}
class Id{
  String name,value;
  Id({this.name,this.value});
  factory Id.from(dynamic data){
    return Id(
      name: data["name"],
      value: data["value"]);
  }
}
class Picture{
  String large,medium,thumbnail;
  Picture({this.large,this.medium,this.thumbnail});
  factory Picture.from(dynamic data){
    return Picture(
      large: data["large"],
      medium: data["medium"],
      thumbnail: data["thumbnail"]
    );
  }
}