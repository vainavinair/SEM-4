package com.example.vanv

import android.os.Bundle
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity

class ACLC:AppCompatActivity(){
    private lateinit var tvLabel:TextView
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.aclc)

        tvLabel=findViewById(R.id.tv_label)
        tvLabel.text= "Created"
        Toast.makeText(this,"Created",Toast.LENGTH_LONG).show()
    }

    override fun onPause() {
        super.onPause()
        tvLabel.text= "Paused"
        Toast.makeText(this,"Paused",Toast.LENGTH_LONG).show()
    }
    override fun onStart() {
        super.onStart()
        tvLabel.text= "Started"
        Toast.makeText(this,"Started",Toast.LENGTH_LONG).show()
    }
    override fun onResume() {
        super.onResume()
        tvLabel.text = "Resumed"
        Toast.makeText(this,"Resumed",Toast.LENGTH_SHORT).show()
    }
    override fun onRestart() {
        super.onRestart()
        tvLabel.text = "Restarted"
        Toast.makeText(this,"Restarted",Toast.LENGTH_SHORT).show()
    }

    override fun onDestroy() {
        super.onDestroy()
        tvLabel.text = "Destroyed"
        Toast.makeText(this,"Destroyed",Toast.LENGTH_SHORT).show()
    }
}