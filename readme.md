#Relationship Eloquent

Bài viết này mình sẽ tập trung và phần relationships, và các thao tác cơ bản trên Eloquent.
Các bảng trong cơ sở dữ liệu luôn có liên kết với nhau, việc khai báo các liên kết sẽ giúp chúng ta giảm thiểu số lượng truy vấn không cần thiết, đồng thời giúp toàn vẹn cơ sở dữ liệu.
Laravel cũng như các framework khác nó cũng hỗ trợ các relationship như sau:

	One to One
	One to Many
	Many to Many
	Has Many Through
	Polymorphic Relations
	Many to Many Polymorphic Relations


#One to One

Cấu trúc như sau:

	- Bảng 1
	return $this->hasOne( <Model>, <foreign_key>, <local_key>);

	- Bảng 2 chứa khoá ngoại là id bảng 1
	return $this->belongsTo( <Model>, <foreign_key>, <local_key>);

#One to Many

	return $this->hasMany('App\Comment');

	return $this->belongsTo('App\Post');


#Many to Many

	return $this->belongsToMany('App\Role');

	return $this->belongsToMany('App\User');

#has many through

Mối quan hệ "has many through" cung cấp 1 shortcut để gọi truy cập từ xa. Ở đây ta sẽ thực hiện lấy những "posts" tại "county" thông qua "user".

	return $this->hasManyThrough('App\Post', 'App\User');

	return $this->hasManyThrough('App\Post', 'App\User', 'country_id', 'user_id');


#Polymorphic Relations - Quan hệ đa hình

Quan hệ đa hình là một Model này thuộc về nhiều hơn 1 Model khác, dựa vào 1 liên kết duy nhất.
Ví dụ: 1 like có thể thuộc về 1 Post hoặc 1 Comment

	return $this->morphTo();

	return $this->morphMany('App\Like', 'likeable');

	return $this->morphMany('App\Like', 'likeable');


#Many To Many Polymorphic Relations

Ví dụ 1 Post và 1 Video có thể chia sẻ một mối quan hệ đa hình tớ 1 Tag

	return $this->morphToMany('App\Tag', 'taggable');

	return $this->morphToMany('App\Tag', 'taggable');

	return $this->morphToMany('App\Tag', 'taggable');

	return $this->morphToMany('App\Tag', 'taggable');

