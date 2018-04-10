import 'dart:async';

import 'package:angular/angular.dart';

import 'hero.dart';
import 'mock_heroes.dart';

@Injectable()
class HeroService {
  Future<List<Hero>> getAll() async => mockHeroes;
  // See the "Take it slow" appendix
  Future<List<Hero>> getAllSlowly() {
    return new Future.delayed(const Duration(seconds: 2), getAll);
  }
}
