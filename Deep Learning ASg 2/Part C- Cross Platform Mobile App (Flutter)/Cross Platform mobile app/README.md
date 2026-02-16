# AI Study Planner App 🎓

A cross-platform Flutter application that uses Google Gemini AI to generate personalized study plans based on your goals.

## 🚀 Getting Started

### Prerequisites
-   [Flutter SDK](https://flutter.dev/docs/get-started/install) installed.
-   An IDE (VS Code or Android Studio).
-   A Google Gemini API Key.

### 🔑 API Key Setup
1.  Go to [Google AI Studio](https://makersuite.google.com/app/apikey).
2.  Create a new API key (it's free!).
3.  Open `lib/services/gemini_service.dart`.
4.  Replace `'YOUR_API_KEY_HERE'` with your actual API key:
    ```dart
    static const String _apiKey = 'AIzaSy...'; 
    ```

### 🏃‍♂️ Running the App
1.  Open your terminal in the project folder.
2.  Install dependencies:
    ```bash
    flutter pub get
    ```
3.  Run the app:
    ```bash
    flutter run
    ```
    -   Select your device (Chrome, iOS Simulator, or Android Emulator) when prompted.

## 📱 Features
-   **Goal Analysis**: Understands your study objective.
-   **Task Breakdown**: Splits goals into actionable steps.
-   **Smart Prioritization**: Assigns High/Medium/Low priority.
-   **Timeline Suggestions**: estimates how long tasks will take.

## 📂 Project Structure
-   `lib/main.dart`: Entry point.
-   `lib/screens/`: UI screens (Home).
-   `lib/widgets/`: Reusable components (TaskCard).
-   `lib/services/`: API handling (Gemini).
-   `lib/models/`: Data structures (StudyTask).

## ⚠️ Troubleshooting
-   **API Error**: Ensure your API key is correct and valid.
-   **Network Error**: Check your internet connection.
-   **Dependency Error**: Run `flutter pub get` again.
