class Report {
  int id = 100;
  double longitude;
  double latitude;
  String type;
  String urlToImage;
  String time;
  String description;
  String gouvernorat;
  String delegation;

  Report({
    this.longitude = 0,
    this.latitude = 0,
    this.type = '',
    this.urlToImage = '',
    this.time = '',
    this.description = '',
    this.gouvernorat='',
    this.delegation='',
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    data['type'] = this.type;
    data['urlToImage'] = this.urlToImage;
    data['time'] = this.time;
    data['description'] = this.description;
    data['gouvernorat']=this.gouvernorat;
    data['delegation']=this.delegation;
    return data;
  }
}
