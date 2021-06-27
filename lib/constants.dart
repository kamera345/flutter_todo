import 'package:flutter/material.dart';

const kTaskViewContainerStyle = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0),
  ),
);

const kTodoeyTextStyle = TextStyle(
  fontSize: 35.0,
  color: Colors.white,
  fontWeight: FontWeight.w800,
);

const kAddTaskButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20.0,
);

const kAddTaskContainerStyle = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(20.0),
    topLeft: Radius.circular(20.0),
  ),
);