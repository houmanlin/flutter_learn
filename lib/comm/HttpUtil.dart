
import 'dart:convert';

import 'package:city_shop/comm/ResultCode.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'GlobalConfig.dart';



class HttpUtil{
  static HttpUtil _instance;


  static HttpUtil getInstance(){
    if (_instance == null){
      _instance = HttpUtil();
    }
    return _instance;
  }



  Dio dio = new Dio();


  HttpUtil(){
    dio.options.baseUrl = "https://cs.jicanchu.net/client";
    dio.options.connectTimeout = 5000;
    dio.options.receiveTimeout = 3000;

    //设置请求类型
    dio.options.contentType    = Headers.formUrlEncodedContentType;

  }



  get(String url, Map params, Function successCallBack, Function errorCallBack) async {

    _requestHttp(url, successCallBack, 'get',params ,errorCallBack);
  }


  post(String url, Map params, Function successCallBack, Function errorCallBack) async{

    _requestHttp(url, successCallBack, 'post', params, errorCallBack);
  }




  _requestHttp(String url, Function successCallBack, [String method, Map params, Function errorCallBack]) async {


    Response response;
    SharedPreferences _sharedpreferences = await SharedPreferences.getInstance();

    try{


      if(method == "get"){
        if(params != null && params.isNotEmpty){
            response = await dio.get(url, queryParameters: params);
        }else{
          response = await dio.get(url);
        }
      }


      if(method == "post"){
        if(params != null && params.isNotEmpty){
          response = await dio.post(url, data: params);
        }else{
          response = await dio.post(url);
        }
      }


    }on DioError catch(error){
      Response errorResponse;
      //请求错误
      if(error.response != null){
        errorResponse = error.response;
      }else{
        errorResponse = new Response(statusCode: 666);
      }


      //请求超时情况下   statusCode = -1;
      if(error.type == DioErrorType.CONNECT_TIMEOUT){
        errorResponse.statusCode = ResultCode.CONNECT_TIMEOUT;
      }


      //请求超时情况下   statusCode = -2;
      if(error.type == DioErrorType.RECEIVE_TIMEOUT){
        errorResponse.statusCode = ResultCode.RECEIVE_TIMEOUT;
      }


      if (GlobalConfig.isDebug) {
        print('请求异常: ' + error.toString());
        print('请求异常url: ' + url);
        print('请求头: ' + dio.options.headers.toString());
        print('method: ' + dio.options.method);
      }
      _error(errorCallBack, error.message);
      return '';


    }




    if(GlobalConfig.isDebug){
      print("————————————————————请求URL————————————————————————————");
      print("请求url" + url);

      print("————————————————————请求headers————————————————————————");
      print("请求头" + dio.options.headers.toString());
      if (params != null && params.isNotEmpty){
        print("————————————————————请求参数——————————————————————————");
        print(params.toString());
      }

      if(response != null){
        print("————————————————————返回参数——————————————————————————");
        print(response.toString());
      }

    }

    //解析返回参数
    String dataString = json.encode(response.data);
    Map<String, dynamic> dataMap = json.decode(dataString);
    print(dataMap);
    if(dataMap != null || dataMap["code"] == "100000"){
      if (dataMap["token"] != null || dataMap["token"] != "") {
        _sharedpreferences.setString("token", dataMap["token"]);
      }
      successCallBack(dataMap);

    }else{

      _error(errorCallBack, "错误码：${dataMap["errorCode"].toString()},${response.data.toString()}");
    }

  }


  _error (Function errorCallBack, String error){
    if(errorCallBack != null){
      errorCallBack(error);
    }
  }
}