/**
 * Created by Wally on 5/29/2022.
 */


@IsTest
private class E2ControlFlowsLoops {

    @IsTest
    static void helloWorld() {
        //Uncomment the lines below and add a KEYWORD and OPERATOR such that the code inside the block executes given the values for x and y.
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

        if(age > 17) {
            isEligibleToVote =  true;
        }

        /*DO NOT CHANGE BELOW*/
        System.assert(isEligibleToVote);
    }


    @IsTest
    static void findMax() {
        //Find the largest number between the two integers num1 and num2
        //Replace the value of null if needed
        Integer num1 = 58;
        Integer num2 = 200;
        Integer largestNum = num1;

        if(num1 > num2) {
            largetsNum = num1;
        } else if (num1 < num2) {
            largestNum = num2;
        } else if (num1 == num2) {
            largestNum = num1;
        }

        /*DO NOT CHANGE BELOW*/
        System.assert(TestHelper.findMax(num1,num2,largestNum));

    }

    @IsTest
    static void numberSign() {
        //Use an if statement to determine the sign (POSITIVE,NEGATIVE,ZERO) of the number
        //Change the value of num to test
        //Example: 684 = POSITIVE, -4 = NEGATIVE, 0 = ZERO

        Integer num = 1;
        String numberSign;

        if(num > 0) {
            numberSign = 'POSITIVE';
        } else if (num < 0) {
            numberSign = 'NEGATIVE';
        } else {
            numberSign = 'ZERO';
        }

        /*DO NOT CHANGE BELOW*/
        System.assert(TestHelper.numberSign(num,numberSign));
    }


    @IsTest
    static void printHelloWorld() {
        //Print "Hello World!" 3 times on one line separated by ";"
        String result = '';
        String HELLO_WORLD_MSG = 'Hello World!;';
        for (Integer i = 0; i < 3; i++) {
            result += HELLO_WORLD_MSG;
        }

        /*DO NOT CHANGE BELOW*/
        System.assertEquals('Hello World!;Hello World!;Hello World!;', result);

    }

    @IsTest
    static void countNumbers() {
        //create a loop that adds the sum of the first 5 natural numbers (1,2,3,4,5)
        Integer result = 0;
        for (Integer i = 0; i < 6; i++) {
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

        // unsafe solution 1, best performance
        Decimal result = 0;
        for (Integer i = 0; result < 40.0; i++) {
            // result += changeInWallet.get(i);
            result += changeInWallet[i];
        }
        // alternate solution, still unsafe access of collection but could perform better on large grps/be more readable
        Decimal result2 = 0;
        Integer index = 0;
        while (result2 < 40.0) {
            result2 += changeInWallet[i];
            i++;
        }
        // safe solution, still readable, but requires a logical control operator which is yucky
        Decimal result3 = 0;
        for(Integer j = 0; j < changeInWallet.size(); j++) {
            result3 += changeInWallet[j];
        }

        /*DO NOT CHANGE BELOW*/
        System.assert(result == 48.02);
    }

    @IsTest
    static void findTheScientist() {
        //Loops over the list of scientists and displays the names of those with the letter G in their names.
        //the letter is NOT case-sensitive. find names with the characters 'G' or 'g' occuring at least once.
        //add the names to a String and end each name with a ';'
        /*DO NOT CHANGE BELOW*/
        List<String> scientistNames = new List<String>{'Tim Berners-Lee','Alan Turing','Grace Hopper','Donald Knuth','Guido van Rossum','Ken Thompson'};
        /*DO NOT CHANGE ABOVE*/

        String result = '';
        for (Integer i = 0; i < scientistNames.size();) {
            String scientistName = scientistNames[i];
            // you could do this if you teach this
            scientistName = scientistName.toLowerCase();
            // which means you don't need to write an OR statement, and potentially reduces the more costly .contains(arg) call to just 1. 
            // toLowerCase is faster than contains, pretty sure.
            // this is probably overerly pedantic, but it's about setting people up for success. 
            if(scientistName.contains('G') == true || scientistName.contains('g') == true) {
                results += scientistName + ';';
            }
        }
        /*DO NOT CHANGE BELOW*/
        System.assertEquals('Alan Turing;Grace Hopper;Guido van Rossum;', result);
    }


}