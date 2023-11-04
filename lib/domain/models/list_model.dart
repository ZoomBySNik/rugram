import 'package:equatable/equatable.dart';

class ListModel<T> extends Equatable {
  /// Model
  final List<T> data;

  /// Total items in DB
  final int total;

  /// Current page
  final int page;

  /// Number of items on page
  final int limit;

  const ListModel({
    required this.data,
    required this.total,
    required this.page,
    required this.limit,
  });

  @override
  List<Object?> get props => [
        data,
        total,
        page,
        limit,
      ];
}
