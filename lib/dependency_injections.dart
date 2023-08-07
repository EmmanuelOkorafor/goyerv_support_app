// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'email_support/data/data_sources/remote/email_support_remote_data_source.dart';
import 'email_support/data/repository_contracts_extension/email_support_repository_contracts.dart';
import 'email_support/domain/repository_contracts/email_support_repository_contracts.dart';
import 'email_support/domain/use_cases/email_support_use_cases.dart';
import 'email_support/presentation/bloc/email_support_bloc.dart';
import 'guides/data/data_sources/remote/guides_remote_data_source.dart';
import 'guides/data/repository_contracts_extension/guides_repository_contracts_extension.dart';
import 'guides/domain/repository_contracts/guides_repository_contracts.dart';
import 'guides/domain/use_cases/guides_use_cases.dart';
import 'guides/presentation/bloc/guides_bloc.dart';
import 'homepage/data/data_sources/remote/homepage_remote_data_source.dart';
import 'homepage/data/repository_contracts_extension/homepage_repository_contracts_extension.dart';
import 'homepage/domain/repository_contracts/homepage_repository_contracts.dart';
import 'homepage/domain/use_cases/homepage_use_cases.dart';
import 'homepage/presentation/bloc/homepage_bloc.dart';



part 'homepage/homepage_dependency_injection.dart';
part 'guides/guides_dependency_injection.dart';
part 'email_support/email_support_dependency_injection_container.dart';



final sl = GetIt.instance;

void init() {
  sl.registerLazySingleton(() => initEmailSupport());
  sl.registerLazySingleton(() => initGuides());
  sl.registerLazySingleton(() => initHomepage());
}