class News {
  String _title;
  String _description;
  String _news;
  String _image;

  News({String title, String news, String description, String image}) {
    this._title = title;
    this._description = description;
    this._news = news;
    this._image = image;
  }

  String get title => _title;

  String get description => _description;

  String get news => _news;

  String get image => _image;
}
