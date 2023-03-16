package com.example.allpracticals

import android.media.MediaPlayer
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.AppCompatButton

class MediaPlayerPrac:AppCompatActivity() {
    private  lateinit var  btn_play:AppCompatButton
    private  lateinit var  btn_pause:AppCompatButton
    private  lateinit var  btn_stop:AppCompatButton
    private  lateinit var  btn_next:AppCompatButton
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.media_player_prac)
        btn_play=findViewById(R.id.btn_play)
        btn_pause=findViewById(R.id.btn_pause)
        btn_stop=findViewById(R.id.btn_stop)
        btn_next=findViewById(R.id.btn_next)

        val mediaPlayer=MediaPlayer.create(this,R.raw.spacesong)

        btn_play.setOnClickListener {
            mediaPlayer.start()
        }
        btn_pause.setOnClickListener {
            mediaPlayer.pause()
        }
        btn_stop.setOnClickListener {
            mediaPlayer.stop()
            mediaPlayer.prepare()
        }
        btn_next.setOnClickListener {  }
    }

}