import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'dart:convert';

import 'package:api_integration3/get_number_fact/get_number_fact.dart';
import 'package:http/http.dart' as http;

part 'number_event.dart';
part 'number_state.dart';

class NumberBloc extends Bloc<NumberEvent, NumberState> {
  NumberBloc() : super(NumberInitial()) {
    on<GetFact>((event, emit) async{
      final result=await getNumberDetails(event.number);
      return emit(NumberState(text: result.text!, type: result.type!, number: result.number!, found: result.found!));
    });
  }
  Future<GetNumberFact> getNumberDetails(String number)async{
    final response =
      await http.get(Uri.parse('http://numbersapi.com/$number?json'));
      final result=await jsonDecode(response.body) as Map<String, dynamic>;
      final data= GetNumberFact.fromJson(result);
      return data;
  }
}
