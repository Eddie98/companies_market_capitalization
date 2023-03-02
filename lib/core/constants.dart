import 'package:companies_market_capitalization/features/companies_market_capitalization/domain/entities/company_name_entity.dart';
import 'package:flutter/material.dart';

const String baseUrl = 'https://www.alphavantage.co/query';

final List<CompanyNameEntity> companyNamesList = [
  CompanyNameEntity(name: 'AAPL', color: Colors.yellowAccent),
  CompanyNameEntity(name: 'AMZN', color: Colors.blueAccent),
  CompanyNameEntity(name: 'GOOG', color: Colors.greenAccent),
  CompanyNameEntity(name: 'MSFT', color: Colors.redAccent),
  CompanyNameEntity(name: 'META', color: Colors.purpleAccent),
];
