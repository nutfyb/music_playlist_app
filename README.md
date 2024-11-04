# Music Playlist App

A Flutter application for managing and playing music playlists with Spotify integration.

## UI Showcase
<div style="display: flex; justify-content: space-between;">
  <img src="https://github.com/user-attachments/assets/9b1ae23d-3ff6-42af-a4ec-0b132bf2a990" width="250" alt="Home Screen">
  <img src="https://github.com/user-attachments/assets/1401dc7b-0203-4298-904a-66db9832e134" width="250" alt="Playlist View">
  <img src="https://github.com/user-attachments/assets/3fda48d0-9e51-4bc6-86ae-266573d5c95c" width="250" alt="Player Screen">
</div>


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


