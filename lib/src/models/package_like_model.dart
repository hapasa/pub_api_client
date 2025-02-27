/// Package like

class PackageLike {
  final String package;
  final bool liked;
  const PackageLike({
    required this.package,
    required this.liked,
  });

  Map<String, dynamic> toMap() => {
        'package': package,
        'liked': liked,
      };

  factory PackageLike.fromMap(Map<String, dynamic> map) => PackageLike(
        package: map['package'] as String? ?? '',
        liked: map['liked'] as bool? ?? false,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PackageLike &&
        other.package == package &&
        other.liked == liked;
  }

  @override
  int get hashCode => package.hashCode ^ liked.hashCode;

  @override
  String toString() => 'PackageLike(package: $package, liked: $liked)';
}
