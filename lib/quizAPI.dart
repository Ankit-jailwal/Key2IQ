import 'dart:convert';
import 'package:http/http.dart' as Http;


Future getQuestions() async{
  final String url = "https://opentdb.com/api.php?amount=10&category=18&type=multiple";
  final response = await Http.get(url,
  );
  final body=response.body;
  print(response.body);
  final res=jsonDecode(body);
  return res;
}