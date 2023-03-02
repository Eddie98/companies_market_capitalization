import 'package:auto_route/auto_route.dart';
import 'package:companies_market_capitalization/features/compamies_market_capitalization/data/models/companies_market_capitalization_model.dart';
import 'package:companies_market_capitalization/features/compamies_market_capitalization/presentation/pages/companies_market_capitalization_page.dart';
import 'package:companies_market_capitalization/features/compamies_market_capitalization/presentation/screens/companies_market_capitalization_screen.dart';
import 'package:flutter/material.dart';

part 'routes.gr.dart';

const String companiesMarketCapitalizationScreen =
    '/companies-market-capitalization-screen';
const String companyDetailsPage = '/company-details-page';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: CompaniesMarketCapitalizationScreen,
      path: companiesMarketCapitalizationScreen,
      initial: true,
    ),
    AutoRoute(
      page: CompaniesMarketCapitalizationPage,
      path: companyDetailsPage,
    ),
  ],
)
class AppRouter extends _$AppRouter {}
