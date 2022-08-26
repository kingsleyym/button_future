import 'package:button_future/model/articel_moodel.dart';
import 'package:http/http.dart';
import 'dart:convert';

class ApiService {
  final endPointUrl =
      "https://newsapi.org/v2/everything?q=bitcoin&apiKey=fec122925877497d91e6a1fcf2998086";

  Future<List<Article>> getArticle() async {
    Response res = await get(Uri.parse(endPointUrl));

    //first of all let's check that we got a 200 statu code: this mean that the request was a succes
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      //this line will allow us to get the different articles from the json file and putting them into a list
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Can't get the Articles");
    }
  }
}
