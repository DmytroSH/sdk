// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
// @dart = 2.9
// Requirements=nnbd-weak

// SharedOptions=--enable-experiment=nonfunction-type-aliases

// Test that a type alias `T` denoting a class with a constructor
// can give rise to the expected errors.

import 'usage_class_error_lib.dart';

// Use the aliased type.

abstract class C {}

abstract class D2 extends C with T {}
//                               ^
// [analyzer] unspecified
// [cfe] unspecified

abstract class D4 = C with T;
//                         ^
// [analyzer] unspecified
// [cfe] unspecified

main() {
  T();
}
