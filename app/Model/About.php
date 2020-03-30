<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class About extends Model
{
    protected $fillable = [
        'key',
        'value',
        'school_id',
    ];
}
