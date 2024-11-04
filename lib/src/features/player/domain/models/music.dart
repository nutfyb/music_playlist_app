class Music {
  final String id;
  final String title;
  final String artist;
  final String artworkUrl;
  final String audioUrl;
  final int durationMs;
  const Music({
    required this.id,
    required this.title,
    required this.artist,
    required this.artworkUrl,
    required this.audioUrl,
    required this.durationMs,
  });

  // Optional: Add fromJson constructor if you'll be parsing JSON data
  factory Music.fromJson(Map<String, dynamic> json) {
    return Music(
      id: json['id'] as String,
      title: json['title'] as String,
      artist: json['artist'] as String,
      artworkUrl: json['artworkUrl'] as String,
      audioUrl: json['audioUrl'] as String,
      durationMs: json['durationMs'] as int,
    );
  }

  // Optional: Add toJson method if you'll be serializing to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'artist': artist,
      'artworkUrl': artworkUrl,
      'audioUrl': audioUrl,
      'durationMs': durationMs,
    };
  }
} 