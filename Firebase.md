### Connect to android application
#
1 - Add Java `bin` folder to environment
#
- Create project https://console.firebase.google.com/
#
2 - In vscode go to 
```
android/app/build.gradle
````    
Specify application id (package name)
#
3 - Make keystore file

Linux:
```
keytool -list -v -alias androiddebugkey -keystore ~/.android/debug.keystore
```
Windows:
```
keytool -list -v -alias androiddebugkey -keystore %USERPROFILE%\.android\debug.keystore
```
Copy SHA1 Certificate fingerprint to firebase `register app`
#
4 - Download and copy **_`google.services.json`_** file to `android/app/`
#
5 - Add google service dependency to `android/build.gradle` file
```
dependencies {
    classpath 'com.google.gms:google-services:4.3.10'
}
````  
_Get latest `version #` from https://developers.google.com/android/guides/google-services-plugin_

Add **_`apply plugin: 'com.google.gms.google-services'`_** to `android/app/build.gradle`
#
6 - Add firebase dependency to `android/app/build.gradle` file
```
dependencies {
    implementation 'com.google.firebase:firebase-analytics:20.0.0'
}
```
_Get latest `version #` from https://firebase.google.com/support/release-notes/android_
#
7 - Refresh gradlew 
```
cd android/app
```
then
```
./gradlew --refesh-dependencies
```
