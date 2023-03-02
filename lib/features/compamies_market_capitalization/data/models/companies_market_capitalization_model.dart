// ignore_for_file: non_constant_identifier_names

class CompanyDataModel {
  CompanyDataModel({
    required this.Symbol,
    required this.AssetType,
    required this.Name,
    required this.Description,
    required this.CIK,
    required this.Exchange,
    required this.Currency,
    required this.Country,
    required this.Sector,
    required this.Industry,
    required this.Address,
    required this.FiscalYearEnd,
    required this.LatestQuarter,
    required this.MarketCapitalization,
    required this.EBITDA,
    required this.PERatio,
    required this.PEGRatio,
    required this.BookValue,
    required this.DividendPerShare,
    required this.DividendYield,
    required this.EPS,
    required this.RevenuePerShareTTM,
    required this.ProfitMargin,
    required this.OperatingMarginTTM,
    required this.ReturnOnAssetsTTM,
    required this.ReturnOnEquityTTM,
    required this.RevenueTTM,
    required this.GrossProfitTTM,
    required this.DilutedEPSTTM,
    required this.QuarterlyEarningsGrowthYOY,
    required this.QuarterlyRevenueGrowthYOY,
    required this.AnalystTargetPrice,
    required this.TrailingPE,
    required this.ForwardPE,
    required this.PriceToSalesRatioTTM,
    required this.PriceToBookRatio,
    required this.EVToRevenue,
    required this.EVToEBITDA,
    required this.Beta,
    required this.WeekHigh52,
    required this.WeekLow52,
    required this.DayMovingAverage50,
    required this.DayMovingAverage200,
    required this.SharesOutstanding,
    required this.DividendDate,
    required this.ExDividendDate,
  });

  String? Symbol;
  String? AssetType;
  String? Name;
  String? Description;
  String? CIK;
  String? Exchange;
  String? Currency;
  String? Country;
  String? Sector;
  String? Industry;
  String? Address;
  String? FiscalYearEnd;
  String? LatestQuarter;
  int? MarketCapitalization;
  String? EBITDA;
  String? PERatio;
  String? PEGRatio;
  String? BookValue;
  String? DividendPerShare;
  String? DividendYield;
  String? EPS;
  String? RevenuePerShareTTM;
  String? ProfitMargin;
  String? OperatingMarginTTM;
  String? ReturnOnAssetsTTM;
  String? ReturnOnEquityTTM;
  String? RevenueTTM;
  String? GrossProfitTTM;
  String? DilutedEPSTTM;
  String? QuarterlyEarningsGrowthYOY;
  String? QuarterlyRevenueGrowthYOY;
  String? AnalystTargetPrice;
  String? TrailingPE;
  String? ForwardPE;
  String? PriceToSalesRatioTTM;
  String? PriceToBookRatio;
  String? EVToRevenue;
  String? EVToEBITDA;
  String? Beta;
  String? WeekHigh52;
  String? WeekLow52;
  String? DayMovingAverage50;
  String? DayMovingAverage200;
  String? SharesOutstanding;
  String? DividendDate;
  String? ExDividendDate;

