class CompanyDataModel {
  late String companyCode;
  late String companyName;
  late String authorised;
  late String companyAddress;

  CompanyDataModel.fromJson(Map<String, dynamic> json) {
    companyCode = json['company_code'];
    companyName = json['company_name'];
    authorised = json['authorised'];
    companyAddress = json['company_address'];
  }
}
