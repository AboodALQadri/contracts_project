import 'package:mahmoud/models/company_data_model.dart';

import 'contract_data_model.dart';

class CompanyModel {
  late bool status;
  late int code;
  late String msg;
  late CompanyDataModel companyDataModel;
  late List<ContractDataModel> contractDataModel;

  CompanyModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    msg = json['msg'];
    companyDataModel = json['company_data'];
    contractDataModel = json['contract_data'];
  }
}
