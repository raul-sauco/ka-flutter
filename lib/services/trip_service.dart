import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:global_configuration/global_configuration.dart';
import 'package:http/http.dart' as http;

import '../models/serializers.dart';
import '../models/trip.dart';

class TripService {
  Future<List<Trip>> getTrips() async {
    String accessToken = GlobalConfiguration().getValue('accessToken');
    String apiUrl = GlobalConfiguration().getValue('apiUrl');
    if (accessToken == null) {
      throw new Exception('No access token found');
    }
    var response = await http.get(
      '$apiUrl/trips?expand=name',
      headers: {HttpHeaders.authorizationHeader: "Bearer $accessToken"},
    );
    if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List)
          .map((tripJson) =>
              serializers.deserializeWith(Trip.serializer, tripJson))
          .toList();
    } else {
      throw Exception("Wrong response code ${response.statusCode}");
    }
  }
}
