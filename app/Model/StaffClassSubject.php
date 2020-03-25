<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class StaffClassSubject extends Model
{
    protected $fillable = [

        'staff_id',
        'grade_id',
        'subject_id',
        'school_id',

    ];
}
