package com.example.vanv

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.*
import androidx.appcompat.widget.AppCompatButton

class MainActivity : AppCompatActivity() {
    private lateinit var etName:EditText
    private lateinit var rbGender: RadioGroup
    private lateinit var sPlanet:Spinner
    private lateinit var cbAge:CheckBox
    private lateinit var btnStatus: AppCompatButton
    private lateinit var btnNext: AppCompatButton
    private lateinit var greetings:String
    private var areYou18:Boolean=false
    private var isMale:Boolean=false
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        initComponent()

        rbGender.setOnCheckedChangeListener{_,checkedID ->
            when(checkedID){
                R.id.rg_male-> isMale=true
                R.id.rg_female-> isMale=false
            }

        }

        cbAge.setOnCheckedChangeListener { _, isChecked ->
            areYou18 = isChecked
        }

        btnStatus.setOnClickListener{
            greetings=" ${etName.text.toString()} Welcome to survey"
            greetings+=" Hobby: ${sPlanet.selectedItem.toString()}"
            greetings+=" ${if (areYou18) "Adult" else "Child"}"
            greetings+=" ${if (isMale) "Male" else "Female"}"
            Toast.makeText(this,greetings,Toast.LENGTH_LONG).show()
        }
        btnNext.setOnClickListener{
            val intent = Intent(this,IntentPrac::class.java)
            startActivity(intent)
        }

    }

    private fun initComponent(){
        etName=findViewById(R.id.et_name)
        btnStatus=findViewById(R.id.btn_submit)
        rbGender=findViewById(R.id.rg_gender)
        sPlanet=findViewById(R.id.s_planet)
        cbAge=findViewById(R.id.cb_age_check)
        btnNext=findViewById(R.id.btn_nxt)
    }

}