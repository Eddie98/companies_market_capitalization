import 'package:companies_market_capitalization/core/error/failures.dart';
import 'package:companies_market_capitalization/features/compamies_market_capitalization/data/models/companies_market_capitalization_model.dart';
import 'package:dartz/dartz.dart';

abstract class CompaniesMarketCapitalizationRepository {
  Future<Either<Failure, CompanyDataModel>> getCompaniesData({
    required String companyName,
  });
}
