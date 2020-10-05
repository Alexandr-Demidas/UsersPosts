<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    public function users()
    {
        return $this->belongsTo('App\User', 'author_id');
    }

    public function images()
    {
        return $this->hasOne('App\Image','image_id');
    }

    public function comments()
    {
        return $this->hasMany('App\Comment', 'post_id');
    }


}
