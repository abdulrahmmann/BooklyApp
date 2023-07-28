import 'package:booklyapp/core/utils/api_service.dart';
import 'package:booklyapp/features/home/data/repository/home_repository_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {

  getIt.registerSingleton<ApiService>(
      ApiService(Dio())); //  == getIt.get<ApiService>()) .

  getIt.registerSingleton<HomeRepositoryImplementation>(
      HomeRepositoryImplementation(getIt.get<ApiService>()));
}
