package com.example.allpracticals

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.*
import androidx.appcompat.widget.AppCompatButton

class Practical2 : AppCompatActivity() {
    private lateinit var fname:EditText
    private lateinit var lname:EditText
    private lateinit var game:Spinner
    private lateinit var rgGender: RadioGroup
    private lateinit var cbAgeCheck: CheckBox
    private lateinit var btn_submit:AppCompatButton
    private lateinit var btn_nxt:AppCompatButton
    private var isAdult: Boolean = false
    private var isMale: Boolean = false
    private var greet:String=""
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.practical_2)

        initComponents()

        rgGender.setOnCheckedChangeListener{_,checkedID ->
            when(checkedID){
                R.id.rb_male->isMale=true
                R.id.rb_female->isMale=false
            }
        }

        cbAgeCheck.setOnCheckedChangeListener{_,status->
            isAdult=status;
        }

        btn_submit.setOnClickListener {
            greet="Welcome ${fname.text} ${lname.text} you are a ${if (isAdult)
            "Adult" else "child"}\n"
            greet+="You like ${game.selectedItem} nice choice ${if(isMale) "Boy" else "Girl"}"
            Toast.makeText(this,greet,Toast.LENGTH_LONG).show()
        }
        btn_nxt.setOnClickListener {
            var intent=Intent(this,IntentDemo::class.java)
            startActivity(intent)
        }
    }
    private fun initComponents(){
        fname=findViewById(R.id.et_fname)
        lname=findViewById(R.id.et_lname)
        game=findViewById(R.id.s_game)
        rgGender=findViewById(R.id.rg_gender)
        cbAgeCheck=findViewById(R.id.cb_age)
        btn_submit=findViewById(R.id.btn_submit)
        btn_nxt=findViewById(R.id.btn_nxt)
    }

    private fun onclick(){

    }
}