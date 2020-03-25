<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Result extends Model
{
    protected $fillable = [

        'exam_id',
        'grade_id',
        'file',
        'remarks',
        'school_id',

    ];

    public function exam(){

        return $this->belongsTo(School::class, 'school_id');
    }

    public function belongsTo(){

        return $this->belongsTo(Grade::class, 'grade_id');
    }

    public function school(){

        return $this->belongsTo(School::class, 'school_id');
    }
}
