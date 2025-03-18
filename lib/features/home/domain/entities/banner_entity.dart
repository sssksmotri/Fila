import 'package:equatable/equatable.dart';

class BannerEntity extends Equatable {
  final int id;
  final String image;
  final String title;
  final String? url;

  const BannerEntity({
    required this.id,
    required this.title,
    required this.image,
    this.url,
  });

  @override
  List<Object?> get props => [
        id,
      ];
}
