@IsTest
private class E3ClassMethods {
    @IsTest
    static void longestWord() {
        //Return the number of characters in this string
        //Example: 'Hello World!' = 12
        //Hint: May need to change variable data types
        String longestEnglishWord = 'Pneumonoultramicroscopicsilicovolcanoconiosis';
        // is this a real word
        Integer numberOfCharacter = longestEnglishWord.length();

        /* DO NOT CHANGE BELOW*/
        System.assert(TestHelper.longestWord(numberOfCharacter, longestEnglishWord));
    }

    @IsTest
    static void validHashtag() {
        //Change the string so that is a valid social media hashtag
        //Example: ' Hello World!' = '#HelloWorld'
        //Hint: # in the front, No white space, No special characters https://www.hashtags.org/featured/what-characters-can-a-hashtag-include/

        /* DO NOT CHANGE BELOW*/
        String stringToConvert = ' S4lesforce!M3ntor$ Is T*he Bes\\t )';
        /* DO NOT CHANGE ABOVE*/
        stringToConvert = stringToConvert.trim();
        // this is redundant I think?
        stringToConvert = stringToConvert.deleteWhiteSpace();
        // do I have to use regex at this point? so mean.
        // ^negator so don't match anything in the following
        // match anything in the following sets
        // A-Z range, a-z range, digit range
        // \s is whitespace, in Apex string we escape the \ with a \ so we get \\s
        // actually do we even need to do a .trim() or .deleteWhiteSpace()?
        String hashTagSpecialCharRegexPattern = '[^A-Za-z0-9\\s]';
        stringToConvert = stringToConvert.replaceAll(hashTagSpecialCharRegexPattern, '');
        // purge beginning numerals 
        while(stringToConvert.substring(0,1).isNumeric()) {
            stringToConvert = stringToConvert.substring(1);
            // exit if the entire string is numeric or if there is no longer string left
            if(stringToConvert.isNumeric() || String.isBlank(stringToConvert)) {
                break;
            }
            // honestly for real production code you need a try catch here, there's too much you can do to screw this up lol
        }
        if(String.isNotBlank(stringToConvert)) {
            String validHashtag += # + stringToConvert;
        }

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
            if(currentCarName.isAllLowerCase()) {
                currentCarName = currentCarName.toUpperCase();
            } else if (currentCarName.isAllUpperCase()) {
                currentCarName = currentCarName.toLowerCase();
            } else if (String.isBlank(currentCarName)) {
                currentCarName = 'Supra';
            }

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
        for (Integer i = 0; i < numbers.size(); i++) {
            Integer currentNumber = numbers[i];
            largestNumber = Math.max(largestNumber, currentNumber);
        }

        /* DO NOT CHANGE BELOW*/
        System.assertEquals(435,largestNumber);
    }

    @IsTest
    static void roundAndPow() {
        //Use and implement the roundAndPow function
        //Hint: You may need to change the arguments of the function
        Double value = 3.85484956;
        value = roundAndPowHelper(value, 2);


        /* DO NOT CHANGE BELOW*/
        System.assertEquals(16,value);
    }

    static Double roundAndPowHelper(Double value, Integer power){
        Double dbl = Math.roundToLong(value);
        dbl = Math.pow(dbl, 2);

        //Using the Math class raise the number to the power of 2
        //num = null;

        return dbl;
    }

    @IsTest
    static void generateRandomNumber() {
        //Use and implement the generateRandomNumberHelper function
        //Hint: You may need to change the return value
        for (Integer i = 0; i < 100; i++) {
            Integer randomNumber = generateRandomNumberHelper();
            /* DO NOT CHANGE BELOW*/
            System.assert(randomNumber > 49 && randomNumber < 101);
            /* DO NOT CHANGE ABOVE*/
        }
    }

    static Integer generateRandomNumberHelper() {
        //Using the Math class generate a random number between 50 and 100
        // see also: Crypto.getRandomLong()/getRandomInteger() hehe but those are totally wild and not between 0.0 and 1.0
        // scale by 50, then add 50 to get the floor. 
        return Integer.valueOf(Math.random() * 50) + 50;
    }


    @IsTest
    static void visitedDisney() {
        //Instantiate a date variables with todays date
        //Update the lastTimeVisitedDisney variable to 1 year ago to this day
        Date today = Date.today();
        Date lastTimeVisitedDisney today.addYears(-1);

        /* DO NOT CHANGE BELOW*/
        System.assert(TestHelper.visitedDisney(lastTimeVisitedDisney));
    }

    @IsTest
    static void countCurrentDaysInYear() {
        //Using the helper function and Date class calculate number of days since the year has started
        //Example: Jan 1 to Jan 31 = 31 days
        Date startOfYear = countCurrentDaysInYearHelper();
        Date currentDate = Date.today();
        Integer daysInYearSoFar startOfYear.daysBetween(currentDate);

        /* DO NOT CHANGE BELOW*/
        System.assert(TestHelper.countCurrentDaysInYear(daysInYearSoFar));
    }

   static Date countCurrentDaysInYearHelper(){
       //Create a date instance for the start of the year
        return Date.newInstance(Date.today().year(), 1, 1);
    }

}