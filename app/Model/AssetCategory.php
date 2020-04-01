<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class AssetCategory extends Model
{
    use SoftDeletes;
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
