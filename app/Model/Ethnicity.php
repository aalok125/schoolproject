<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Ethnicity extends Model
{
    protected $fillable = [

        'title',
        'remarks',

    ];


    public function student(){

        return $this->hasMany(Student::class, 'ethnicity_id');
    }


    public function staff(){

        return $this->hasMany(Staff::class, 'ethnicity_id');
    }
}
