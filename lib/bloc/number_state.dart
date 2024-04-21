// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'number_bloc.dart';


class NumberState {
  final String text,type;
  final int number;
  final bool found;
  NumberState({
    required this.text,
    required this.type,
    required this.number,
    required this.found,
  });
}

final class NumberInitial extends NumberState {
  NumberInitial():super(text: '',number: 0,found: false,type: '');
}
