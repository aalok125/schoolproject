<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Occupation extends Model
{
    protected $fillable = [

        'title',
        'remarks',

    ];


    public function student(){

        return $this->hasMany(Student::class, 'occupation_id');
    }

}
