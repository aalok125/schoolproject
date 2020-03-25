<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $fillable = [

        'name',
        'grade_id',
        'ethnicity_id',
        'address',
        'gender',
        'DOB',
        'guardian_name',
        'guardian_phone',
        'guardian_email',
        'occupation_id',
        'school_id',

    ];


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
