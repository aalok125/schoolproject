<?php

namespace App\Model;

use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    use Sluggable;
    protected $fillable = [

        'title',
        'slug',
        'remarks',
        'grade_id',
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


    public function grade(){

        return $this->belongsTo(Grade::class, 'grade_id');
    }

    public function school(){

        return $this->belongsTo(School::class, 'school_id');
    }
}
