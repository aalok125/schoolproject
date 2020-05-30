<?php

namespace App\Providers;

use App\Model\About;
use App\Model\AssetCategory;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        if(Schema::hasTable('abouts')) {
            $abouts = About::all();
        }
        else{
            $abouts = [];
        }
        $settings = [];
        foreach ($abouts as $about){
            $settings[$about->key] = $about->value;
        }
        View::share(compact('settings'));
    }
}
