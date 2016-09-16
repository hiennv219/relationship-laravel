<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Like extends Model
{
    protected $table="likes";

    public $timestamps = false;
    
	/**
	| Quan he da hinh 
	|-------------------------------
	| Polymorphic Relationship
	| Table: Posts - Comments - Likes
	| Quan hệ đa hình like -> Post | Comment 
	*/
    public function likeable(){
    	return $this->morphTo();
    }
}
