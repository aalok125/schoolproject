<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class AssetCategory extends Model
{
    protected $fillable = [
        'title',
        'remarks',
        'school_id',
    ];


    public function assets(){

        return $this->hasMany(Asset::class, 'asset_category_id');
    }

    public function school(){

        return $this->belongsTo(School::class, 'school_id');
    }
}
