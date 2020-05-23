<?php

namespace App\Http\Controllers\front;

use App\Model\About;
use App\Model\Asset;
use App\Model\AssetCategory;
use App\Model\Notice;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class IndexController extends Controller
{
    public function home(){
        $context = new Collection();
        $context->notices = Notice::where('school_id',1)->where('status',1)->orderBy('created_at','desc')->get();
        return view('front.index',compact('context'));
    }

    public function contact(){
        return view('front.contact');
    }

    public function gallery(){
        return view('front.gallery');
    }

    public function about(){
        return view('front.about');
    }

    public function mission_vision(){
        return view('front.school.mission-vision');
    }
    public function principal_note(){
        return view('front.school.principal-note');
    }

    public function asset_category($id){
        $asset_category = AssetCategory::findOrFail($id);
        $assets = $asset_category->assets;
        $images = [];
        foreach ($assets as $asset){
            if(isset($asset->assetImages)){
                foreach ($asset->assetImages as $img) {
                    if (file_exists(public_path() . '/' . $img->image)) {
                        $images[] = $img->image;
                    }
                }
            }
        }
        return view('front.school.asset-single', compact('assets','asset_category','images'));
    }

}
