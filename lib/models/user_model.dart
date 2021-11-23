/// Verification : [{"passward":"c4ca4238a0b923820dcc509a6f75849b","serial_number":""}]
/// CompanyCurrency : [{"ar_currency":"جنيه مصري","en_currency":"Egyptian pounds"}]
/// CpuNum : [{"MaxNum":89}]

class UserModel {
  UserModel({
      List<Verification>? verification, 
      List<CompanyCurrency>? companyCurrency, 
      List<CpuNum>? cpuNum,}){
    _verification = verification;
    _companyCurrency = companyCurrency;
    _cpuNum = cpuNum;
}

  UserModel.fromJson(dynamic json) {
    if (json['Verification'] != null) {
      _verification = [];
      json['Verification'].forEach((v) {
        _verification?.add(Verification.fromJson(v));
      });
    }
    if (json['CompanyCurrency'] != null) {
      _companyCurrency = [];
      json['CompanyCurrency'].forEach((v) {
        _companyCurrency?.add(CompanyCurrency.fromJson(v));
      });
    }
    if (json['CpuNum'] != null) {
      _cpuNum = [];
      json['CpuNum'].forEach((v) {
        _cpuNum?.add(CpuNum.fromJson(v));
      });
    }
  }
  List<Verification>? _verification;
  List<CompanyCurrency>? _companyCurrency;
  List<CpuNum>? _cpuNum;

  List<Verification>? get verification => _verification;
  List<CompanyCurrency>? get companyCurrency => _companyCurrency;
  List<CpuNum>? get cpuNum => _cpuNum;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_verification != null) {
      map['Verification'] = _verification?.map((v) => v.toJson()).toList();
    }
    if (_companyCurrency != null) {
      map['CompanyCurrency'] = _companyCurrency?.map((v) => v.toJson()).toList();
    }
    if (_cpuNum != null) {
      map['CpuNum'] = _cpuNum?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// MaxNum : 89

class CpuNum {
  CpuNum({
      int? maxNum,}){
    _maxNum = maxNum;
}

  CpuNum.fromJson(dynamic json) {
    _maxNum = json['MaxNum'];
  }
  int? _maxNum;

  int? get maxNum => _maxNum;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['MaxNum'] = _maxNum;
    return map;
  }

}

/// ar_currency : "جنيه مصري"
/// en_currency : "Egyptian pounds"

class CompanyCurrency {
  CompanyCurrency({
      String? arCurrency, 
      String? enCurrency,}){
    _arCurrency = arCurrency;
    _enCurrency = enCurrency;
}

  CompanyCurrency.fromJson(dynamic json) {
    _arCurrency = json['ar_currency'];
    _enCurrency = json['en_currency'];
  }
  String? _arCurrency;
  String? _enCurrency;

  String? get arCurrency => _arCurrency;
  String? get enCurrency => _enCurrency;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ar_currency'] = _arCurrency;
    map['en_currency'] = _enCurrency;
    return map;
  }

}

/// passward : "c4ca4238a0b923820dcc509a6f75849b"
/// serial_number : ""

class Verification {
  Verification({
      String? passward, 
      String? serialNumber,}){
    _passward = passward;
    _serialNumber = serialNumber;
}

  Verification.fromJson(dynamic json) {
    _passward = json['passward'];
    _serialNumber = json['serial_number'];
  }
  String? _passward;
  String? _serialNumber;

  String? get passward => _passward;
  String? get serialNumber => _serialNumber;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['passward'] = _passward;
    map['serial_number'] = _serialNumber;
    return map;
  }

}