import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

CacheManager cacheManager() => locator.get<CacheManager>();
