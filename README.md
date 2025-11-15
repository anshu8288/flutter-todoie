# To-Doie App

A minimal Flutter to‑do list application that demonstrates adding, editing, and deleting tasks.

## Quick Start

Prerequisites:
- Flutter SDK (compatible with the project's SDK constraints in [pubspec.yaml](pubspec.yaml))

Run the app:
```sh
flutter pub get
flutter run
```

Build for a specific platform:
```sh
flutter build apk    # Android
flutter build ios    # iOS (macOS required)
```

## Project overview

Main entry:
- [lib/main.dart](lib/main.dart) — contains [`MyApp`](lib/main.dart)

Core pages / widgets:
- [lib/root_page.dart](lib/root_page.dart) — contains [`RootPage`](lib/root_page.dart) and stateful logic such as [`_RootPageState.todoList`](lib/root_page.dart), [`_RootPageState.addItem`](lib/root_page.dart), [`_RootPageState.updateItem`](lib/root_page.dart), and [`_RootPageState.deleteItem`](lib/root_page.dart).
- [lib/list.dart](lib/list.dart) — contains the `ToDoList` widget: [`ToDoList`](lib/list.dart)
- [lib/create_to_do.dart](lib/create_to_do.dart) — `CreateToDo` input widget used by [`RootPage`](lib/root_page.dart)

Configuration:
- [pubspec.yaml](pubspec.yaml)
- [analysis_options.yaml](analysis_options.yaml)

## Features

- Add new tasks using the input field (see [`CreateToDo`](lib/create_to_do.dart)).
- Edit existing tasks: tapping the edit icon populates the input with the selected task for update (logic in [`_RootPageState.updateItem`](lib/root_page.dart)).
- Delete tasks with the delete icon (logic in [`_RootPageState.deleteItem`](lib/root_page.dart)).
- Simple, dependency‑free UI using Flutter's Material components.

## Code pointers

- App bootstrap: [`MyApp`](lib/main.dart)
- Main state and list management: [`RootPage`](lib/root_page.dart) — `todoList` is the in‑memory list of tasks.
- List rendering and item actions: [`ToDoList`](lib/list.dart)
- Input & add/update UI: [`CreateToDo`](lib/create_to_do.dart)

If you need to persist tasks, consider adding local storage (e.g., `shared_preferences` or a small database such as `sqflite`).

## Contributing

1. Fork the repository.
2. Create a branch for your change.
3. Add tests if applicable.
4. Open a pull request with a clear description.

## License

This project has no license specified. Add a LICENSE file as needed.