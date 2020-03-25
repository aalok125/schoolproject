<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Grade extends Model


{
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
}



