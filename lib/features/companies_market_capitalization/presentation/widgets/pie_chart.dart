import 'package:auto_route/auto_route.dart';
import 'package:companies_market_capitalization/core/constants.dart';
import 'package:companies_market_capitalization/core/routes.dart';
import 'package:companies_market_capitalization/features/companies_market_capitalization/data/models/companies_market_capitalization_model.dart';
import 'package:companies_market_capitalization/features/companies_market_capitalization/presentation/widgets/indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartWidget extends StatefulWidget {
  const PieChartWidget({
    super.key,
    required this.companiesDataList,
    required this.totalCompaniesCapitalization,
  });

  final List<CompanyDataModel> companiesDataList;
  final int totalCompaniesCapitalization;

  @override
  State<StatefulWidget> createState() => PieChartWidgetState();
}

class PieChartWidgetState extends State<PieChartWidget> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: PieChart(
            PieChartData(
              pieTouchData: PieTouchData(
                touchCallback: (FlTouchEvent event, pieTouchResponse) {
                  setState(() {
                    if (!event.isInterestedForInteractions ||
                        pieTouchResponse == null ||
                        pieTouchResponse.touchedSection == null) {
                      touchedIndex = -1;
                      return;
                    }
                    touchedIndex =
                        pieTouchResponse.touchedSection!.touchedSectionIndex;
                  });

                  if (touchedIndex != -1) {
                    final companyData =
                        widget.companiesDataList.elementAt(touchedIndex);

                    final int companyCapitalizationProcent =
                        (100 * companyData.MarketCapitalization!) ~/
                            widget.totalCompaniesCapitalization;

                    context.router
                        .navigate(CompaniesMarketCapitalizationPageRoute(
                      companyData: companyData,
                      companyCapitalizationProcent:
                          companyCapitalizationProcent,
                    ));
                  }
                },
              ),
              borderData: FlBorderData(show: false),
              sectionsSpace: 1,
              centerSpaceRadius: 50,
              sections: showingSections(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: List.generate(widget.companiesDataList.length, (i) {
              final companyData = widget.companiesDataList.elementAt(i);
              final companyColor = companyNamesList[i].color;

              return Column(
                children: [
                  Indicator(
                    color: companyColor,
                    text: companyData.Name ?? '',
                    isSquare: true,
                  ),
                  const SizedBox(height: 4.0),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(widget.companiesDataList.length, (i) {
      final companyData = widget.companiesDataList.elementAt(i);

      final color = companyNamesList
          .singleWhere((e) => e.name == companyData.Symbol)
          .color;

      final int companyCapitalizationProcent =
          (100 * companyData.MarketCapitalization!) ~/
              widget.totalCompaniesCapitalization;

      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];

      return PieChartSectionData(
        color: color,
        value: companyCapitalizationProcent.toDouble(),
        title: '$companyCapitalizationProcent%',
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          shadows: shadows,
        ),
      );
    });
  }
}
