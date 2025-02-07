import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_commun_app/model/post/post_model.dart';
import 'package:flutter_commun_app/model/profile/profile_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class PostBaseActions {
  ProfileModel get myUser;
  Stream<QuerySnapshot> listenPostToChange;
  StreamSubscription<QuerySnapshot> postSubscription;

  Future deletePost(PostModel model);
  Future handleVote(PostModel model, {@required bool isUpVote});

  void onPostUpdate(PostModel model);
  void reportPost(PostModel model);
  void onPostDelete(PostModel model);
  void postChangeListener(QuerySnapshot snapshot);
}
