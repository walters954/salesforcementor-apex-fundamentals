@IsTest
private class InvoiceCalculatorDeploymentTest {
    @IsTest
    static void testCalculateInvoiceAmount() {
        Decimal offsetInvoiceAmount = InvoiceCalculatorDeployment.calculateInvoiceAmount(1000);
        System.assertEquals(1031.23,offsetInvoiceAmount);
    }

    @IsTest
    static void testCalculateHourlyRate() {

        Decimal totalAmount = InvoiceCalculatorDeployment.calculateHourlyRate(new List<Decimal>{106.75, 119.73, 38.24, 108.16, 146.38, 30.45, 63.11, 15.33, 121.53, 30},new List<Double>{6.35, 4.69, 10.89, 20, 8.91, 46.23, 40.39, 43.42, 25.17, 40.18});
        System.assertEquals(7765.75,totalAmount);
    }

    @IsTest
    static void testGenerateProjectData() {
        Integer MAX_NUMBER = 10;

        InvoiceCalculatorDeployment.generateProjectData();

        Double randomNumber = InvoiceCalculatorDeployment.generateRandomNumber(MAX_NUMBER);
        System.assert(randomNumber < MAX_NUMBER && randomNumber > 0);

        String formattedNumber = InvoiceCalculatorDeployment.formatCurrency(1337.42069);
        System.assertEquals('1,337.42',formattedNumber);
    }
}