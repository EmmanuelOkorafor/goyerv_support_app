// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







part of 'package:goyerv_support_web_app/dependency_injections.dart';

Future<void> initEmailSupport() async {

  // Data sources
  sl.registerLazySingleton<EmailSupportRemoteDataSource>(() => EmailSupportRemoteDataSourceImpl(sl(), sl()));

  // Use cases
  sl.registerLazySingleton(() => SendSupportTicket(sl()));

  // Repository
  sl.registerLazySingleton<EmailSupportRepositoryContracts>(() => EmailSupportRepositoryContractsImpl(sl(), sl()));

  // Bloc
  sl.registerFactory(() => EmailSupportBloc(sl()));


  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => HttpClient());
  sl.registerLazySingleton(() => InternetConnectionChecker());


}