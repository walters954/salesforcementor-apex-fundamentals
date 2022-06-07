@IsTest
private with sharing class GettingStartedTest {
    @IsTest
    static void validateHelloWorld() {
        //Create a variable with the value of hello world
        String myFirstString = 'Hello, World!';
        //Check to see if the string we created has the value of hello world
        /* DO NOT CHANGE BELOW*/
        System.assertEquals('Hello, World!',myFirstString);
        /* DO NOT CHANGE BELOW*/
    }

    @IsTest
    static void secretOfTheUniverse () {
        //Create a variable to hold the secret of the universe 42
        Integer secret = 42;

        /*REPLACE NULL WITH YOUR VARIABLE*/
        System.assert(TestHelper.secretOfTheUniverse(secret));
        /*REPLACE NULL WITH YOUR VARIABLE*/
    }

    @IsTest
    static void fizz() {
        //Implement and use the buzz method
        buzz('Fizz');

    }

    static void buzz(String value){
        //Add Buzz to the value

        /*REPLACE NULL WITH YOUR VARIABLE*/
        System.assertEquals('FizzBuzz', value + 'Buzz');
        /*REPLACE NULL WITH YOUR VARIABLE*/
    }
}