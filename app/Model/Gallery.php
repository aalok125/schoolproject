<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{

    protected $fillable = [

        'album_id',
        'title',
        'image',
        'school_id',

    ];


    public function album(){

        return $this->belongsTo(Album::class, 'album_id');
    }

    public function school(){

        return $this->belongsTo(School::class, 'school_id');
    }
}
