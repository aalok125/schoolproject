<?php

namespace App\Model;

use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Model;

class Album extends Model
{
    use Sluggable;
    protected $fillable = [

        'title',
        'slug',
        'school_id',

    ];

    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }


    public function gallerys(){

        return $this->hasMany(Gallery::class, 'album_id');
    }

    public function school(){

        return $this->belongsTo(School::class, 'school_id');
    }
}
