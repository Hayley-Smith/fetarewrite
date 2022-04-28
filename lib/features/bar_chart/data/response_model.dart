import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Response {
  final List<String> results;

  const Response({this.results});

  factory Response.fromJson(Map<String, dynamic> json) {
    final data = List<String>.from(json['results']);
    return Response(
      results: data,
    );
  }
}
