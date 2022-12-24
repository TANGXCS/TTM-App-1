import 'dart:ffi';

import 'package:flutter/cupertino.dart';

double convertWidth(BuildContext context, double size) {
  return MediaQuery.of(context).size.width * size;
}

double convertHeigth(BuildContext context, double size) {
  return MediaQuery.of(context).size.height * size;
}
