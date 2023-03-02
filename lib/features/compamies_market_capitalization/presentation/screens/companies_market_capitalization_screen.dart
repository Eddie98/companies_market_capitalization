import 'package:companies_market_capitalization/features/compamies_market_capitalization/presentation/bloc/companies_market_capitalization_bloc.dart';
import 'package:companies_market_capitalization/features/compamies_market_capitalization/presentation/widgets/errors.dart';
import 'package:companies_market_capitalization/features/compamies_market_capitalization/presentation/widgets/loading.dart';
import 'package:companies_market_capitalization/features/compamies_market_capitalization/presentation/widgets/pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompaniesMarketCapitalizationScreen extends StatelessWidget {
  const CompaniesMarketCapitalizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _MainBody(),
    );
  }
}

class _MainBody extends StatelessWidget {
  const _MainBody();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: BlocBuilder<CompaniesMarketCapitalizationBloc,
            CompaniesMarketCapitalizationState>(
          builder: (context, state) {
            if (state is CompaniesMarketCapitalizationLoading) {
              return LoadingWidget(constraints: constraints);
            } else if (state is CompaniesMarketCapitalizationError) {
              return ErrorsWidget(constraints: constraints);
            } else if (state is CompaniesMarketCapitalizationLoaded) {
              return PieChartWidget(
                companiesDataList: state.companiesDataList,
                totalCompaniesCapitalization:
                    state.totalCompaniesCapitalization,
              );
            }
            return const SizedBox.shrink();
          },
        ),
      );
    });
  }
}
