package com.example.pharmacat;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;

public class starting_activity extends AppCompatActivity {
    public void login_page(View view){
        Intent intent= new Intent(getApplicationContext(),MainActivity.class);
        startActivity(intent);
    }
    public void register_page(View view){
        Log.i("WE","Register");
        Intent intent=new Intent(getApplicationContext(),Register_activity.class);
        startActivity(intent);
    }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.starting_layout);
    }
}
