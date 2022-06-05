public with sharing class InvoiceCalculator {

    /*
    Calculate the amount of money you will get after the transaction fees for an invoice
    Formula to calculate the transaction fees (Amount * 3% + 30 cents)
    Calculate the amount needed to offset the transaction fees for an invoice
    Formula to calculate the offset amount (amount / (1 - 3%)) * 3%
    Example: https://weareindy.com/stripe-fee-calculator
     */
    public static void calculateInvoiceAmountPart1(){
        //Every transaction has a flat fee of 30 cents and this never changes
        //Every transaction has a percentage based fee 3% and this never changes

        //Print out flat the transaction fees

        //Print out percentage the transaction fees

        //Print out the invoice Amount

        //Print out the total fees for our invoice
        //Hint: (Amount * 3% + 30 cents)

        //Print out how much money you will have left over

        //Print out how much additional money you need to ask for to make up the fees
        //Hint: (amount / (1 - 3%)) * 3%

        //Print out the new total of much you should ask for to meet the original invoice amount with fees
    }

    /*
    You are give a list of hours work and the hourly rate on projects
    Loop over the list and calculate the hourly rate for the corresponding number of hours worked and hourly rate
     */
    public static void calculateHourlyRatePart2(){
        //Hourly rates provided - Changes these if needed to test other values - initial values {106.75, 119.73, 38.24, 108.16, 146.38, 30.45, 63.11, 15.33, 121.53, 30}
        List<Decimal> ratesOnProjects = new List<Decimal>{106.75, 119.73, 38.24, 108.16, 146.38, 30.45, 63.11, 15.33, 121.53, 30};
        //Hours worked provided - Changes these if needed to test other values - initial values {26.35, 14.69, 10.89, 20, 8.91, 46.23, 40.39, 43.42, 25.17, 40.18}
        List<Double> hoursWorkedOnProjects = new List<Double>{26.35, 14.69, 10.89, 20, 8.91, 46.23, 40.39, 43.42, 25.17, 40.18};

        //Loop over the rates and hours
            //If the hourly rate is less than $80 then skip over it
            //If the hours worked is greater than 40 skip over it
            //Calculate the total amount earned
            //If the amount earned is greater than $5k we can stop working
            //Print out the amount earned for each loop iteration

        //If the total amount earned is less than 5000 print out a motivational message
        //If the total amount earner is greater than 5000 print out a relaxing message
    }


    /*
    Generate random project rates and hours using the generateRandomNumber function provided
    Use the formatCurrency function to update any of the previous debug lines with good formatting
    Ex 1324.3503 = $1,324.35
     */

    public static void generateProjectDataPart3(){
        List<Decimal> randomRatesForProjects = new List<Decimal>();
        List<Double> randomHoursForProjects = new List<Double>();


        //Create loop that iterates 10 times
            //Add random numbers to the rate and hours list
            //Max randomly generated number allow for rates is 150
            //Max randomly generated number allow for hours is 50


        //Print out the list of rates
        //Print out the list of hours

    }

    /*
    Generate a random number with decimal places
    Formula to create random numbers with 2 decimal places floor(random * (maxNumber * 100 - 1 * 100) + 1 * 100) / (1*100);
    Modify the input parameters to allow for the maximum number to be changed
    Modify this method to return the randomNumber generated
    */

    static void generateRandomNumber() {
        //Return randomly generated number
        //Hint: floor(random * (maxNumber * 100 - 1 * 100) + 1 * 100) / (1*100);
    }

    /*
    Formats a decimal amount in traditional currency formatting
    Input Decimal
    Returns String
     */
    static String formatCurrency(Decimal amount){
        amount = amount.setScale(2);
        List<String> args = new String[]{'0','number','###,###,##0.00'};
        String formattedAmount = String.format(amount.format(), args);
        return formattedAmount;
    }
}