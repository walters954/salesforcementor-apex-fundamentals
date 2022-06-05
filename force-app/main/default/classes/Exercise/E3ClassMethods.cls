@IsTest
private class E3ClassMethods {
    @IsTest
    static void longestWord() {
        //Return the number of characters in this string
        //Example: 'Hello World!' = 12
        //Hint: May need to change variable data types
        Object longestEnglishWord = 'Pneumonoultramicroscopicsilicovolcanoconiosis';
        Object numberOfCharacter = null;

        /* DO NOT CHANGE BELOW*/
        System.assert(TestHelper.longestWord(numberOfCharacter, longestEnglishWord));
    }

    @IsTest
    static void validHashtag() {
        //Change the string so that is a valid social media hashtag
        //Example: ' Hello World!' = '#HelloWorld'
        //Hint: # in the front, No white space, No special characters https://www.hashtags.org/featured/what-characters-can-a-hashtag-include/

        /* DO NOT CHANGE BELOW*/
        String wannabeHashTag = ' S4lesforce!M3ntor$ Is T*he Bes\\t )';
        /* DO NOT CHANGE ABOVE*/

        String validHashtag = null;

        /* DO NOT CHANGE BELOW*/
        System.assertEquals('#S4lesforceM3ntorIsTheBest',validHashtag);
    }

    @IsTest
    static void isThatASupra() {
        //Update the values inside of the list in the following way
        //If every value is lower case make it uppercase
        //If every value is upper case make it lowercase
        //If there is no value then add 'Supra'

        List<String> cars = new List<String>{'challenger','','MIATA'};

        for (Integer i = 0; i < cars.size(); i++){
            String currentCarName = cars[i];
            //start if statement
                currentCarName = null;
            //start else if statement
                currentCarName = null;
            //start else if statement
                currentCarName = null;
            //end if statement

            /* DO NOT CHANGE BELOW*/
            cars[i] = currentCarName; //Adds the currentCarName value back into the list of cars
            /* DO NOT CHANGE ABOVE*/
        }

        /* DO NOT CHANGE BELOW*/
        System.assertEquals(new List<String>{'CHALLENGER','Supra', 'miata'}, cars);

    }

    @IsTest
    static void largestNumber() {
        //Calculate the largest number from the list using the Math class
        List<Integer> numbers = new List<Integer>{8,23,123,2,435,6,82,327};
        Integer largestNumber = 0;
        for (;;){
            largestNumber = null;
        }

        /* DO NOT CHANGE BELOW*/
        System.assertEquals(435,largestNumber);
    }

    @IsTest
    static void roundAndPow() {
        //Use and implement the roundAndPow function
        //Hint: You may need to change the arguments of the function
        Double value = 3.85484956;
        //function(value);

        /* DO NOT CHANGE BELOW*/
        System.assertEquals(16,value);
    }

    static Double roundAndPowHelper(Object num){
        //Use the Math class to round the function attribute
        //num = null;

        //Using the Math class raise the number to the power of 2
        //num = null;

        return null;
    }

    @IsTest
    static void generateRandomNumber() {
        //Use and implement the generateRandomNumberHelper function
        //Hint: You may need to change the return value
        for (Integer i = 0; i < 100; i++) {
            Integer randomNumber = null;
            /* DO NOT CHANGE BELOW*/
            System.assert(randomNumber > 49 && randomNumber < 101);
            /* DO NOT CHANGE ABOVE*/
        }
    }

    static void generateRandomNumberHelper(){
        //Using the Math class generate a random number between 50 and 100
        //return null;
    }


    @IsTest
    static void visitedDisney() {
        //Instantiate a date variables with todays date
        //Update the lastTimeVisitedDisney variable to 1 year ago to this day
        Date today = null;
        Date lastTimeVisitedDisney;

        /* DO NOT CHANGE BELOW*/
        System.assert(TestHelper.visitedDisney(lastTimeVisitedDisney));
    }

    @IsTest
    static void countCurrentDaysInYear() {
        //Using the helper function and Date class calculate number of days since the year has started
        //Example: Jan 1 to Jan 31 = 31 days
        Date startOfYear = null;
        Date currentDate;
        Integer daysInYearSoFar;

        /* DO NOT CHANGE BELOW*/
        System.assert(TestHelper.countCurrentDaysInYear(daysInYearSoFar));
    }

   static Date countCurrentDaysInYearHelper(){
       //Create a date instance for the start of the year
        return null;
    }

}