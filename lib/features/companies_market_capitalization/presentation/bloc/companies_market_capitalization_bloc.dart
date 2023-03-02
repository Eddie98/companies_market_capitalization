import 'package:bloc/bloc.dart';
import 'package:companies_market_capitalization/core/constants.dart';
import 'package:companies_market_capitalization/features/companies_market_capitalization/data/models/companies_market_capitalization_model.dart';
import 'package:companies_market_capitalization/features/companies_market_capitalization/domain/repositories/companies_market_capitalization_repository.dart';
import 'package:equatable/equatable.dart';

part 'companies_market_capitalization_event.dart';
part 'companies_market_capitalization_state.dart';

class CompaniesMarketCapitalizationBloc extends Bloc<
    CompaniesMarketCapitalizationEvent, CompaniesMarketCapitalizationState> {
  final CompaniesMarketCapitalizationRepository repository;

  CompaniesMarketCapitalizationBloc(this.repository)
      : super(CompaniesMarketCapitalizationInitial()) {
    on<CompaniesMarketCapitalizationLoadDataEvent>(
      companiesMarketCapitalizationEventHandler,
    );
  }

  void companiesMarketCapitalizationEventHandler(
    CompaniesMarketCapitalizationLoadDataEvent event,
    Emitter<CompaniesMarketCapitalizationState> emit,
  ) async {
    try {
      List<CompanyDataModel> companiesDataList = [];

      for (var company in companyNamesList) {
        final companyData =
            await repository.getCompaniesData(companyName: company.name);

        companyData.fold(
          (failure) {},
          (data) {
            companiesDataList.add(data);
          },
        );
      }

      final totalCompaniesCapitalization = companiesDataList.fold<int>(
          0, (acc, data) => acc += data.MarketCapitalization ?? 0);

      emit(CompaniesMarketCapitalizationLoaded(
        companiesDataList: companiesDataList,
        totalCompaniesCapitalization: totalCompaniesCapitalization,
      ));
    } catch (e) {
      emit(CompaniesMarketCapitalizationError());
    }
  }
}
