<?php

namespace App\Model;

use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Model;

class Grade extends Model


{

    use Sluggable;
   protected $fillable = [

       'title',
       'slug',
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

        return $this->belongsToMany(Grade::class, 'exam_grade', 'grade_id');
    }


    public function staffs(){

        return $this->belongsToMany(Grade::class, 'exam_grade', 'grade_id');
    }


    public function students(){

        return $this->hasMany(Student::class, 'grade_id');
    }


    public function school(){

        return $this->belongsTo(School::class, 'school_id');
    }

    public function subjects(){
        return $this->hasMany(Subject::class,'grade_id');
    }
}



