public with sharing class InvoiceCalculatorSolution {

    /*
    Calculate the amount of money you will get after the transaction fees for an invoice
    Formula to calculate the transaction fees (Amount * 3% + 30 cents)
    Calculate the amount needed to offset the transaction fees for an invoice
    Formula to calculate the offset amount (amount / (1 - 3%)) * 3%
    Example: https://weareindy.com/stripe-fee-calculator (Not exact with rounding)
     */
    public static void calculateInvoiceAmountPart1(){
        //Every transaction has a flat fee of 30 cents and this never changes
        final Decimal FLAT_FEE = 0.30;
        //Every transaction has a percentage based fee 3% and this never changes
        final Double PERCENTAGE_FEE = 0.03;
        //Create a variable to hold the invoice amount
        Decimal invoiceAmount = 1000;

        //Print out flat the transaction fees
        System.debug('Flat Fee: ' + FLAT_FEE);        
        //Print out percentage the transaction fees
        System.debug('Percentage Fee: ' + PERCENTAGE_FEE);
        //Print out the invoice Amount
        System.debug('I am sending an invoice for ' + invoiceAmount);

        //Print out the total fees for our invoice
        //Hint: (Amount * 3% + 30 cents)
        Decimal totalFees = (invoiceAmount * PERCENTAGE_FEE) + FLAT_FEE;
        System.debug('The total amount of fees are ' + totalFees);

        //Print out how much money you will have left over
        Decimal takeHome = invoiceAmount - totalFees;
        System.debug('I will get ' + takeHome + ' because of the fees');

        //Print out how much additional money you need to ask for to make up the fees
        //Hint: (amount / (1 - 3%)) * 3%
        Decimal feeCorrectionAmount = ((invoiceAmount / (1 - PERCENTAGE_FEE)) * PERCENTAGE_FEE);
        System.debug('Additional amount needed to actually get invoice amount is ' + feeCorrectionAmount);

        //Print out the new total of much you should ask for to meet the original invoice amount with fees
        Decimal newInvoiceAmount = (feeCorrectionAmount + FLAT_FEE + invoiceAmount);
        System.debug('New invoice total amount is ' + newInvoiceAmount);
    }

    /*
    You are give a list of hours work and the hourly rate on projects
    Loop over the list and calculate the hourly rate for the corresponding number of hours worked and hourly rate
     */
    public static void calculateHourlyRatePart2(){
        //Hourly rates provided - Changes these if needed to test other values - initial values {106.75, 119.73, 38.24, 108.16, 146.38, 30.45, 63.11, 15.33, 121.53, 30}
        List<Decimal> ratesOnProjects = new List<Decimal>{106.75, 119.73, 38.24, 108.16, 146.38, 30.45, 63.11, 15.33, 121.53, 30};
        //Hours worked provided - Changes these if needed to test other values - initial values {26.35, 14.69, 10.89, 20, 8.91, 46.23, 40.39, 43.42, 25.17, 40.18}
        List<Double> hoursWorkedOnProjects = new List<Double>{6.35, 4.69, 10.89, 20, 8.91, 46.23, 40.39, 43.42, 25.17, 40.18};

        Decimal totalAmountEarned = 0;

        //Loop over the rates and hours
        for (Integer i = 0; i < 10; i++){
            Decimal hourlyRate = ratesOnProjects[i];
            Double hoursWorked = hoursWorkedOnProjects[i];

            //If the hourly rate is less than $80 then skip over it
            //If the hours worked is greater than 40 skip over it
            if (hourlyRate < 80 || hoursWorked > 40){
                System.debug('Skipped iteration ' + i);
                continue;
            }
            //Calculate the total amount earned
            totalAmountEarned += hourlyRate * hoursWorked;

            //Print out the amount earned for each loop iteration
            System.debug(totalAmountEarned);

            //If the amount earned is greater than $5k we can stop working
            if (totalAmountEarned >= 5000){
                break;
            }
        }

        System.debug('I made ' + totalAmountEarned);
        if (totalAmountEarned < 5000){ //If the total amount earned is less than 5000 print out a motivational message
            System.debug('Slow month for me. Maybe I should not have gone to Belize.');
        } else { //If the total amount earner is greater than 5000 print out a relaxing message
            System.debug('When you understand that your self-worth is not determined by your net-worth, then you’ll have financial freedom');
        }
    }


    /*
    Generate random project rates and hours using the generateRandomNumber function provided
    Use the formatCurrency function to update any of the previous Decimal/Currency debug or print statements
    Ex 1324.3503 = $1,324.35
    Do any formatting for non-currency debug or print statements
     */

    public static void generateProjectDataPart3(){
        List<Decimal> randomRatesForProjects = new List<Decimal>();
        List<Double> randomHoursForProjects = new List<Double>();

        //Create loop that iterates 10 times
        for (Integer i = 0; i < 10; i++) {
            //Add random numbers to the rate and hours list
            //Max randomly generated number allow for rates is 150
            randomRatesForProjects.add(generateRandomNumber(150));
            //Max randomly generated number allow for hours is 50
            randomHoursForProjects.add(generateRandomNumber(50));
        }

        //Print out the list of rates
        System.debug(randomRatesForProjects);
        //Print out the list of hours
        System.debug(randomHoursForProjects);


    }

    /*
    Generate a random number with decimal places
    Formula to create random numbers with 2 decimal places floor(random * (maxNumber * 100 - 1 * 100) + 1 * 100) / (1*100);
    Modify the input parameters to allow for the maximum number to be changed
    Modify this method to return the randomNumber generated
    */

    static Double generateRandomNumber(Integer maxNum) {
        //Return randomly generated number
        //Hint: floor(random * (maxNumber * 100 - 1 * 100) + 1 * 100) / (1*100);
        Double decimalPlace = 100;
        Integer maximumNumber = maxNum;
        Double randomNumber = Math.floor(Math.random() * (maximumNumber * decimalPlace - 1 * decimalPlace) + 1 * decimalPlace) / (1 * decimalPlace);
        return randomNumber;
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

    public static void calculateInvoiceAmountPart3(){
        //Every transaction has a flat fee of 30 cents and this never changes
        final Decimal FLAT_FEE = 0.30;
        //Every transaction has a percentage based fee 3% and this never changes
        final Double PERCENTAGE_FEE = 0.03;
        //Create a variable to hold the invoice amount
        Decimal invoiceAmount = 1000;

        //Print out flat the transaction fees
        System.debug('Flat Fee: $' + FLAT_FEE);
        //Print out percentage the transaction fees
        System.debug('Percentage Fee: ' + Math.roundToLong(PERCENTAGE_FEE * 100) + '%');
        //Print out the invoice Amount
        System.debug('I am sending an invoice for $' + formatCurrency(invoiceAmount));

        //Print out the total fees for our invoice
        //Hint: (Amount * 3% + 30 cents)
        Decimal totalFees = (invoiceAmount * PERCENTAGE_FEE) + FLAT_FEE;
        System.debug('The total amount of fees are $' + formatCurrency(totalFees));

        //Print out how much money you will have left over
        Decimal takeHome = invoiceAmount - totalFees;
        System.debug('I will get $' + formatCurrency(takeHome) + ' because of the fees');

        //Print out how much additional money you need to ask for to make up the fees
        //Hint: (amount / (1 - 3%)) * 3%
        Decimal feeCorrectionAmount = ((invoiceAmount / (1 - PERCENTAGE_FEE)) * PERCENTAGE_FEE);
        System.debug('Additional amount needed to actually get invoice amount is $' + formatCurrency(feeCorrectionAmount));

        //Print out the new total of much you should ask for to meet the original invoice amount with fees
        Decimal newInvoiceAmount = (feeCorrectionAmount + FLAT_FEE + invoiceAmount);
        System.debug('New invoice total amount is $' + formatCurrency(newInvoiceAmount));
    }
}