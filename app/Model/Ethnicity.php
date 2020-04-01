<?php

namespace App\Model;

use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Ethnicity extends Model
{
    use Sluggable;

    use SoftDeletes;
    protected $fillable = [

        'title',
        'slug',
        'remarks',

    ];

    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }


    public function student(){

        return $this->hasMany(Student::class, 'ethnicity_id');
    }


    public function staff(){

        return $this->hasMany(Staff::class, 'ethnicity_id');
    }
}
