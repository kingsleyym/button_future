import '../auth/id.dart';


class News {
  final UniqueID id;
  final String title;
  final String desc;
  final String body;
  final String image;
  final String link;
  final String src;


News(
    {required this.id,
    required this.title,
    required this.desc,
    required this.body,
    required this.image,
    required this.link,
    required this.src});

factory News.empty() {
  return News(
      id: UniqueID(),
      title: "",
      desc: "",
      body: "",
      image: "",
      link: "",
      src: "");}

News copyWith({ UniqueID? id,
  String? title,
  String? desc,
  String? body,
  String? image,
  String? link,
  String? src,}) {
  
  return News(
    id: id ?? this.id,
    title: title ?? this.title,
    desc: desc ?? this.desc,
    body: body ?? this.body,
    image: image ?? this.image,  
    link: link ?? this.link,
    src: src ?? this.src,
  );
}
}