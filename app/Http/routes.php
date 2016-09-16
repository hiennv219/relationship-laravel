<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/',  'HomeController@index');


/**
| Quan he 1 -1
|-------------------------------
| One to One
| Table: Users - Phone
*/
Route::get('/user/{id}',  'HomeController@showUser');
Route::get('/phone/{id}',  'HomeController@showPhone');

/**
| Quan he 1 - n
|-------------------------------
| One to Many
| Table: Post - Comment
*/
Route::get('/post/{id}',  'HomeController@showPost');
Route::get('/comment/{id}',  'HomeController@showComment');


/**
| Quan he n - n
|-------------------------------
| Many to Many
| Table: User - Role
*/
Route::get('/user/{id}/roles',  'HomeController@showUserRoles');
Route::get('/role/{id}/users',  'HomeController@showRoleUsers');


/**
| Quan he da hinh 
|-------------------------------
| Polymorphic Relationship
| Table: Posts - Comments - Likes
*/

Route::get('/post-likes', 'HomeController@postLikes');
Route::get('/comment-likes', 'HomeController@postCommentLikes');
Route::get('/comment-likes/show', 'HomeController@showCommentLikes');
Route::get('/likepostorcomment','HomeController@showlikePostOrComment');


/**
| Quan he da hinh trong laravel
|-------------------------------
| Polymorphic Relationship
| table: Posts - Videos - Tags - Taggables
*/

//Them du lieu
Route::get('/ManytoManyPolymorphic', 'HomeController@storeManyPolymorphic');
Route::get('/postTags', 'HomeController@postTags');
Route::get('/videoTags', 'HomeController@videoTags');
Route::get('/tagVideosPosts/{id}', 'HomeController@tagVideosPosts');



