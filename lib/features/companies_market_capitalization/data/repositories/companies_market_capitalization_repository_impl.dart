import 'package:companies_market_capitalization/core/error/exceptions.dart';
import 'package:companies_market_capitalization/features/companies_market_capitalization/data/datasources/companies_market_capitalization_data_source.dart';
import 'package:companies_market_capitalization/features/companies_market_capitalization/data/models/companies_market_capitalization_model.dart';
import 'package:companies_market_capitalization/features/companies_market_capitalization/domain/repositories/companies_market_capitalization_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';

class CompaniesMarketCapitalizationRepositoryImpl
    implements CompaniesMarketCapitalizationRepository {
  CompaniesMarketCapitalizationRepositoryImpl({
    required this.remoteDataSource,
  });

  final CompaniesMarketCapitalizationRemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, CompanyDataModel>> getCompaniesData({
    required String companyName,
  }) async {
    try {
      final CompanyDataModel companyData =
          await remoteDataSource.getCompanyData(companyName: companyName);
      return Right(companyData);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
