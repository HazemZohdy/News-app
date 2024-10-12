class ArticalModel {
  final String? image;
  final String title;
  final String? subTitle;

  const ArticalModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });

  factory ArticalModel.fromJson(json) {
    return ArticalModel(
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
    );
  }
}
