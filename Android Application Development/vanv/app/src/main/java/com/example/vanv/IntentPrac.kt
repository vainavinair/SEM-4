package com.example.vanv

import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Bundle
import android.os.PersistableBundle
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.AppCompatButton
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat

class IntentPrac : AppCompatActivity(){

    private lateinit var btnDial : AppCompatButton
    private lateinit var btnCall : AppCompatButton
    private lateinit var btnGoogle : AppCompatButton
    private lateinit var btnNext : AppCompatButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.intent_layout)

        //init components
        btnDial=findViewById(R.id.dial)
        btnCall=findViewById(R.id.call)
        btnGoogle=findViewById(R.id.google)
        btnNext=findViewById(R.id.next)

        //onclickListenrs

        btnDial.setOnClickListener {
            val intent = Intent(Intent.ACTION_DIAL, Uri.parse("tel:"+"+919850501787"))
            startActivity(intent)
        }
        btnCall.setOnClickListener {
            if (ContextCompat.checkSelfPermission(this,android.Manifest.permission.CALL_PHONE)!=PackageManager.PERMISSION_GRANTED){
                ActivityCompat.requestPermissions(this, arrayOf(android.Manifest.permission.CALL_PHONE),100)
            }
            else{
                val intent = Intent(Intent.ACTION_CALL, Uri.parse("tel:"+"+919850501787"))
                startActivity(intent)
            }
        }
        btnGoogle.setOnClickListener {
            val intent = Intent(Intent.ACTION_VIEW, Uri.parse("https://www.google.com"))
            startActivity(intent)
        }

        btnNext.setOnClickListener {
            val intent = Intent(this,ACLC::class.java)
            startActivity(intent)
        }

    }

}