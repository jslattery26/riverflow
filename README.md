# riverflow

## Setup

### Change package name with change_app_package_name

    flutter pub run change_app_package_name:main com.new.package.name

### Run flutterfire config

##### 1) If you haven't already, [install the Firebase CLI.](https://firebase.google.com/docs/cli#setup_update_cli)

- on macOS the command is: `curl -sL https://firebase.tools | bash`

#### 2) Log into Firebase using your Google account by running the following command:

    firebase login

#### 3) Install the FlutterFire CLI by running the following command from any directory:

    dart pub global activate flutterfire_cli

#### 4) Configure your app to use Firebase from the project directory:

    flutterfire configure
