import 'package:http/http.dart';

/// Helper functionality related with http requests and responses.
class HttpPaginationHelper {
  /// Check if there is a next page of data.
  static bool hasNextPage(Response response) =>
      response.headers['link'].contains('rel=next');

  /// Return
  static String getNextPageUrl(Response response) {
    if (!hasNextPage(response)) {
      throw Exception('Trying to access non existent next page');
    }
    // TODO check why the .. operator fails here.
    // List<String> rawLinks = response.headers['link']..split(',')
    //..singleWhere((element) => element.contains('rel=next'))..split;
    List<String> rawLinks = response.headers['link'].split(',');
    return rawLinks
        .singleWhere((link) => link.contains('rel=next'))
        .split(';')[0]
        .replaceAll(RegExp('[<>]'), '')
        .trim();
  }
}