  CompanyDataModel.fromJson(Map<String, dynamic> json) {
    Symbol = json['Symbol'];
    AssetType = json['AssetType'];
    Name = json['Name'];
    Description = json['Description'];
    CIK = json['CIK'];
    Exchange = json['Exchange'];
    Currency = json['Currency'];
    Country = json['Country'];
    Sector = json['Sector'];
    Industry = json['Industry'];
    Address = json['Address'];
    FiscalYearEnd = json['FiscalYearEnd'];
    LatestQuarter = json['LatestQuarter'];
    MarketCapitalization = int.tryParse(json['MarketCapitalization']);
    EBITDA = json['EBITDA'];
    PERatio = json['PERatio'];
    PEGRatio = json['PEGRatio'];
    BookValue = json['BookValue'];
    DividendPerShare = json['DividendPerShare'];
    DividendYield = json['DividendYield'];
    EPS = json['EPS'];
    RevenuePerShareTTM = json['RevenuePerShareTTM'];
    ProfitMargin = json['ProfitMargin'];
    OperatingMarginTTM = json['OperatingMarginTTM'];
    ReturnOnAssetsTTM = json['ReturnOnAssetsTTM'];
    ReturnOnEquityTTM = json['ReturnOnEquityTTM'];
    RevenueTTM = json['RevenueTTM'];
    GrossProfitTTM = json['GrossProfitTTM'];
    DilutedEPSTTM = json['DilutedEPSTTM'];
    QuarterlyEarningsGrowthYOY = json['QuarterlyEarningsGrowthYOY'];
    QuarterlyRevenueGrowthYOY = json['QuarterlyRevenueGrowthYOY'];
    AnalystTargetPrice = json['AnalystTargetPrice'];
    TrailingPE = json['TrailingPE'];
    ForwardPE = json['ForwardPE'];
    PriceToSalesRatioTTM = json['PriceToSalesRatioTTM'];
    PriceToBookRatio = json['PriceToBookRatio'];
    EVToRevenue = json['EVToRevenue'];
    EVToEBITDA = json['EVToEBITDA'];
    Beta = json['Beta'];
    WeekHigh52 = json['52WeekHigh'];
    WeekLow52 = json['52WeekLow'];
    DayMovingAverage50 = json['50DayMovingAverage'];
    DayMovingAverage200 = json['200DayMovingAverage'];
    SharesOutstanding = json['SharesOutstanding'];
    DividendDate = json['DividendDate'];
    ExDividendDate = json['ExDividendDate'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['Symbol'] = Symbol;
    data['AssetType'] = AssetType;
    data['Name'] = Name;
    data['Description'] = Description;
    data['CIK'] = CIK;
    data['Exchange'] = Exchange;
    data['Currency'] = Currency;
    data['Country'] = Country;
    data['Sector'] = Sector;
    data['Industry'] = Industry;
    data['Address'] = Address;
    data['FiscalYearEnd'] = FiscalYearEnd;
    data['LatestQuarter'] = LatestQuarter;
    data['MarketCapitalization'] = MarketCapitalization;
    data['EBITDA'] = EBITDA;
    data['PERatio'] = PERatio;
    data['PEGRatio'] = PEGRatio;
    data['BookValue'] = BookValue;
    data['DividendPerShare'] = DividendPerShare;
    data['DividendYield'] = DividendYield;
    data['EPS'] = EPS;
    data['RevenuePerShareTTM'] = RevenuePerShareTTM;
    data['ProfitMargin'] = ProfitMargin;
    data['OperatingMarginTTM'] = OperatingMarginTTM;
    data['ReturnOnAssetsTTM'] = ReturnOnAssetsTTM;
    data['ReturnOnEquityTTM'] = ReturnOnEquityTTM;
    data['RevenueTTM'] = RevenueTTM;
    data['GrossProfitTTM'] = GrossProfitTTM;
    data['DilutedEPSTTM'] = DilutedEPSTTM;
    data['QuarterlyEarningsGrowthYOY'] = QuarterlyEarningsGrowthYOY;
    data['QuarterlyRevenueGrowthYOY'] = QuarterlyRevenueGrowthYOY;
    data['AnalystTargetPrice'] = AnalystTargetPrice;
    data['TrailingPE'] = TrailingPE;
    data['ForwardPE'] = ForwardPE;
    data['PriceToSalesRatioTTM'] = PriceToSalesRatioTTM;
    data['PriceToBookRatio'] = PriceToBookRatio;
    data['EVToRevenue'] = EVToRevenue;
    data['EVToEBITDA'] = EVToEBITDA;
    data['Beta'] = Beta;
    data['52WeekHigh'] = WeekHigh52;
    data['52WeekLow'] = WeekLow52;
    data['50DayMovingAverage'] = DayMovingAverage50;
    data['200DayMovingAverage'] = DayMovingAverage200;
    data['SharesOutstanding'] = SharesOutstanding;
    data['DividendDate'] = DividendDate;
    data['ExDividendDate'] = ExDividendDate;
    return data;
  }
}
