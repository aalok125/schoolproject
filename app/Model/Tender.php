<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Tender extends Model
{
    use Sluggable;
    protected $fillable = [

        'title',
        'slug',
        'file',
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
