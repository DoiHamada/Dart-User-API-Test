class Post{
  int userId,id;
  String title;

  Post({this.userId,this.id,this.title});

  factory Post.from(dynamic rawData){
    return Post(
      userId: rawData["userId"],
      id: rawData["id"],
      title: rawData["title"],
    );
  }
}