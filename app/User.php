<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];


    /**
    | Quan he 1 -1
    |-------------------------------
    | One to One
    | Table: Users - Phone
    */
    public function phone(){
        return $this->hasOne('App\Phone','user_genid');
    }

    /**
    | Quan he n - n
    |-------------------------------
    | Many to Many
    | Table: User - Role
    */
    public function roles(){
        return $this->belongsToMany('App\Role');
    }
}
