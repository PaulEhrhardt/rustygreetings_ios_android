package de.ehrpaulhardt.rustygreetings;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    static {
        System.loadLibrary("greetings");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        RustyGreetings greetings = new RustyGreetings();
        String helloString = greetings.sayHello("Rusty my good old boy");
        View view = findViewById(R.id.greetingField);
        TextView textView = (TextView) view;
        textView.setText(helloString);
    }
}
