class ProductAttributeModel {
  String? name;
  final List<String>? values;

  ProductAttributeModel({this.name, this.values});

  /// Json Format
  Map<String, dynamic> toJson() {
    return {
      'Name': name,
      'Values': values,
    };
  }

  /// Map Json oriented document snapshot from Firebase to Model
  factory ProductAttributeModel.fromJson(Map<String, dynamic> document) {
    final data = document;
    if (data.isEmpty) return ProductAttributeModel();
    return ProductAttributeModel(
      name: data.containsKey('Name') ? data['Name'] : null,
      values: List<String>.from(data['Values'] ?? []),
    );
  }
}
