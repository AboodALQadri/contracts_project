class ContractPaymentModel {
  late String id;
  late String contractId;
  late String sendNumber;
  late String sendDate;
  late String amount;
  late String sendNotes;
  late String companyName;
  late String realName;
  late String unitNumber;
  late String fromType;
  late String unitFullName;
  late String companyNameSend;
  late String currencyChar;
  late String currencyName;

  ContractPaymentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    contractId = json['contract_id'];
    sendNumber = json['sand_number'];
    sendDate = json['sand_date'];
    amount = json['amount'];
    sendNotes = json['sand_notes'];
    companyName = json['company_name'];
    realName = json['real_name'];
    unitNumber = json['unit_number'];
    fromType = json['from_type'];
    unitFullName = json['unit_full_name'];
    companyNameSend = json['company_name_sand'];
    currencyChar = json['currency_char'];
    currencyName = json['currency_name'];
  }
}
