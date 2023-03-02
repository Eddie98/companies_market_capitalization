import 'package:auto_route/auto_route.dart';
import 'package:companies_market_capitalization/features/compamies_market_capitalization/data/models/companies_market_capitalization_model.dart';
import 'package:companies_market_capitalization/features/compamies_market_capitalization/presentation/pages/widgets/list_tile.dart';
import 'package:flutter/material.dart';

class CompaniesMarketCapitalizationPage extends StatelessWidget {
  const CompaniesMarketCapitalizationPage({
    super.key,
    required this.companyData,
    required this.companyCapitalizationProcent,
  });

  final CompanyDataModel companyData;
  final int companyCapitalizationProcent;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.navigateBack();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              context.navigateBack();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
            constraints: const BoxConstraints(),
            splashRadius: 24.0,
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 24.0,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  companyData.Name ?? '',
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  companyData.Description ?? '',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.w400,
                    height: 1.4,
                  ),
                ),
              ),
              const SizedBox(height: 18.0),
              ListTileWidget(
                title: 'Country',
                subtitle: companyData.Country ?? '',
              ),
              ListTileWidget(
                title: 'Sector',
                subtitle: companyData.Sector ?? '',
              ),
              ListTileWidget(
                title: 'Industry',
                subtitle: companyData.Industry ?? '',
              ),
              ListTileWidget(
                title: 'Address',
                subtitle: companyData.Address ?? '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
