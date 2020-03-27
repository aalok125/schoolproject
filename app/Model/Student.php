<?php

namespace App\Model;

use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use  Sluggable;
    protected $fillable = [

        'name',
        'slug',
        'image',
        'grade_id',
        'ethnicity_id',
        'address',
        'gender',
        'religion',
        'DOB',
        'guardian_name',
        'guardian_phone',
        'guardian_email',
        'occupation_id',
        'school_id',

    ];

    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'name'
            ]
        ];
    }


    public function grade(){

        return $this->belongsTo(Grade::class, 'grade_id');
    }


    public function ethnicity(){

        return $this->belongsTo(Ethnicity::class, 'ethnicity_id');
    }


    public function occupation(){

        return $this->belongsTo(Occupation::class, 'occupation_id');
    }



    public function school(){

        return $this->belongsTo(School::class, 'school_id');
    }

}
