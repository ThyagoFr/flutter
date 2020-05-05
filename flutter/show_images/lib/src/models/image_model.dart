class ImageModel {

  int _albumId;
  int _id;
  String _title;
  String _url;
  String _thumbnailUrl;
  
  ImageModel(this._albumId, this._id, this._title, this._url,
    this._thumbnailUrl);


  ImageModel.fromJson(Map<String,dynamic> parsedJson){
    this._albumId = parsedJson["albumId"];
    this._id = parsedJson['id'];
    this._title = parsedJson['title'];
    this._url = parsedJson['url'];
    this._thumbnailUrl = parsedJson['thumbnailUrl'];
  }

  String get url => _url;

  String get title => _title;

  int get id => _id;

  int get albumId => _albumId;

}