import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/news/bloc/todoform_bloc.dart';
import '../userpage/settings/widgets/cutombut.dart';

class NewsText extends StatelessWidget {
  const NewsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final textEditingControllerTitle = TextEditingController();
    final textEditingControllerBody = TextEditingController();
    final textEditingControllerImage = TextEditingController();
    final textEditingControllerSrc = TextEditingController();
    final textEditingControllerDesc = TextEditingController();
    final textEditingControllerLink = TextEditingController();

    late String title;
    late String body;
    late String image;
    late String src;
    late String desc;
    late String link;

    String? validateTitle(String? value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      } else if (value.length < 120) {
        title = value;
        return null;
      } else {
        return "title to long";
      }
    }

    String? validateBody(String? value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      } else if (value.length < 9000) {
        body = value;
        return null;
      } else {
        return "body to long";
      }
    }

    String? validateImage(String? value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      } else if (value.length < 500) {
        image = value;
        return null;
      } else {
        return "image to long";
      }
    }

    String? validateSrc(String? value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      } else if (value.length < 120) {
        src = value;
        return null;
      } else {
        return "src to long";
      }
    }

    String? validateDesc(String? value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      } else if (value.length < 9000) {
        desc = value;
        return null;
      } else {
        return "desc to long";
      }
    }

    String? validateLink(String? value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      } else if (value.length < 500) {
        link = value;
        return null;
      } else {
        return "link to long";
      }
    }

    return BlocConsumer<NewsformBloc, NewsformState>(
        listenWhen: (p, c) => p.isEditing != c.isEditing,
        listener: (context, state) {
          textEditingControllerTitle.text = state.news.title;
          textEditingControllerBody.text = state.news.body;
          textEditingControllerImage.text = state.news.image;
          textEditingControllerSrc.text = state.news.src;
          textEditingControllerDesc.text = state.news.desc;
          textEditingControllerLink.text = state.news.link;
        },
        builder: (context, state) {
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                  key: formKey,
                  autovalidateMode: state.showErrorMessages
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  child: ListView(
                    children: [
                      TextFormField(
                        controller: textEditingControllerTitle,
                        cursorColor: Colors.amber,
                        validator: validateTitle,
                        maxLength: 120,
                        maxLines: 3,
                        minLines: 1,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            labelText: "Title",
                            labelStyle: Theme.of(context).textTheme.bodyText1!,
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: textEditingControllerBody,
                        cursorColor: Colors.amber,
                        validator: validateBody,
                        maxLength: 9000,
                        maxLines: 199,
                        minLines: 1,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            labelText: "Body",
                            labelStyle: Theme.of(context).textTheme.bodyText1!,
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: textEditingControllerImage,
                        cursorColor: Colors.amber,
                        validator: validateImage,
                        maxLength: 500,
                        maxLines: 10,
                        minLines: 1,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            labelText: "Image",
                            labelStyle: Theme.of(context).textTheme.bodyText1!,
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: textEditingControllerSrc,
                        cursorColor: Colors.amber,
                        validator: validateSrc,
                        maxLength: 120,
                        maxLines: 2,
                        minLines: 1,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            labelText: "Src",
                            labelStyle: Theme.of(context).textTheme.bodyText1!,
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: textEditingControllerDesc,
                        cursorColor: Colors.amber,
                        validator: validateDesc,
                        maxLength: 9000,
                        maxLines: 199,
                        minLines: 1,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            labelText: "Desc",
                            labelStyle: Theme.of(context).textTheme.bodyText1!,
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: textEditingControllerLink,
                        cursorColor: Colors.amber,
                        validator: validateLink,
                        maxLength: 500,
                        maxLines: 10,
                        minLines: 1,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            labelText: "Link",
                            labelStyle: Theme.of(context).textTheme.bodyText1!,
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                          buttonText: "Safe",
                          callback: () {
                            if (formKey.currentState!.validate()) {
                              BlocProvider.of<NewsformBloc>(context).add(
                                  SafePressedEvent(
                                      body: body,
                                      desc: desc,
                                      link: link,
                                      image: image,
                                      src: src,
                                      title: title));
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      backgroundColor:
                                          Color.fromARGB(255, 67, 255, 120),
                                      content: Text(
                                        "New article added",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      )));
                              Navigator.of(context).pop();
                            } else {
                              BlocProvider.of<NewsformBloc>(context).add(
                                  SafePressedEvent(
                                      body: null,
                                      title: null,
                                      desc: null,
                                      image: null,
                                      src: null,
                                      link: null));

                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                      backgroundColor: Colors.redAccent,
                                      content: Text(
                                        "Invalid Input",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      )));
                            }
                          })
                    ],
                  )));
        });
  }
}
