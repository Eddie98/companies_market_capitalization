part of 'companies_market_capitalization_bloc.dart';

abstract class CompaniesMarketCapitalizationState extends Equatable {
  const CompaniesMarketCapitalizationState();

  @override
  List<Object> get props => [];
}

class CompaniesMarketCapitalizationInitial
    extends CompaniesMarketCapitalizationState {}

class CompaniesMarketCapitalizationLoading
    extends CompaniesMarketCapitalizationState {}

class CompaniesMarketCapitalizationLoaded
    extends CompaniesMarketCapitalizationState {
  const CompaniesMarketCapitalizationLoaded({
    required this.companiesDataList,
    required this.totalCompaniesCapitalization,
  });

  final List<CompanyDataModel> companiesDataList;
  final int totalCompaniesCapitalization;

  @override
  List<Object> get props => [companiesDataList, totalCompaniesCapitalization];
}

class CompaniesMarketCapitalizationError
    extends CompaniesMarketCapitalizationState {}
