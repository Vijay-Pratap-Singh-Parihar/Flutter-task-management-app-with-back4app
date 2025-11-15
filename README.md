# Task Management App

**Author:** Vijay Pratap Singh Parihar  
**Email:** vijay19cs130@gmail.com  
**GitHub:** [vijay-pratap-singh-parihar](https://github.com/vijay-pratap-singh-parihar)
**Presentation:** [Assignment-Presentation](https://wilpbitspilaniacin0-my.sharepoint.com/:p:/g/personal/2024tm93654_wilp_bits-pilani_ac_in/Ebl21AgQS5NNh3t5GVXRjVIBfQGKpKCL3pNJh5SVpw0IxQ?e=KTsRMD&nav=eyJzSWQiOjI1Nn0)

## Description
* A Flutter Task App with [Parse](https://parseplatform.org/) ([Back4app](https://back4app.com)) as the backend demonstrating CRUD operations.
* Getx State Management
 
## Objective
 This repo will be useful to developers looking for an alternative to backend services like Firebase as they will enjoy building apps without any third party libraries when they switch to using RestFUL APIs provided by the Back4App platform.

## ScreenShots
<table>
    <tr>
        <td><img width=300 src="https://github.com/vijay-pratap-singh-parihar/Flutter-task-management-app-with-back4app/blob/main/screenshots/image1.jpg"/></td>
        <td><img width=300 src="https://github.com/vijay-pratap-singh-parihar/Flutter-task-management-app-with-back4app/blob/main/screenshots/image2.jpg"/></td>
        <td><img width=300 src="https://github.com/vijay-pratap-singh-parihar/Flutter-task-management-app-with-back4app/blob/main/screenshots/image3.jpg"/></td>
    </tr>
</table>

## Features

This Flutter Task Management App includes the following features:

### Core Features
1. **Splash Screen** - Beautiful animated splash screen when the app launches
2. **Task List View** - View all your tasks in a clean, organized list
3. **Create Tasks** - Add new tasks with title and content
4. **Update Tasks** - Edit existing tasks by tapping on them
5. **Delete Tasks** - Remove tasks with confirmation dialog
6. **Search Tasks** - Search through your tasks using the search icon
7. **Real-time Sync** - Tasks are synced with Back4App backend in real-time
8. **Offline Support** - App gracefully handles network connectivity issues

### Technical Features
- **State Management** - Uses GetX for efficient state management
- **RESTful API Integration** - Connects to Parse Server via Back4App
- **CRUD Operations** - Complete Create, Read, Update, Delete functionality
- **Material Design** - Modern, clean UI following Material Design principles
- **Cross-platform** - Works on Android, iOS, Web, and Windows

## Prerequisites

Before you begin, ensure you have the following installed:

- **Flutter SDK** (latest stable version) - [Install Flutter](https://flutter.dev/docs/get-started/install)
- **Dart SDK** (comes with Flutter)
- **Android Studio** (for Android development) or **Xcode** (for iOS development on Mac)
- **Back4App Account** - Free account at [back4app.com](https://back4app.com)
- **Git** (for cloning the repository)

## Setup Instructions

### Step 1: Clone the Repository

```bash
git clone https://github.com/vijay-pratap-singh-parihar/Flutter-task-management-app-with-back4app.git
cd Flutter-task-management-app-with-back4app
```

### Step 2: Back4App Backend Setup

1. **Sign Up/Login** to [Back4App](https://back4app.com)
2. **Create a New App**:
   - Click "Build a new app" button
   - Give your app a name (e.g., "TaskManager")
   - Click "Create"
3. **Create Database Class**:
   - In the Back4App Console, navigate to **Database** section
   - By default, you'll see `Role` and `User` classes
   - Click **Create a class** button
   - Name it `task` (lowercase) and click "Create class"
4. **Add Columns to Task Class**:
   - Click on the `task` class you just created
   - Click **Add a new column** button
   - Add two columns:
     - Column 1:
       - Column name: `title`
       - Type: `String`
       - Click "Save"
     - Column 2:
       - Column name: `content`
       - Type: `String`
       - Click "Save"
5. **Get API Credentials**:
   - Navigate to **App Settings** → **Security & Keys**
   - Copy the **Application ID**
   - Copy the **REST API Key**

### Step 3: Configure API Credentials

1. Open the file: `lib/app/constants/api_constants.dart`
2. Replace the placeholders:
   ```dart
   static const parseAppID = "YOUR_PARSE_APPLICATION_ID";  // Paste your Application ID here
   static const parseApiKey = "YOUR_PARSE_REST_API_KEY";   // Paste your REST API Key here
   ```

### Step 4: Install Dependencies

```bash
flutter pub get
```

### Step 5: Run the App

#### For Android:
```bash
flutter run
```

#### For iOS (Mac only):
```bash
flutter run -d ios
```

#### For Web:
```bash
flutter run -d chrome
```

#### For Windows:
```bash
flutter run -d windows
```

### Step 6: Verify the Setup

1. The app should launch with a splash screen
2. You should see the Home screen with an empty task list
3. Tap the **+ (Plus)** button to create a new task
4. Fill in the title and content, then tap **Save**
5. Your task should appear in the list and be saved to Back4App

## Demo Video Script

Here's a suggested flow for your demo video:

### 1. Introduction (0:00 - 0:30)
- Show the app icon and splash screen
- Brief introduction: "Task Management App built with Flutter and Back4App"

### 2. Home Screen Overview (0:30 - 1:00)
- Show the home screen with task list
- Explain the clean, minimalist UI
- Show empty state: "It's empty here, no tasks yet"

### 3. Creating a Task (1:00 - 2:00)
- Tap the **+ (Floating Action Button)**
- Show the task creation screen
- Enter task title: "Complete Project Documentation"
- Enter task content: "Write comprehensive documentation for the Flutter app"
- Tap **Save** button
- Show success message and task appearing in the list

### 4. Creating Multiple Tasks (2:00 - 3:00)
- Create 2-3 more tasks with different titles and contents
- Show the list growing with all tasks
- Highlight the task icon and formatting

### 5. Updating a Task (3:00 - 4:00)
- Tap on an existing task
- Show the edit screen with pre-filled data
- Modify the title or content
- Tap **Save** button
- Show the updated task in the list

### 6. Search Functionality (4:00 - 4:30)
- Tap the **Search icon** in the app bar
- Type to search for a specific task
- Show filtered results
- Clear search to show all tasks

### 7. Deleting a Task (4:30 - 5:00)
- Tap on a task to edit
- Tap the **Delete icon** (trash) in the app bar
- Show the confirmation dialog
- Confirm deletion
- Show task removed from the list

### 8. Real-time Sync Demonstration (5:00 - 5:30)
- Mention that all data is synced with Back4App backend
- Show tasks persisting after app restart
- (Optional) Show Back4App console with saved data

### 9. Features Summary (5:30 - 6:00)
- Recap all features:
  - Create, Read, Update, Delete (CRUD)
  - Search functionality
  - Real-time backend sync
  - Beautiful Material Design UI
  - Cross-platform support

### 10. Closing (6:00 - 6:30)
- Show GitHub repository link
- Mention the tech stack: Flutter, GetX, Back4App, Parse Server
- Call to action for contributions or questions

## Troubleshooting

### Common Issues:

1. **"YOUR_PARSE_APPLICATION_ID" not replaced**:
   - Make sure you've updated `api_constants.dart` with your actual credentials
   - Restart the app after making changes

2. **Tasks not saving**:
   - Verify your internet connection
   - Check that Back4App credentials are correct
   - Ensure the `task` class and columns (`title`, `content`) exist in Back4App

3. **Build errors**:
   - Run `flutter clean` and then `flutter pub get`
   - Ensure Flutter SDK is up to date: `flutter upgrade`
   - Check that all dependencies are properly installed

4. **Package name errors**:
   - If you see package import errors, run `flutter pub get` again
   - Clean and rebuild: `flutter clean && flutter pub get && flutter run`

## Project Structure

```
lib/
├── app/
│   ├── constants/       # API constants, app constants
│   ├── models/          # Task model and data classes
│   ├── modules/         # Feature modules
│   │   ├── home/        # Home screen with task list
│   │   ├── tasks/       # Task creation/editing screen
│   │   └── splash/      # Splash screen
│   ├── routes/          # App routing configuration
│   ├── services/        # HTTP services, API calls
│   ├── themes/          # App themes, colors, styles
│   ├── utils/           # Utility functions
│   └── widgets/         # Reusable widgets
└── main.dart            # App entry point
```

## Tech Stack

- **Framework**: Flutter
- **State Management**: GetX
- **Backend**: Back4App (Parse Server)
- **HTTP Client**: http package
- **Local Storage**: get_storage
- **Architecture**: MVC with GetX Controllers

## Contributions
Contributions are always welcome. Please fork this repository and contribute using pull requests. The pull requests will be thoroughly assessed and if found significant will be accepted.

## Contact
**Author:** Vijay Pratap Singh Parihar  
**Email:** vijay19cs130@gmail.com  
**GitHub:** [vijay-pratap-singh-parihar](https://github.com/vijay-pratap-singh-parihar)
