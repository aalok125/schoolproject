<?php

namespace App\Http\Controllers\front;

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
}
