class ErrorResponse {
  late String message;
  late Map<String, dynamic>? errors;
  late int? code;

  ErrorResponse({required this.message, this.errors, this.code});

  ErrorResponse.fromJson(Map<String, dynamic>? json) {
    message = json == null ? "" : json['message']??"Some entities failed, please check";
    errors = json?['errors'];
    code = json?['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    return data;
  }
}
