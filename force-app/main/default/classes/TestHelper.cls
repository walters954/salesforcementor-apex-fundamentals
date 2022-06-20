
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

    public static Boolean numberOfDaysInTheYear(Object value) {
        return value instanceof Integer && (Integer) value == 365;
    }

    public static Boolean lightSpeed(Object value) {
        if(value instanceof Integer == false) {
            return false;
        }
        if((Integer) value != 299792458) {
            return false;
        }
        // attempt to change it, if we catch an Ex, the solution is wrong.
        try {
            (Integer) value = 100;
        } catch (FinalException fex) {
            System.debug(fex.getMessage());
            System.debug(fex.getStackTraceString());
            return true;
        }
        return false;
    }

    public static Boolean valueOfPi(Object value) {
        if(value instanceof Double == false || value instanceof Decimal == false) {
            return false;
        }
        if((Decimal) value != 3.14) {
            return false;
        }
        // attempt to change it, if we catch an Ex, the solution is wrong.
        try {
            (Decimal) value = 0.00001;
        } catch (FinalException fex) {
            System.debug(fex.getMessage());
            System.debug(fex.getStackTraceString());
            return true;
        }
        return false;
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