part of 'number_bloc.dart';

class NumberEvent {}
class GetFact extends NumberEvent {
  final String number;

  GetFact({required this.number});
}