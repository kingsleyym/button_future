import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/enitys/auth/id.dart';
import '../../domain/enitys/news/news.dart';

class NewsModel {
  final String id;
  final String title;
  final String body;
  final String desc;
  final String src;
  final String image;

  final String link;

  final dynamic serverTimeStamp;

  NewsModel(
      {required this.id,
      required this.body,
      required this.title,
      required this.image,
      required this.link,
      required this.serverTimeStamp,
      required this.src,
      required this.desc});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'body': body,
      'desc': desc,
      'src': src,
      'image': image,
      'link': link,
      'serverTimeStamp': serverTimeStamp,
    };
  }

  factory NewsModel.fromMap(Map<String, dynamic> map) {
    return NewsModel(
      id: "",
      title: map['title'] as String,
      body: map['body'] as String,
      desc: map['desc'] as String,
      src: map['src'] as String,
      image: map['image'] as String,
      link: map['link'] as String,
      serverTimeStamp: map['serverTimeStamp'],
    );
  }

  NewsModel copyWith({
    String? id,
    String? title,
    String? body,
    String? desc,
    String? src,
    String? image,
    String? link,
    dynamic serverTimeStamp,
  }) {
    return NewsModel(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
      desc: desc ?? this.desc,
      src: src ?? this.src,
      image: image ?? this.image,
      link: link ?? this.link,
      serverTimeStamp: serverTimeStamp ?? this.serverTimeStamp,
    );
  }

  factory NewsModel.fromFirestore(
      QueryDocumentSnapshot<Map<String, dynamic>> doc, String id) {
    return NewsModel.fromMap(doc.data()).copyWith(id: doc.id);
  }

  News toDomain() {
    return News(
      id: UniqueID.fromUniqueString(id),
      title: title,
      body: body,
      desc: desc,
      src: src,
      image: image,
      link: link,
    );
  }

  factory NewsModel.fromDomain(News newsItem) {
    return NewsModel(
        id: newsItem.id.value,
        body: newsItem.body,
        title: newsItem.title,
        desc: newsItem.desc,
        src: newsItem.src,
        image: newsItem.image,
        link: newsItem.link,
        serverTimeStamp: FieldValue.serverTimestamp());
  }
}
