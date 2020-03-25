<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class StaffType extends Model
{
    protected $fillable = [

        'title',
        'remarks',
        'school_id',

    ];


    public function staffs(){

        return $this->hasMany(Staff::class, 'staff_type_id');
    }



    public function school(){

        return $this->belongsTo(Grade::class, 'school_id');
    }
}
