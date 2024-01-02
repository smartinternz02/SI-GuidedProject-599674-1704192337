@isTest
public class TestVerifyDate {

    @isTest
    static void testCheckDatesWithin30Days() {
        Date date1 = Date.today();
        Date date2 = date1.addDays(15);

        // Test date2 is within the next 30 days of date1
        Date result = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date2, result);
    }

    @isTest
    static void testCheckDatesOutside30Days() {
        Date date1 = Date.today();
        Date date2 = date1.addDays(35);

        // Test date2 is outside the next 30 days of date1
        Date result = VerifyDate.CheckDates(date1, date2);

        // Expected result is the end of the month for date1
        Date expected = VerifyDate.SetEndOfMonthDate(date1);
        System.assertEquals(expected, result);
    }
}
