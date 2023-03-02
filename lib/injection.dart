import 'package:companies_market_capitalization/features/compamies_market_capitalization/data/datasources/companies_market_capitalization_data_source.dart';
import 'package:companies_market_capitalization/features/compamies_market_capitalization/data/repositories/companies_market_capitalization_repository_impl.dart';
import 'package:companies_market_capitalization/features/compamies_market_capitalization/domain/repositories/companies_market_capitalization_repository.dart';
import 'package:companies_market_capitalization/features/compamies_market_capitalization/presentation/bloc/companies_market_capitalization_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> configureDependencies() async {
  // Bloc
  sl.registerFactory(
    () => CompaniesMarketCapitalizationBloc(
      sl<CompaniesMarketCapitalizationRepository>(),
    ),
  );

  // Repository
  sl.registerLazySingleton<CompaniesMarketCapitalizationRepository>(
    () => CompaniesMarketCapitalizationRepositoryImpl(
      remoteDataSource: sl(),
    ),
  );

  // Data sources
  sl.registerLazySingleton<CompaniesMarketCapitalizationRemoteDataSource>(
    () => CompaniesMarketCapitalizationRemoteDataSourceImpl(client: sl()),
  );

  //! External
  sl.registerLazySingleton(() => http.Client());
}
