import 'package:flutter/material.dart';

extension MaterialStatePropertyExtension<T> on T {
  MaterialStatePropertyAll<T> get mspAll => MaterialStatePropertyAll(this);
}