class DeliveryZoneEntity {
  final int id;
  final String title;
  final String fill;
  final String fillOpacity;
  final String stroke;
  final String? price;
  final String polygon;

  DeliveryZoneEntity({
    required this.id,
    required this.title,
    required this.fill,
    required this.fillOpacity,
    required this.stroke,
    this.price,
    required this.polygon,
  });
}
