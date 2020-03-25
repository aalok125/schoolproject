<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class StaffDocument extends Model
{
    protected $fillable = [

        'title',
        'staff_id',
        'file',
        'school_id',

    ];


    public function staff(){

        return $this->belongsTo(Staff::class, 'staff_id');
    }



    public function school(){

        return $this->belongsTo(Grade::class, 'school_id');
    }
}
