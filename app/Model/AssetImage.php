<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class AssetImage extends Model
{
    protected $fillable = [
        'asset_id',
        'image',
        'school_id',
    ];


    public function asset(){

        return $this->belongsTo(Asset::class, 'asset_id');
    }

    public function school(){

        return $this->belongsTo(School::class, 'school_id');
    }
}
