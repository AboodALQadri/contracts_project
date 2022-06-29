import 'contract_payment_model.dart';

class ContractDataModel {
  late String contractNumber;
  late String id;
  late String statusContract;
  late String yearNo;
  late String startDate;
  late String endDate;
  late String depositAmount;
  late String unitFullName;
  late String realName;
  late String unitFullAmount;
  late List<ContractPaymentModel> contractPaymentModel;

  ContractDataModel.fromJson(Map<String, dynamic> json) {
    contractNumber = json['contract_number'];
    id = json['id'];
    statusContract = json['status_contract'];
    yearNo = json['year_no'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    depositAmount = json['deposit_amount'];
    unitFullName = json['unit_full_name'];
    realName = json['real_name'];
    unitFullAmount = json['unit_full_amount'];
    contractPaymentModel = json['payments'];
  }
}
