// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'routes.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    CompaniesMarketCapitalizationScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CompaniesMarketCapitalizationScreen(),
      );
    },
    CompaniesMarketCapitalizationPageRoute.name: (routeData) {
      final args =
          routeData.argsAs<CompaniesMarketCapitalizationPageRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: CompaniesMarketCapitalizationPage(
          key: args.key,
          companyData: args.companyData,
          companyCapitalizationProcent: args.companyCapitalizationProcent,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/companies-market-capitalization-screen',
          fullMatch: true,
        ),
        RouteConfig(
          CompaniesMarketCapitalizationScreenRoute.name,
          path: '/companies-market-capitalization-screen',
        ),
        RouteConfig(
          CompaniesMarketCapitalizationPageRoute.name,
          path: '/company-details-page',
        ),
      ];
}

/// generated route for
/// [CompaniesMarketCapitalizationScreen]
class CompaniesMarketCapitalizationScreenRoute extends PageRouteInfo<void> {
  const CompaniesMarketCapitalizationScreenRoute()
      : super(
          CompaniesMarketCapitalizationScreenRoute.name,
          path: '/companies-market-capitalization-screen',
        );

  static const String name = 'CompaniesMarketCapitalizationScreenRoute';
}

/// generated route for
/// [CompaniesMarketCapitalizationPage]
class CompaniesMarketCapitalizationPageRoute
    extends PageRouteInfo<CompaniesMarketCapitalizationPageRouteArgs> {
  CompaniesMarketCapitalizationPageRoute({
    Key? key,
    required CompanyDataModel companyData,
    required int companyCapitalizationProcent,
  }) : super(
          CompaniesMarketCapitalizationPageRoute.name,
          path: '/company-details-page',
          args: CompaniesMarketCapitalizationPageRouteArgs(
            key: key,
            companyData: companyData,
            companyCapitalizationProcent: companyCapitalizationProcent,
          ),
        );

  static const String name = 'CompaniesMarketCapitalizationPageRoute';
}

class CompaniesMarketCapitalizationPageRouteArgs {
  const CompaniesMarketCapitalizationPageRouteArgs({
    this.key,
    required this.companyData,
    required this.companyCapitalizationProcent,
  });

  final Key? key;

  final CompanyDataModel companyData;

  final int companyCapitalizationProcent;

  @override
  String toString() {
    return 'CompaniesMarketCapitalizationPageRouteArgs{key: $key, companyData: $companyData, companyCapitalizationProcent: $companyCapitalizationProcent}';
  }
}
