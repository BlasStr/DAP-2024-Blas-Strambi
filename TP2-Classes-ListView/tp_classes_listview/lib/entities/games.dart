class Games {
  final String id;
  final String title;
  final String developer;
  final String year;
  final String? poster;

  Games({
    required this.id,
    required this.title,
    required this.developer,
    required this.year,
    this.poster,
  });

  String mostrarInfo() {
    return (id + title + developer + year + poster.toString());
  }
}
