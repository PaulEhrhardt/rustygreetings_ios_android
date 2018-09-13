package de.ehrpaulhardt.rustygreetings;

public class RustyGreetings {

    private static native String greeting(final String pattern);

    public String sayHello(String to) {
        return greeting(to);
    }
}
