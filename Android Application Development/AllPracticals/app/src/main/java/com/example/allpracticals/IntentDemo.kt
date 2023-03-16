package com.example.allpracticals

import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Bundle
import android.os.PersistableBundle
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.AppCompatButton
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat

class IntentDemo:AppCompatActivity() {

    private  lateinit var btn_call:AppCompatButton
    private  lateinit var btn_dial:AppCompatButton
    private  lateinit var btn_google:AppCompatButton
    private  lateinit var btn_next:AppCompatButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.intent_demo)
        btn_call=findViewById(R.id.btn_call)
        btn_dial=findViewById(R.id.btn_dial)
        btn_google=findViewById(R.id.btn_google)
        btn_next=findViewById(R.id.btn_next)
        btn_call.setOnClickListener {
            if (ContextCompat.checkSelfPermission(
                    this,
                    android.Manifest.permission.CALL_PHONE
                ) != PackageManager.PERMISSION_GRANTED
            ) {
                ActivityCompat.requestPermissions(
                    this,
                    arrayOf(android.Manifest.permission.CALL_PHONE), 100
                )
            } else {
                val intent = Intent(Intent.ACTION_CALL, Uri.parse("tel:" + "98500500500"))
                startActivity(intent)
            }
        }

        btn_dial.setOnClickListener {
            val intent = Intent(Intent.ACTION_DIAL, Uri.parse("tel:"+"54454544545"))
            startActivity(intent)
        }

        btn_google.setOnClickListener{
            val intent = Intent(Intent.ACTION_VIEW, Uri.parse("https://www.google.com"))
            startActivity(intent)
        }
        btn_next.setOnClickListener {
            val intent = Intent(this,ActivtiyLifeCycle::class.java)
            startActivity(intent)
        }

    }
}