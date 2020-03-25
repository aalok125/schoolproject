<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Exam extends Model
{
    protected $fillable = [

        'title',
        'start_date',
        'remarks',
        'school_id',

    ];



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
