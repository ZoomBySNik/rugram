import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rugram/domain/models/list_model.dart' as domain;

part 'list_model.freezed.dart';

@freezed
class ListModel with _$ListModel {
  const factory ListModel({
    @Default([]) List<dynamic> data,
    @Default(0) num total,
    @Default(0) num page,
    @Default(0) num limit,
  }) = _ListModel;

  factory ListModel.fromJson(Map<String, dynamic> json) {
    return ListModel(
      data: json['data'] as List<dynamic>? ?? [],
      total: json['total'] as num? ?? 0,
      page: json['page'] as num? ?? 0,
      limit: json['limit'] as num? ?? 0,
    );
  }
}

extension ListModelEntity on ListModel {
  domain.ListModel toEntity<T>(T Function(dynamic a) fromJson) {
    return domain.ListModel<T>(
      data: data.map((item) => fromJson(item)).toList(),
      total: total.toInt(),
      page: page.toInt(),
      limit: limit.toInt(),
    );
  }
}
