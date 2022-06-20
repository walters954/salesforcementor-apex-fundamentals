@IsTest
private class E1VariablesOperators {

    @IsTest
    static void yourName() {
        //Create a variable that can hold your name
        //Ex: Warren Walters
        String myName = 'Chase Brammer';
        /*REPLACE NULL WITH YOUR VARIABLE*/
        System.assert(TestHelper.yourName(myName));
        /*REPLACE NULL WITH YOUR VARIABLE*/
    }

    @IsTest
    static void favoriteMovie() {
        //Create a variable that can hold your favorite movie name
        //Ex: Inception
        String myFavoriteMovieName = 'Blade Runner';
        /*REPLACE NULL WITH YOUR VARIABLE*/
        System.assert(TestHelper.favoriteMovie(myFavoriteMovieName));
        /*REPLACE NULL WITH YOUR VARIABLE*/
    }

    @IsTest
    static void yourHeight() {
        //Create a variable that can hold your height in meters, rounded up to 2 decimal places.
        //Ex: 5 foot 9 inches = 5.75
        Decimal myHeight = 5.75;
        /*REPLACE NULL WITH YOUR VARIABLE*/
        System.assert(TestHelper.yourHeight(myHeight));
        /*REPLACE NULL WITH YOUR VARIABLE*/
    }

    @IsTest
    static void socialMediaApps() {
        //Create a variable that can hold the number of social media apps on your phone
        //Ex: 5 - You cannot have a fraction of an app
        Integer numSocialMediaAppsOnMyPhone = 2;
        /*REPLACE NULL WITH YOUR VARIABLE*/
        System.assert(TestHelper.socialMediaApps(numSocialMediaAppsOnMyPhone));
        /*REPLACE NULL WITH YOUR VARIABLE*/
    }

    @IsTest
    static void earthRevolvesAroundTheSun () {
        //Create a variable that can holds the answer to the question: Does the Earth revolve around the sun?
        //Ex: true or false
        Boolean answer = true;
        /*REPLACE NULL WITH YOUR VARIABLE*/
        System.assert(TestHelper.earthRevolvesAroundTheSun(answer));
        /*REPLACE NULL WITH YOUR VARIABLE*/
    }

    @IsTest
    static void numberOfDaysInTheYear() {
        //Assign the variables daysInTheYear with the amount of days in the year
        Integer daysInTheYear = 365;
        /*DO NOT CHANGE BELOW*/
        System.assert(TestHelper.numberOfDaysInTheYear(daysInTheYear));
    }

    @IsTest
    static void lightSpeed() {
        //Turn the lightSpeed variable into a constant that cannot be modified
        //You may need to comment out sections or delete lines of code for this to work properly
        Integer lightSpeed = 299792458;
        final Integer SPEED_OF_LIGHT = lightSpeed;

        /*YOU MAY NEED TO CHANGE THE VARIABLE NAME*/
        System.assert(TestHelper.lightSpeed(SPEED_OF_LIGHT));
        /*YOU MAY NEED TO CHANGE THE VARIABLE NAME*/
    }

    @IsTest
    static void valueOfPi() {
        //Turn the value of Pi (to 2 Decimal places) into a constant variable
        //You may need to comment or delete sections or lines of code for this to work properly
        Decimal pi = 3.14;
        final Decimal VALUE_OF_PI = pi;
        /*YOU MAY NEED TO CHANGE THE VARIABLE NAME*/
        System.assert(TestHelper.valueOfPi(VALUE_OF_PI));
        /*YOU MAY NEED TO CHANGE THE VARIABLE NAME*/
    }

    @IsTest
    static void addTwoNumbersTogether() {
        //Add x and y together into the total variable so that it equals 4
        Integer x = 2;
        Integer y = 2;
        Integer total = x + y;

        /* DO NOT CHANGE BELOW*/
        System.assertEquals(4,total);
    }

    @IsTest
    static void concatenateStrings() {
        //Combine three strings so that when combined (concatenated) the "message" variable returns the string: "The quick brown fox jumped over the lazy dog."
        //You must use three separate strings ad combine (concatenate) them!
        String firstPart = 'The quick brown';
        String secondPart = ' fox ';
        String thirdPart = ' jumped over the lazy dog.';
        // actually a lot of ways to solve this one...!
        String message = firstPart + secondPart + thirdPart;

        /* DO NOT CHANGE BELOW*/
        System.assert(String.isNotBlank(firstPart));
        System.assert(String.isNotBlank(secondPart));
        System.assert(String.isNotBlank(thirdPart));
        System.assertEquals('The quick brown fox jumped over the lazy dog.', message);
    }

    @IsTest
    static void calculateHourRate() {
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
    static void PEMDAS1() {
        //Add parentheses so that the answer results in 36
        Integer answer = (5 + 7) * 3;

        /* DO NOT CHANGE BELOW*/
        System.assertEquals(36,answer);
    }

    @IsTest
    static void PEMDAS2() {
        //Add parentheses so that the answer results in 4
        Decimal answer = 48 / (15 - (1.5 * 2));

        /* DO NOT CHANGE BELOW*/
        System.assertEquals(4,answer);
    }
    
}
