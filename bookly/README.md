# Bookly

A Flutter book-browsing demo app (Bookly) built with a feature-based structure.

## Tech stack
- Flutter & Dart (SDK)
- State management: flutter_riverpod (legacy usage in parts)
- Networking: Dio
- Routing: go_router
- JSON / functional types: dartz
- UI: google_fonts, flutter_svg
- Platform: Android (Gradle build)

## Quick start

1. Install Flutter and ensure it is on your PATH.
2. From the project root run:
   ```sh
   flutter pub get
   flutter run
   ```
3. To build an Android APK:
   ```sh
   flutter build apk --release
   ```

## Key files & entry points
- App entry: [lib/main.dart](lib/main.dart) (`main()` starts the app)
- Router: [`router`](lib/core/utils/router.dart) — [lib/core/utils/router.dart](lib/core/utils/router.dart)
- API helper: [lib/core/api_service.dart](lib/core/api_service.dart) (`ApiService`)
- Home feature:
  - Home screen: [`HomeScreen`](lib/features/home/view/home_screen.dart) — [lib/features/home/view/home_screen.dart](lib/features/home/view/home_screen.dart)
  - Book details: [`BookDetailsScreen`](lib/features/home/view/book_details_screen.dart) — [lib/features/home/view/book_details_screen.dart](lib/features/home/view/book_details_screen.dart)
  - Best seller list widget: [`BestSellerList`](lib/features/home/view/widgets/best_seller_list.dart) — [lib/features/home/view/widgets/best_seller_list.dart](lib/features/home/view/widgets/best_seller_list.dart)
  - Horizontal books list: [`BooksHorizontalList`](lib/features/home/view/widgets/books_horizontal_list.dart) — [lib/features/home/view/widgets/books_horizontal_list.dart](lib/features/home/view/widgets/books_horizontal_list.dart)
- Home data & state:
  - Model: [lib/features/home/data/model/book_model.dart](lib/features/home/data/model/book_model.dart)
  - Repository impl: [lib/features/home/data/repository/home_repo_impl.dart](lib/features/home/data/repository/home_repo_impl.dart)
  - Notifiers / states: [lib/features/home/view_model/providers.dart](lib/features/home/view_model/providers.dart) — contains providers such as `allBooksNotifierProvider` and `bestSellerBooksNotifierProvider`
    - [`AllBooksNotifier`](lib/features/home/view_model/all_books_notifier.dart) — [lib/features/home/view_model/all_books_notifier.dart](lib/features/home/view_model/all_books_notifier.dart)
    - [`BestSellerBooksNotifier`](lib/features/home/view_model/best_seller_books_notifier.dart) — [lib/features/home/view_model/best_seller_books_notifier.dart](lib/features/home/view_model/best_seller_books_notifier.dart)

- Splash feature:
  - Screen: [`SplashScreen`](lib/features/splash/view/splash_screen.dart) — [lib/features/splash/view/splash_screen.dart](lib/features/splash/view/splash_screen.dart)
  - Animation providers: [lib/features/splash/view_model/providers.dart](lib/features/splash/view_model/providers.dart)

## Project structure (important folders)
- lib/
  - core/ — shared utilities & services ([lib/core/utils/router.dart](lib/core/utils/router.dart), [lib/core/api_service.dart](lib/core/api_service.dart))
  - features/ — feature-based modules (splash, home)
  - widgets/ — shared widgets

## Notes
- State uses Riverpod notifiers (legacy import variants in some files).
- Networking logic is centralized in `ApiService` and consumed by repository implementations.
- Routes use `go_router`; book details are passed via `GoRouterState.extra` (see [`router`](lib/core/utils/router.dart)).
- Inspect providers and notifiers in [lib/features/home/view_model/providers.dart](lib/features/home/view_model/providers.dart) and individual notifier files linked above.

If you want, this README can be extended with badges, CI instructions, or sample screenshots.
