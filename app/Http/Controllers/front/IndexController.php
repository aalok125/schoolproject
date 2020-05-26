<?php

namespace App\Http\Controllers\front;

use App\Model\About;
use App\Model\Album;
use App\Model\Asset;
use App\Model\AssetCategory;
use App\Model\Event;
use App\Model\Gallery;
use App\Model\News;
use App\Model\Notice;
use App\Model\Slider;
use App\Model\Tender;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;


class IndexController extends Controller
{
    public function home(){
        $school_id = 1;
        $context = new Collection();

        $context->slider_notices = Notice::where('school_id',$school_id)->where('status',1)->orderBy('created_at','desc')->get(['id','title','created_at'])->take(6);
        $context->block_notices = $context->slider_notices->take(3);
        $context->tenders = Tender::where('school_id',$school_id)->where('status',1)->orderBy('created_at','desc')->get(['id','title','created_at'])->take(3);
        $context->news = News::where('school_id',$school_id)->where('status',1)->orderBy('created_at','desc')->get(['id','title','created_at'])->take(3);
        $context->events = Event::where('school_id',$school_id)->where('status',1)->orderBy('created_at','desc')->get(['id','title','created_at'])->take(3);
        $context->sliders = Slider::where('status',$school_id)->where('school_id',1)->get();

        $assetCategories = AssetCategory::where('school_id',$school_id)->get(['id','title']);
        foreach ($assetCategories as $category){
            $img = null;
            foreach ($category->assets as $asset){
                foreach ($asset->assetImages as $image){
                    if(file_exists($image->image)){
                        $img = $image->image;
                        break 2;
                    }
                }
            }
            $category->preview_image = $img;
        }
        $context->asset_categories = $assetCategories;
        $context->student_count = schoolStudentsCount($school_id);
        $context->administration_count = schoolAdministrationCount($school_id);
        $context->teacher_count = schoolTeacherCount($school_id);
//        dd($context);
        return view('front.index',compact('context'));
    }

    public function contact(){
        return view('front.contact');
    }

    public function gallery(){
        $albums = Album::where('school_id',1)->get();
        return view('front.gallery',compact('albums'));
    }

    public function singleAlbum($slug){
        $album = Album::where('slug',$slug)->first();
        $galleries = isset($album->gallerys) ? $album->gallerys : [];
        return view('front.gallery-single',compact('galleries','album'));
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
