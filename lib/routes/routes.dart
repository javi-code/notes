import 'package:flutter/material.dart';
import 'package:notes/pages/empty/empty.dart';
import 'package:notes/pages/index.dart';
import 'package:notes/pages/notes/new-note.dart';

final Map<String, Widget Function(BuildContext)> customRoutes = {
  '/index': (_) => IndexPage(),
  '/empty': (_) => EmptyPage(),
  '/new-note': (_) => NewNote(),
};
