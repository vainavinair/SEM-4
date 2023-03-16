package com.example.allpracticals

import android.content.Intent
import android.os.Bundle
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.AppCompatButton

class ActivtiyLifeCycle:AppCompatActivity(){
    private lateinit var btn_next:AppCompatButton
    private lateinit var tv_status: TextView
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_lifecycle)
        btn_next=findViewById(R.id.btn_next)
        tv_status=findViewById(R.id.tv_status)
        tv_status.text="Create"
        Toast.makeText(this,"CREATE",Toast.LENGTH_SHORT).show()
        btn_next.setOnClickListener {
            val intent = Intent(this,MediaPlayerPrac::class.java)
            startActivity(intent)
        }

    }

    override fun onStart() {
        super.onStart()
        tv_status.text="Create"
        Toast.makeText(this,"CREATE",Toast.LENGTH_SHORT).show()
    }
    override fun onPause() {
        super.onPause()
        tv_status.text="pause"
        Toast.makeText(this,"pause",Toast.LENGTH_SHORT).show()
    }

    override fun onRestart() {
        super.onRestart()
        tv_status.text="restart"
        Toast.makeText(this,"restart",Toast.LENGTH_SHORT).show()
    }

    override fun onResume() {
        super.onResume()
        tv_status.text="resume"
        Toast.makeText(this,"resume",Toast.LENGTH_SHORT).show()
    }

    override fun onDestroy() {
        super.onDestroy()
        tv_status.text="destroy"
        Toast.makeText(this,"destroy",Toast.LENGTH_SHORT).show()
    }

    override fun onStop() {
        super.onStop()
        tv_status.text="stop"
        Toast.makeText(this,"stop",Toast.LENGTH_SHORT).show()
    }
}