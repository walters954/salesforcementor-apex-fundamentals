@IsTest
private with sharing class E1VariablesOperators {
    @IsTest
    static void yourName() {
        //Create a variable that can hold your name
        //Ex: Warren Walters

        /*REPLACE NULL WITH YOUR VARIABLE*/
        System.assert(TestHelper.yourName(null));
        /*REPLACE NULL WITH YOUR VARIABLE*/
    }

    @IsTest
    static void favoriteMovie() {
        //Create a variable that can hold your favorite movie name
        //Ex: Inception

        /*REPLACE NULL WITH YOUR VARIABLE*/
        System.assert(TestHelper.favoriteMovie(null));
        /*REPLACE NULL WITH YOUR VARIABLE*/
    }

    @IsTest
    static void yourHeight() {
        //Create a variable that can hold your name
        //Ex: 5 foot 9 inches = 5.9

        /*REPLACE NULL WITH YOUR VARIABLE*/
        System.assert(TestHelper.yourHeight(null));
        /*REPLACE NULL WITH YOUR VARIABLE*/
    }

    @IsTest
    static void socialMediaApps() {
        //Create a variable that can hold the number of social media apps on your phone
        //Ex: 5 - You cannot have a fraction of an app

        /*REPLACE NULL WITH YOUR VARIABLE*/
        System.assert(TestHelper.socialMediaApps(null));
        /*REPLACE NULL WITH YOUR VARIABLE*/
    }

    @IsTest
    static void earthRevolvesAroundTheSun () {
        //Create a variable that can holds the answer to the questions if the earth revolved around the sun
        //Ex: true or false

        /*REPLACE NULL WITH YOUR VARIABLE*/
        System.assert(TestHelper.earthRevolvesAroundTheSun(null));
        /*REPLACE NULL WITH YOUR VARIABLE*/
    }

    @IsTest
    static void numberOfDayInTheYear() {
        //Assign the variables daysInTheYear with the amount of days in the year
        Integer daysInTheYear;

        /*DO NOT CHANGE BELOW*/
        System.assertEquals(365,daysInTheYear);
    }

    @IsTest
    static void lightSpeed(){
        //Turn the light speed variable into a constant
        //You may need to comment or sections or delete lines of code for this to work properly
        Integer lightSpeed = 299792458;
        lightSpeed = 133742069;

        /*YOU MAY NEED TO CHANGE THE VARIABLE NAME*/
        System.assertEquals(299792458,lightSpeed);
        /*YOU MAY NEED TO CHANGE THE VARIABLE NAME*/
    }

    @IsTest
    static void valueOfPi(){
        //Turn the light speed variable into a constant
        //You may need to comment or delete sections or lines of code for this to work properly
        Integer pi = (Integer) 3.14;

        /*YOU MAY NEED TO CHANGE THE VARIABLE NAME*/
        System.assertEquals(3.14,pi);
        /*YOU MAY NEED TO CHANGE THE VARIABLE NAME*/
    }

    @IsTest
    static void addTwoNumbersTogether(){
        //Add x and y together into the total variable so that it equals 4
        Integer x = 2;
        Integer y = 2;
        Integer total;

        /* DO NOT CHANGE BELOW*/
        System.assertEquals(4,total);
    }

    @IsTest
    static void combineString(){
        //Combined the strings so that it returns "The quick brown fox jumped over the lazy dog" into the concatValue variable
        String firstPart = '';
        String secondPart = null;
        String thirdPart;

        String concatValue;

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

        Decimal weeklyPaycheck;

        /* DO NOT CHANGE BELOW*/
        System.assertEquals(936.2,weeklyPaycheck);
        /* DO NOT CHANGE ABOVE*/

        //Calculate your monthly pay into the monthlyPaycheck variables
        //Formula: pay for the week multiplied by 4

        Decimal monthlyPaycheck;

        /* DO NOT CHANGE BELOW*/
        System.assertEquals(3744.8,monthlyPaycheck);
    }

    @IsTest
    static void PEMDAS1(){
        //Add parentheses so that the answer results in 36
        Integer answer = 5 + 7 * 3;

        /* DO NOT CHANGE BELOW*/
        System.assertEquals(36,answer);
    }

    @IsTest
    static void PEMDAS2(){
        //Add parentheses so that the answer results in 36
        Decimal answer = 48 / 15 - 1.5 * 2;

        /* DO NOT CHANGE BELOW*/
        System.assertEquals(4,answer);
    }
}
