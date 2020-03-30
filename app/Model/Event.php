<?php

namespace App\Model;

use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    use Sluggable;
    protected $fillable = [

        'title',
        'slug',
        'image',
        'event_date',
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
