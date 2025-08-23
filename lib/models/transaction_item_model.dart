class TransactionItemModel {
  final String title;
  final String subtitle;
  final String price;
  final bool isWithdrawn;

  const TransactionItemModel({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.isWithdrawn,
  });
}
