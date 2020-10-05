<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
   public $timestamps = false;

    public function posts()
    {
        return $this->belongsTo('App\Posts','image_id');
    }

}
