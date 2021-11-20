### Install latest gradle (using gradlew wrapper)
#
Go to https://gradle.org/install/#helpful-information (check version number)
#
Go `gradle-wrapper.properties` _( /home/trinib/Documents/tt/flutter_application_test/android/gradle/wrapper/gradle-wrapper.properties )_ and change to latest version #.

Update gradle wrapper command :
    
    cd nameofproject/android
then
    
    ./gradlew tasks

Note that running the wrapper task once will update gradle-wrapper.properties only, but leave the wrapper itself in gradle-wrapper.jar untouched. This is usually fine as new versions of Gradle can be run even with ancient wrapper files. If you nevertheless want all the wrapper files to be completely up-to-date, you’ll need to run the wrapper task a second time.

Check that it’s the version by executing (with version # currently using)

    ./gradlew --version xx.x
#
### Update versions # for kotlin and gradle plugin
Go to 
https://kotlinlang.org/docs/releases.html & https://developer.android.com/studio/releases/gradle-plugin

change version # in /home/trinib/Documents/tt/flutter_application_test/android/build.gradle
