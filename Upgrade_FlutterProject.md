To view your current channel, use the following command

    flutter channel
    
To change to another channel, use flutter channel <channel-name>. Once you’ve changed your channel, use flutter upgrade to download the Flutter SDK and dependent packages. For example:

    flutter channel stable

### Upgrade and Migrate Flutter project  
  
1. Run `flutter upgrade` in the terminal to upgrade Flutter

2. Run `dart migrate` to run the dart migration tool

3. Solve all errors which the migration tool shows
    
#### In project directory

4. Run `flutter pub outdated --mode=null-safety` to print all outdated packages

5. Run `flutter pub upgrade --null-safety` to upgrade all packages automatically

6. Check the code for errors and solve them

7. Run `dart migrate` again and it should now be successfull. Follow the link to checkout the proposed changes

8. Press the "Apply Migration" button

9. Check the code for errors again and fix them

#### Run `flutter run` in the command line and the application should run with the command line displaying:
<p align="center">
 <img src="https://images.squarespace-cdn.com/content/v1/5e21c28ef672a441155d129c/1615584926330-VZDHBBEGOFWRDFQK66KG/Screenshot+2021-03-09+at+22.14.28.png?format=750w">
    
## Flutter fails to run after cloning repo
```
flutter upgrade; flutter pub upgrade
```
