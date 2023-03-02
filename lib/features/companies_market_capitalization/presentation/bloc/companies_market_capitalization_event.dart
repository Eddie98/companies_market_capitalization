part of 'companies_market_capitalization_bloc.dart';

abstract class CompaniesMarketCapitalizationEvent extends Equatable {
  const CompaniesMarketCapitalizationEvent();

  @override
  List<Object> get props => [];
}

class CompaniesMarketCapitalizationLoadDataEvent
    extends CompaniesMarketCapitalizationEvent {}
