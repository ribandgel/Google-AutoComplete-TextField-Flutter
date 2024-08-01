class PlaceDetails {
  double? lat;
  double? lng;
  PlaceDetails({this.lat, this.lng});

  PlaceDetails.fromJson(Map<String, dynamic> json) {
    lat = json['latitude'];
    lng = json['longitude'];
  }
}