<?php

namespace App\Model;

use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    use Sluggable;
    protected $fillable = [

        'title',
        'slug',
        'image',
        'content',
        'status',
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
}
