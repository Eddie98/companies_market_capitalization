import 'dart:convert';

import 'package:companies_market_capitalization/core/constants.dart';
import 'package:companies_market_capitalization/features/compamies_market_capitalization/data/models/companies_market_capitalization_model.dart';
import 'package:http/http.dart' as http;

import '../../../../core/error/exceptions.dart';

abstract class CompaniesMarketCapitalizationRemoteDataSource {
  Future<CompanyDataModel> getCompanyData({
    required String companyName,
  });
}

class CompaniesMarketCapitalizationRemoteDataSourceImpl
    implements CompaniesMarketCapitalizationRemoteDataSource {
  final http.Client client;

  CompaniesMarketCapitalizationRemoteDataSourceImpl({required this.client});

  @override
  Future<CompanyDataModel> getCompanyData({
    required String companyName,
  }) async {
    final response = await client.get(
      Uri.parse(
          '$baseUrl?function=OVERVIEW&symbol=$companyName&apikey=04WPO6T6WGKHCD3E'),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return CompanyDataModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
