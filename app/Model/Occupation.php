<?php

namespace App\Model;

use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Model;

class Occupation extends Model
{
    use Sluggable;
    protected $fillable = [

        'title',
        'slug',
        'remarks',

    ];

    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }


    public function student(){

        return $this->hasMany(Student::class, 'occupation_id');
    }

}
