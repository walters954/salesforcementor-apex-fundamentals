@IsTest
private class E2Solutions {
    @IsTest
    static void helloWorld() {
        //Uncomment the lines below and fill out the IF statement KEYWORD and OPERATOR executes true
        Integer x = 40;
        Integer y = 10;

        if (x > y){
            System.assert(true,'Hello World!');
        }
    }

    @IsTest
    static void votingEligibility() {
        //Update the isEligibleToVote to vote variables to true if the age is greater than 17
        //Replace the value of null if needed
        Integer age = 18;
        Boolean isEligibleToVote = false;

        //start if statement
        if(age > 17){
            isEligibleToVote =  true;
        }
        //end if statement

        /*DO NOT CHANGE BELOW*/
        System.assert(isEligibleToVote);
    }

    @IsTest
    static void findMax() {
        //Find the largest number between the two integers num1 and num2
        //Replace the value of null if needed
        //What happens if both numbers are equal?
        Integer num1 = 58;
        Integer num2 = 200;
        Integer largestNum = null;

        //start if statement
        if (num1 > num2){
            largestNum = num1;
        } else if (num2 > num1){ //start else if statement
            largestNum = num2;
        }
        //end if statement

//        Alternate
//        if (num1 > num2){
//            largestNum = num1;
//        } else { //Automatically assume the 2nd number is larger
//            largestNum = num2;
//        }

        /*DO NOT CHANGE BELOW*/
        System.assert(TestHelper.findMax(num1,num2,largestNum));
    }

    @IsTest
    static void numberSign() {
        //Use an if statement to determine the sign (POSITIVE,NEGATIVE,ZERO) of the number
        //Change the value of num to test
        //Example: 684 = POSITIVE, -4 = NEGATIVE, 0 = ZERO

        Integer num = 0;
        String numberSign;

        //start if statement
        if (num > 0){
            numberSign = 'POSITIVE';
        } else if (num < 0){ //start else if statement
            numberSign = 'NEGATIVE';
        } else { //start else statement
            numberSign = 'ZERO';
        } //end if statement

        /*DO NOT CHANGE BELOW*/
        System.assert(TestHelper.numberSign(num,numberSign));
    }

    @IsTest
    static void printHelloWorld() {
        //Print "Hello World!" 3 times separated by ";"
        String result = '';
        for (Integer i = 0; i < 3; i++){
            //result = result + 'Hello World!;'
            result += 'Hello World!;';
        }

        /*DO NOT CHANGE BELOW*/
        System.assertEquals('Hello World!;Hello World!;Hello World!;', result);
    }

    @IsTest
    static void countNumbers() {
        //create a loop that counts the first 5 natural number (1,2,3,4,5)
        Integer result = 0;
        for (Integer i = 1; i < 6; i++){
            result += i;
        }
        /*DO NOT CHANGE BELOW*/
        System.assertEquals(15, result);
    }

    @IsTest
    static void countChange() {
        //Loops through the list of change and add them up until you have more than 40 and stop counting
        /*DO NOT CHANGE BELOW*/
        List<Decimal> changeInWallet = new List<Decimal>{0.5,10,3.84,24.6,9.08,50,4.90};
        /*DO NOT CHANGE ABOVE*/

        Decimal result = 0;
        for (Integer i = 0; i < changeInWallet.size(); i++){
            Decimal currentChange = changeInWallet[i];
            result += currentChange;
            if (result > 40) {
                break;
            }
        }
        /*DO NOT CHANGE BELOW*/
        System.assert(result == 48.02);
    }

    @IsTest
    static void findTheScientist() {
        //Loops over the list of scientist and concatenate their names together with ',' if it contains the letter 'G'
        /*DO NOT CHANGE BELOW*/
        List<String> scientistNames = new List<String>{'Tim Berners-Lee','Alan Turing','Grace Hopper','Donald Knuth','Guido van Rossum','Ken Thompson'};
        /*DO NOT CHANGE ABOVE*/

        String result = '';
        for (Integer i = 0; i < scientistNames.size(); i ++){
            String scientist = scientistNames[i];
            if (!scientist.contains('G')){
                continue;
            }
            result += scientist + ',';

//            Alternate
//            if (scientist.contains('G')){
//                result += scientist + ',';
//            }


        }
        /*DO NOT CHANGE BELOW*/
        System.assertEquals('Grace Hopper,Guido van Rossum,', result);
    }
}