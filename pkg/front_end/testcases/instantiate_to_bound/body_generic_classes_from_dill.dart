// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
// @dart=2.9
// This test checks that instantiate to bound provides missing type arguments to
// raw interface types found in bodies of methods in cases where those types
// refer to classes imported from compiled dill files.

import 'dart:collection';

class A {
  foo() {
    LinkedListEntry bar;
  }
}

main() {
  LinkedListEntry bar;
}
