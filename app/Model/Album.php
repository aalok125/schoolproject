<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Album extends Model
{
    protected $fillable = [

        'title',
        'school_id',

    ];


    public function gallerys(){

        return $this->hasMany(Gallery::class, 'album_id');
    }

    public function school(){

        return $this->belongsTo(School::class, 'school_id');
    }
}
