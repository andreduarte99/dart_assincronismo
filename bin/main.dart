import 'package:http/http.dart';

void main() {
  // print("Hello, World!");

  requestData();
}

requestData() {
  String url =
      "https://gist.githubusercontent.com/andreduarte99/0ff5702b462e1e31941de213311efb0e/raw/b5797aa29f77f4dd8a73e498cebaa69fc077902a/accounts.json";
  Future<Response> futureResponse = get(Uri.parse(url));
  print(futureResponse);
  futureResponse.then(
    (Response response) {
      print(response);
      print(response.body);
    },
  );
}
