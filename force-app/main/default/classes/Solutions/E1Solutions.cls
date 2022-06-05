/**
 * Created by Wally on 5/31/2022.
 */

@IsTest
private class E1Solutions {
    @IsTest
    static void yourName() {
        //Create a variable that can hold your name
        //Example: Warren Walters
        String myName = 'Warren Walters';

        /*REPLACE NULL WITH YOUR VARIABLE*/
        System.assert(TestHelper.yourName(myName));
        /*REPLACE NULL WITH YOUR VARIABLE*/
    }

    @IsTest
    static void favoriteMovie() {
        //Create a variable that can hold your favorite movie name
        //Example: Inception
        String favoriteMovie = 'Inception';

        /*REPLACE NULL WITH YOUR VARIABLE*/
        System.assert(TestHelper.favoriteMovie(favoriteMovie));
        /*REPLACE NULL WITH YOUR VARIABLE*/
    }

    @IsTest
    static void yourHeight() {
        //Create a variable that can hold your name
        //Example: 5 foot 9 inches = 5.9
        Double myHeight = 5.9;

        /*REPLACE NULL WITH YOUR VARIABLE*/
        System.assert(TestHelper.yourHeight(myHeight));
        /*REPLACE NULL WITH YOUR VARIABLE*/
    }

    @IsTest
    static void socialMediaApps() {
        //Create a variable that can hold the number of social media apps on your phone
        //Example: 5 - You cannot have a fraction of an app
        Integer socialAppsOnPhone = 5;

        /*REPLACE NULL WITH YOUR VARIABLE*/
        System.assert(TestHelper.socialMediaApps(socialAppsOnPhone));
        /*REPLACE NULL WITH YOUR VARIABLE*/
    }

    @IsTest
    static void earthRevolvesAroundTheSun () {
        //Create a variable that can holds the answer to the questions if the earth revolved around the sun
        //Example: true or false
        Boolean earthRevolvesAroundSun = true;

        /*REPLACE NULL WITH YOUR VARIABLE*/
        System.assert(TestHelper.earthRevolvesAroundTheSun(earthRevolvesAroundSun));
        /*REPLACE NULL WITH YOUR VARIABLE*/
    }

    @IsTest
    static void numberOfDayInTheYear() {
        //Assign the variables daysInTheYear with the amount of days in the year
        Integer daysInTheYear = 365;

        /* DO NOT CHANGE BELOW*/
        System.assertEquals(365,daysInTheYear);
        /* DO NOT CHANGE ABOVE*/
    }

    @IsTest
    static void lightSpeed(){
        //Convert the light speed variable into a constant
        //You may need to comment or delete sections or lines of code for this to work properly
        final Integer LIGHTSPEED = 299792458;
        //lightSpeed = 133742069;

        /*YOU MAY NEED TO CHANGE A VARIABLE NAME*/
        System.assertEquals(299792458,LIGHTSPEED);
        /*YOU MAY NEED TO CHANGE A VARIABLE NAME*/
    }

    @IsTest
    static void valueOfPi(){
        //Turn the light speed variable into a constant
        //You may need to comment or delete sections or lines of code for this to work properly
        final Double PI = 3.14;

        /*YOU MAY NEED TO CHANGE A VARIABLE NAME*/
        System.assertEquals(3.14,PI);
        /*YOU MAY NEED TO CHANGE A VARIABLE NAME*/
    }

    //Operators
    @IsTest
    static void addTwoNumbersTogether(){
        //Add x and y together into the total variable so that it equals 4
        Integer x = 2;
        Integer y = 2;
        Integer total = x + y;

        /* DO NOT CHANGE BELOW*/
        System.assertEquals(4,total);
    }

    //Strings
    @IsTest
    static void combineString(){
        //Combined the strings so that it returns "The quick brown fox jumped over the lazy dog" into the concatValue variable
        String firstPart = 'The quick brown';
        String secondPart = ' fox jumped over ';
        String thirdPart = 'the lazy dog';

        String concatValue = firstPart + secondPart + thirdPart;

        /* DO NOT CHANGE BELOW*/
        System.assertEquals('The quick brown',firstPart);
        System.assertEquals(' fox jumped over ',secondPart);
        System.assertEquals('the lazy dog',thirdPart);
        System.assertEquals('The quick brown fox jumped over the lazy dog',concatValue);
    }

    @IsTest
    static void calculateHourRate(){
        //Calculate the hourly rate into the weeklyPaycheck variables
        //Formula: rate multiplied by hours
        Decimal hourlyRate = 75.5;
        Double numberOfHours = 12.4;

        Decimal weeklyPaycheck = hourlyRate * numberOfHours;

        /* DO NOT CHANGE BELOW*/
        System.assertEquals(936.2,weeklyPaycheck);
        /* DO NOT CHANGE ABOVE*/

        //Calculate your monthly pay into the monthlyPaycheck variables
        //Formula: pay for the week multiplied by 4

        Decimal monthlyPaycheck = weeklyPaycheck * 4;

        /* DO NOT CHANGE BELOW*/
        System.assertEquals(3744.8,monthlyPaycheck);
    }

    @IsTest
    static void PEMDAS1(){
        //Add parentheses so that the answer results in 36
        Integer answer = (5 + 7) * 3;

        /* DO NOT CHANGE BELOW*/
        System.assertEquals(36,answer);
    }

    @IsTest
    static void PEMDAS2(){
        //Add parentheses so that the answer results in 36
        Decimal answer = 48 / (15 - (1.5 * 2));

        /* DO NOT CHANGE BELOW*/
        System.assertEquals(4,answer);
    }
}
