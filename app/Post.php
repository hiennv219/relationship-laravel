<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $table = "posts";

    // 1 Post co nhieu Comment
    public function comments(){
    	return $this->hasMany('App\Comment');
    }

    //Quan hệ đa hình Post -> Likes 
    public function likes(){
    	return $this->morphMany('App\Like','likeable');
    }


    //Quan he da hinh nhieu nhieu 
    public function tags(){
    	return $this->morphToMany('App\Tag', 'taggable');
    }
}
