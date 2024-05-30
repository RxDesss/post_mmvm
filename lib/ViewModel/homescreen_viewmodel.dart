
import 'package:flutter/material.dart';
import 'package:post_mmvm/CommanMethod/comman.dart';
import 'package:post_mmvm/ModelClass/homescreen_modelclass.dart';
import 'package:post_mmvm/Repository/homescreen_repo.dart';

class HomescreenViewmodel extends ChangeNotifier{
 final HomescreenRepo _homescreenRepo=HomescreenRepo();
 HomescreenModelclass? _loginapidata;
   bool _isLoading=false;
   String? _errMessage;

HomescreenModelclass? get loginApiData=>_loginapidata;
bool get isLoading=>_isLoading;
String? get errormessage=>_errMessage;

 Future<void>fetchLoginApi(bodydata) async{
  _isLoading=true;
  _errMessage=null;
  notifyListeners();
  try{
    String endpoint="Dental_API.php?action=login";
    Object headersdata={'Content-Type': 'application/json'};
    final result=await _homescreenRepo.postcall(endpoint, headersdata, bodydata);
    print("post api data notDe : ${result}");
    if(result != null){
      _loginapidata=HomescreenModelclass.fromJson(result);
      print("Final login data :${_loginapidata!.data![0].emailId}");
      Comman.sucesstoast("Login data Store sucessfully");
    }else{
      Comman.errortoast("Data should be empty in view model");
      _errMessage="Data should be empty in view model";
    }
  }catch(e){
    Comman.errortoast("Not Data comes in viewModel");
  _errMessage="Not Data comes in viewModel";
  }finally{
  _isLoading=false;
  notifyListeners();
  }
 }
}