import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<String> rankNames() {
  try {
    final QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('users')
        .orderBy('points', descending: true)
        .limit(10)
        .get();

    final List<String> topUsers = querySnapshot.docs
        .map((doc) => doc.data()['display_name'] as String)
        .toList();

    return topUsers;
  } catch (e) {
    print('Error fetching users: $e');
    return null;
  }
}

List<String> rankScore() {
  try {
    final QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('users')
        .orderBy('points', descending: true)
        .limit(10)
        .get();

    final List<String> topUsersPoints = querySnapshot.docs
        .map((doc) => doc.data()['points'].toString())
        .toList();

    return topUsersPoints;
  } catch (e) {
    print('Error fetching users: $e');
    return [];
  }
}

String? newCustomFunction() {
  Future<DocumentSnapshot?> getSecondUser() async {
    // Get the first user to find the top score
    QuerySnapshot querySnapshotFirst = await FirebaseFirestore.instance
        .collection('users')
        .orderBy('score', descending: true)
        .limit(1)
        .get();

    if (querySnapshotFirst.docs.isNotEmpty) {
      var topScore = querySnapshotFirst.docs[0].data()['score'];

      // Now query for the user with the second highest score
      QuerySnapshot querySnapshotSecond = await FirebaseFirestore.instance
          .collection('users')
          .where('score', isLessThan: topScore)
          .orderBy('score', descending: true)
          .limit(1)
          .get();

      if (querySnapshotSecond.docs.isNotEmpty) {
        return querySnapshotSecond.docs[0];
      }
    }

    return null; // If no second user found
  }
}
