<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    protected $fillable = [

        'title',
        'remarks',
        'grade_id',
        'school_id',

    ];


    public function grade(){

        return $this->belongsTo(Grade::class, 'grade_id');
    }

    public function school(){

        return $this->belongsTo(School::class, 'school_id');
    }
}
