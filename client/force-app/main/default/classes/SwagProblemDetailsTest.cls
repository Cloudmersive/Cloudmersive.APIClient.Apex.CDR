@isTest
private class SwagProblemDetailsTest {
    @isTest
    private static void equalsSameInstance() {
        SwagProblemDetails problemDetails1 = SwagProblemDetails.getExample();
        SwagProblemDetails problemDetails2 = problemDetails1;
        SwagProblemDetails problemDetails3 = new SwagProblemDetails();
        SwagProblemDetails problemDetails4 = problemDetails3;

        System.assert(problemDetails1.equals(problemDetails2));
        System.assert(problemDetails2.equals(problemDetails1));
        System.assert(problemDetails1.equals(problemDetails1));
        System.assert(problemDetails3.equals(problemDetails4));
        System.assert(problemDetails4.equals(problemDetails3));
        System.assert(problemDetails3.equals(problemDetails3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagProblemDetails problemDetails1 = SwagProblemDetails.getExample();
        SwagProblemDetails problemDetails2 = SwagProblemDetails.getExample();
        SwagProblemDetails problemDetails3 = new SwagProblemDetails();
        SwagProblemDetails problemDetails4 = new SwagProblemDetails();

        System.assert(problemDetails1.equals(problemDetails2));
        System.assert(problemDetails2.equals(problemDetails1));
        System.assert(problemDetails3.equals(problemDetails4));
        System.assert(problemDetails4.equals(problemDetails3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagProblemDetails problemDetails1 = SwagProblemDetails.getExample();
        SwagProblemDetails problemDetails2 = new SwagProblemDetails();

        System.assertEquals(false, problemDetails1.equals(problemDetails2));
        System.assertEquals(false, problemDetails2.equals(problemDetails1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagProblemDetails problemDetails1 = SwagProblemDetails.getExample();
        SwagProblemDetails problemDetails2 = new SwagProblemDetails();

        System.assertEquals(false, problemDetails1.equals('foo'));
        System.assertEquals(false, problemDetails2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagProblemDetails problemDetails1 = SwagProblemDetails.getExample();
        SwagProblemDetails problemDetails2 = new SwagProblemDetails();
        SwagProblemDetails problemDetails3;

        System.assertEquals(false, problemDetails1.equals(problemDetails3));
        System.assertEquals(false, problemDetails2.equals(problemDetails3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagProblemDetails problemDetails1 = SwagProblemDetails.getExample();
        SwagProblemDetails problemDetails2 = new SwagProblemDetails();

        System.assertEquals(problemDetails1.hashCode(), problemDetails1.hashCode());
        System.assertEquals(problemDetails2.hashCode(), problemDetails2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagProblemDetails problemDetails1 = SwagProblemDetails.getExample();
        SwagProblemDetails problemDetails2 = SwagProblemDetails.getExample();
        SwagProblemDetails problemDetails3 = new SwagProblemDetails();
        SwagProblemDetails problemDetails4 = new SwagProblemDetails();

        System.assert(problemDetails1.equals(problemDetails2));
        System.assert(problemDetails3.equals(problemDetails4));
        System.assertEquals(problemDetails1.hashCode(), problemDetails2.hashCode());
        System.assertEquals(problemDetails3.hashCode(), problemDetails4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagProblemDetails problemDetails = new SwagProblemDetails();
        Map<String, String> propertyMappings = problemDetails.getPropertyMappings();
        System.assertEquals('r_type', propertyMappings.get('type'));
    }
}
