//import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
class Post{
  static const KEY = "key";
  static const DATE = "date";
  static const TITLE = "title";
  static const BODY = "body";
  static const STORY = "story";
  static const NAME = "name";
   int date;
   String key;
   String title;
   String body;
   String story;
   String name;

  Post(this.date,this.title,this.body,);

  //String get key => _key;
  //String get date => _date;
  //String get title => _title;
  //String get body => _body;

  Post.fromSnapshot(DataSnapshot snap):
    this.key= snap.key,
    this.body=snap.value[BODY],
    this.date=snap.value[DATE],
    this.name=snap.value[NAME],
    this.story=snap.value[STORY],
    this.title=snap.value[TITLE];
  
  Map toMap(){
    return{
      BODY:body,
      TITLE:title,
      DATE:date,
      KEY: key,
      STORY: story,
      NAME: name,
    };
  }


}