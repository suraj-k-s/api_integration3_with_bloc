import 'dart:convert';

import 'package:api_integration3/get_number_fact/get_number_fact.dart';
import 'package:http/http.dart' as http;

Future<GetNumberFact> getNumberFact({required String number}) async {
  final response =
      await http.get(Uri.parse('http://numbersapi.com/$number?json'));
      final result=await jsonDecode(response.body) as Map<String, dynamic>;
      final data= GetNumberFact.fromJson(result);
      return data;
}
