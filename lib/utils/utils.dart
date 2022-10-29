import 'dart:mirrors';

abstract class Utils {
  static Object? getAnnotation(DeclarationMirror declaration, Type annotation) {
    for (var instance in declaration.metadata) {
      if (instance.hasReflectee) {
        var reflectee = instance.reflectee;
        if (reflectee.runtimeType == annotation) {
          return reflectee;
        }
      }
    }

    return null;
  }
}
