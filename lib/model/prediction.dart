class PlacesAutocompleteResponse {
  List<Prediction>? predictions;
  PlacesAutocompleteResponse({this.predictions});

  PlacesAutocompleteResponse.fromJson(Map<String, dynamic> json) {
    predictions = [];
    if (json.containsKey('suggestions')) {
      json['suggestions'].forEach((v) {
        predictions!.add(new Prediction.fromJson(v['placePrediction']));
      });
    }
  }
}

class Prediction {
  String? placeId;
  String? description;

  Prediction({this.placeId, this.description});

  Prediction.fromJson(Map<String, dynamic> json) {
    placeId = json['placeId'];
    description = json['text']['text'];
  }
}