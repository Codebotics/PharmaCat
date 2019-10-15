package com.example.pharmacat;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.RadioGroup;

public class Register_activity extends AppCompatActivity {
    CheckBox doctor, patient;
    EditText name,email,password,username;
    public void Register(View view){
        if(name.toString()!=null && email.toString()!=null && password.toString()!=null && username.toString()!=null){
            if(doctor.isChecked() || patient.isChecked()){
                Intent intent=new Intent(getApplicationContext(),MainActivity.class);
                startActivity(intent);
            }
        }
    }
    public void login(View view){
        Intent intent= new Intent(getApplicationContext(),MainActivity.class);
        startActivity(intent);
    }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.register_layout);
        doctor=findViewById(R.id.doctor_checkBox);
        patient=findViewById(R.id.patient_checkBox);
        doctor.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if(doctor.isChecked()){
                if(patient.isChecked()){
                    patient.setChecked(false);
                }}
            }
        });
        patient.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if (patient.isChecked()){
                if(doctor.isChecked()){
                    doctor.setChecked(false);}
                }
            }
        });
        name=findViewById(R.id.editname);
        email=findViewById(R.id.editmail);
        password=findViewById(R.id.editpassword);
        username=findViewById(R.id.editusername);
    }
}
