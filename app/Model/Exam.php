<?php

namespace App\Model;

use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Model;

class Exam extends Model
{
    use Sluggable;
    protected $fillable = [

        'title',
        'slug',
        'start_date',
        'remarks',
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



    public function grades(){

        return $this->belongsToMany(Grade::class, 'exam_grade', 'exam_id');
    }



    public function results(){

        return $this->belongsTo(School::class, 'school_id');
    }



    public function school(){

        return $this->belongsTo(School::class, 'school_id');
    }
}
