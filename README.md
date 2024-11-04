# Music Playlist App

A Flutter application for managing and playing music playlists with Spotify integration.

## Features

- Spotify integration for accessing music library
- Create and manage custom playlists
- Audio playback controls
- Responsive design for multiple screen sizes

## Tech Stack

- **Framework**: Flutter (>=3.3.0)
- **State Management**: 
  - flutter_bloc
  - hydrated_bloc for persistence
  - equatable for value comparisons
- **Dependency Injection**:
  - get_it
  - injectable
- **API Integration**:
  - dio
  - retrofit
  - spotify SDK
- **Audio**:
  - audio_service
  - audioplayers
  - audio_video_progress_bar
- **Error Tracking**: sentry_flutter
- **UI Components**:
  - responsive_framework
  - palette_generator
- **Code Generation**:
  - freezed
  - json_serializable
  - build_runner

## Prerequisites

- Flutter SDK (>=3.3.0)
- Dart SDK (>=3.3.0)
- A Spotify Developer account and API credentials

## Setup

1. Clone the repository
2. Set up environment variables for Spotify API credentials
3. Run `flutter pub get` to install dependencies
4. Run `flutter pub run build_runner build` to generate code
5. Run the app using `flutter run`


