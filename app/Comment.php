<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $table = "comments";

	/**
	| Quan he 1 - n
	|-------------------------------
	| One to Many
	| Table: Post - Comment
	| 1 Comment chi co 1 post.
	*/
    public function post(){
    	return $this->belongsTo('App\Post');
    }
    

    //Quan hệ đa hình Comment -> Likes  
    public function likes(){
    	return $this->morphMany('App\Like', 'likeable');
    }


}
