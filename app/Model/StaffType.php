<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class StaffType extends Model
{
    use SoftDeletes;
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
