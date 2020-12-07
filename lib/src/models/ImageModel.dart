class ImageModel{
  int id;
  String url;
  String title;

  // ImageModel(int id,String url,String title){
  //   this.id = id;
  //   this.url = url;
  //   this.title = title;
  // }

  //This can be written as
  ImageModel(this.id,this.url,this.title);

  ImageModel.fromJson(parseJson){
    this.id = parseJson['id'];
    this.url = parseJson['url'];
    this.title = parseJson['title'];
  }
}