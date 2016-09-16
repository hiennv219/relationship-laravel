<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Phone extends Model
{
    protected $table = "phones";

	/**
	* Liên kểt 1-1 với bảng Phones có chứ user_id
	*
	* @param Model
	*/
    public function user(){
    	return $this->belongsTo('App\User','user_genid');
    }
}
