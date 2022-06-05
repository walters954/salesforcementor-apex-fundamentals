
public with sharing class TestHelper {

    public static Boolean yourName(Object value) {
        return value instanceof String && String.isNotBlank((String) value);
    }


    public static Boolean secretOfTheUniverse(Integer value) {
        return value == 42;
    }

    public static Boolean favoriteMovie(Object value) {
        return value instanceof String && String.isNotBlank((String) value);
    }

    public static Boolean yourHeight(Object value) {
        return value instanceof Decimal || value instanceof  Double;
    }

    public static Boolean socialMediaApps(Object value) {
        return value instanceof Integer;
    }

    public static Boolean earthRevolvesAroundTheSun(Object value) {
        return value instanceof Boolean && (Boolean) value;
    }

    public static Boolean findMax(Integer num1, Integer num2, Integer max) {
        Integer tmpMax = Math.max(num1, num2);
        return tmpMax == max;
    }

    public static Boolean numberSign(Integer num, String sign) {
        String numberSign;
        if (num > 0){
            numberSign = 'POSITIVE';
        } else if (num < 0){
            numberSign = 'NEGATIVE';
        } else {
            numberSign = 'ZERO';
        }
        return numberSign == sign;
    }

    public static Boolean longestWord(Object num, Object value){
        return (Integer) num == String.valueOf(value).length();
    }

    public static Boolean visitedDisney(Date d){
        return d.isSameDay(Date.today().addYears(-1));
    }

    public static Boolean countCurrentDaysInYear(Integer n){
        return Date.newInstance(Date.today().year(),1,1).daysBetween(System.today()) == n;
    }

}