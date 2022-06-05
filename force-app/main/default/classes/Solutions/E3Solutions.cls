@IsTest
private class E3Solutions {
    @IsTest
    static void longestWord() {
        //Return the number of characters in this string
        //Example: 'Hello World!' = 12
        //Hint: May need to change variable data types
        String longestEnglishWord = 'Pneumonoultramicroscopicsilicovolcanoconiosis';
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
        String wannabeHashTag = ' S4lesforce!M3ntor$ Is T*he Bes\\t )';
        /* DO NOT CHANGE ABOVE*/

        String validHashtag = '#' + wannabeHashTag.deleteWhitespace().replaceAll('[^a-zA-Z0-9\\s+]', '');

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
            if(currentCarName.isAllLowerCase()){
                currentCarName = currentCarName.toUpperCase();
            } else if (currentCarName.isAllUpperCase()){ //start else if statement
                currentCarName = currentCarName.toLowerCase();
            } else if (String.isBlank(currentCarName)){ //start else if statement
                currentCarName = 'Supra';
            }
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
        for (Integer i = 0; i < numbers.size(); i++){
            Integer currentNumber = numbers[i];
            largestNumber = Math.max(largestNumber,currentNumber);
        }

        /* DO NOT CHANGE BELOW*/
        System.assertEquals(435,largestNumber);
    }

    @IsTest
    static void roundAndPow() {
        //Use and implement the roundAndPow function
        Double value = 3.85484956;
        value = roundAndPowHelper(value);

        /* DO NOT CHANGE BELOW*/
        System.assertEquals(16,value);
    }

    static Double roundAndPowHelper(Double num){
        //Use the math class to round the function attribute
        num = Math.roundToLong(num);
        //using the math class raise the number to the power of 2
        num = Math.pow(num,2);

        return num;

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

    static Integer generateRandomNumberHelper(){
        //Using the Math class generate a random number between 50 and 100
        return (Integer) Math.random() * 50 + 50;
    }

    @IsTest
    static void visitedDisney() {
        //Instantiate a date variables with todays date
        //Update the lastTimeVisitedDisney variable to 1 year ago to this day
        Date today = Date.today();
        Date lastTimeVisitedDisney = today.addYears(-1);

        /* DO NOT CHANGE BELOW*/
        System.assert(TestHelper.visitedDisney(lastTimeVisitedDisney));
    }

    @IsTest
    static void countCurrentDaysInYear() {
        //Using the helper function and Date class calculate number of days since the year has started
        //Example: Jan 1 to Jan 31 = 31 days
        Date startOfYear = countCurrentDaysInYearHelper();
        Date currentDate = Date.today();
        Integer daysInYearSoFar = startOfYear.daysBetween(currentDate);

        /* DO NOT CHANGE BELOW*/
        System.assert(TestHelper.countCurrentDaysInYear(daysInYearSoFar));
    }

    static Date countCurrentDaysInYearHelper(){
        //Create a date instance for the start of the year
        return Date.newInstance(Date.today().year(),1,1);
    }

}