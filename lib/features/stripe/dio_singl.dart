import "package:dio/dio.dart";
import "package:flutter_dotenv/flutter_dotenv.dart";
import "package:pretty_dio_logger/pretty_dio_logger.dart";

class DioSingleton {
  factory DioSingleton() {
    return _singleton;
  }

  DioSingleton._internal();
  static final DioSingleton _singleton = DioSingleton._internal();

  final Dio dio = Dio();
  final String stripeBaseURL = "https://api.stripe.com/";
  final String stripeBaseVer = "v1/";
  final String stripeBaseEnd = "payment_intents";

  Future<void> addPrettyDioLoggerInterceptor() {
    dio.interceptors.add(
      PrettyDioLogger(),
    );
    return Future<void>.value();
  }

  Future<Map<String, dynamic>> makePaymentIntent({
    required double amount,
    required String currency,
    required void Function(String) errorMessageFunction,
  }) async {
    final Map<String, dynamic> tempPaymentIntent = <String, dynamic>{};
    Response<dynamic> response = Response<dynamic>(
      requestOptions: RequestOptions(path: ""),
    );
    String secretKey = dotenv.env["STRIPE_SECRET_KEY"] ?? "";
    try {
      response = await dio.post(
        stripeBaseURL + stripeBaseVer + stripeBaseEnd,
        queryParameters: <String, dynamic>{
          "amount": amount.toInt() * 100,
          "currency": "INR",
          "payment_method_types[]": "card",
          "receipt_email": "johncena@yopmail.com",
          "description": "sample description",
          "shipping": <String, dynamic>{
            "name": "John Cena",
            "phone": "+919090909090",
            "tracking_number": "0123456789",
            "address": <String, dynamic>{
              "line1": "ABC line1",
              "line2": "ABC line2",
              "city": "ABC city",
              "state": "ABC state",
              "country": "ABC country",
              "postal_code": "ABC postal_code",
            }
          }
        },
        options: Options(
          headers: <String, dynamic>{
            "Content-Type": "application/json",
            "Authorization": "Bearer $secretKey",
          },
        ),
      );
      tempPaymentIntent.addAll(response.data);
    } on DioException catch (error) {
      StripeErrorModel stripeErrorModel = StripeErrorModel();
      stripeErrorModel = StripeErrorModel.fromJson(error.response?.data);
      errorMessageFunction(stripeErrorModel.error?.message ?? "Unknown Error");
    }
    return Future<Map<String, dynamic>>.value(tempPaymentIntent);
  }
}

class StripeErrorModel {
  StripeErrorModel({this.error});

  StripeErrorModel.fromJson(Map<String, dynamic> json) {
    error = json["error"] != null ? Error.fromJson(json["error"]) : null;
  }

  Error? error;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (error != null) {
      data["error"] = error!.toJson();
    }
    return data;
  }
}

class Error {
  Error({
    this.code,
    this.docUrl,
    this.message,
    this.param,
    this.requestLogUrl,
    this.type,
  });

  Error.fromJson(Map<String, dynamic> json) {
    code = json["code"];
    docUrl = json["doc_url"];
    message = json["message"];
    param = json["param"];
    requestLogUrl = json["request_log_url"];
    type = json["type"];
  }

  String? code;
  String? docUrl;
  String? message;
  String? param;
  String? requestLogUrl;
  String? type;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["code"] = code;
    data["doc_url"] = docUrl;
    data["message"] = message;
    data["param"] = param;
    data["request_log_url"] = requestLogUrl;
    data["type"] = type;
    return data;
  }
}
