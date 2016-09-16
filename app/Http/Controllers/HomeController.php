<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\User;
use App\Phone;
use App\Post;
use App\Comment;
use App\Role;
use App\Like;
use App\Video;
use App\Tag;
use DB;

class HomeController extends Controller
{
    
    public function index(){
    	return "Wecome to dotSimon.com";
    }


    /**
    | Quan he 1 -1
    |-------------------------------
    | One to One
    | Table: Users - Phone
    */

	//Hien thi so dien thoai cua Nguoi dung theo id.
    public function showUser($id){
    	return $phone = User::find($id)->phone;
    }

	//Hien thi Nguoi nao dang su dung số điện thoại có id này.
    public function showPhone($id){
    	return $user = Phone::find($id)->user;
    }



    /**
    | Quan he 1 - n
    |-------------------------------
    | One to Many
    | Table: Post - Comment
    */

	//Hien thi tat ca cac comment cua bai Post co id la $id
    public function showPost($id){

    	$comments = Post::find($id)->comments()->where('is_published', 1)->get();

    	return $comments;
    }

    //Kiem tra xem comment nay thuoc post nao. 
    public function showComment($id){
        $post = Comment::find($id)->post;
        return $post;
    }


    /**
    | Quan he n - n
    |-------------------------------
    | Many to Many
    | Table: User - Role
    */

    //xem một usser sẽ có những quyền gì
    public function showUserRoles($id){
        return $roles = User::find($id)->roles;
    }

    //Xem quyền admin gồm những người nào
    public function showRoleUsers($id){
        return $users = Role::find($id)->users;
    }


    /**
    | Quan he da hinh 
    |-------------------------------
    | Polymorphic Relationship
    | Table: Posts - Comments - Likes
    */

    public function postLikes(){
        $post = Comment::find(1);
        $like = new Like();
        $post->likes()->save($like);

        foreach($post->likes as $like){
            dd($like);
        }
        return Like::find(1)->likeable;
    }


    //Insert da hinh comment like
    public function postCommentLikes(){
        $comment = Comment::find(1);
        $like = new Like();
        $comment->likes()->save($like);
        return "Luu thanh cong";
    }

    //Hien thi tat ca cac like Cua 1 comment
    public function showCommentLikes(){
        $comment = Comment::find(1);
        return $comment->likes;
    }


    //Hien thi xem Like nay cua post hay comment nao
    public function showlikePostOrComment(){
        $like = Like::find(19);
        // return $like->likeable_type;
        return $like->likeable;
    }


    /**
    | Quan he da hinh nhieu - nhieu
    |-------------------------------
    | Many to Many Polymorphic Relationship
    | table: Posts - Videos - Tags - Taggables
    */
    
    public function storeManyPolymorphic(){
        //Insert is POST. Them tag "tri thuc" vao post.
        // $post = Post::find(1);
        // $tag = new Tag();
        // $tag->name = "Tri thức";
        // $post->tags()->save($tag);

        //Insert is Video. Them tag "Tri thuc vao video"
        //Kiểm tra xem tag này đã tồn tại chưa, Nếu chưa thì khi báo name để tạo tag mới
        $video = Video::find(1);
        $tag_into = "Tony Buổi Sáng";
        $tag = Tag::where('name', $tag_into)->first();
        if(count($tag) == 0 ){
            $tag = new Tag();
            $tag->name = $tag_into;
        }
        $video->tags()->save($tag);
    }

    public function postTags(){
        $post = Post::find(1);
        return $post->tags;
    }

    public function videoTags(){
        $video = Video::find(1);
        return $video->tags;
    }

    public function tagVideosPosts($id){
        $tag = Tag::find($id);
        //Check xem Tag nay co ton tai khong
        if(count($tag) > 0){

            $taggable = DB::table('taggables')->where('tag_id', $id)->first();
            //Check taggable type xem la POST hay la Video
            if($taggable->taggable_type == "App\Post"){
                echo "POST";
                return $tag->posts;
            }else{
                echo "Video";
                return $tag->videos;
            }
        }else{
            return "Khong co Tag nao";
        }
    }
}
