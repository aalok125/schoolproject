<?php

namespace App\Http\Controllers\front;

use App\Model\Event;
use App\Model\News;
use App\Model\Notice;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Mockery\Matcher\Not;

class NewsNoticeController extends Controller
{
    public function news(){
        $context = new Collection();
        $context->recent_notices = Notice::where('school_id',1)->where('status',1)->orderBy('created_at','desc')->get()->take(5);
        $context->recent_events = Event::where('school_id',1)->where('status',1)->orderBy('created_at','desc')->get()->take(5);
        $context->news = News::where('school_id',1)->where('status',1)->orderBy('created_at','desc')->get();
        return view('front.content.news',compact('context'));
    }

    public function singleNews($id){
        $context = new Collection();
        $context->recent_news = News::where('school_id',1)->where('status',1)->where('id','!=',$id)->orderBy('created_at','desc')->get()->take(5);
        $news = News::findOrFail($id);
        return view('front.content.single-news',compact('news','context'));
    }

    public function notice(){
        $context = new Collection();
        $context->recent_news = News::where('school_id',1)->where('status',1)->orderBy('created_at','desc')->get()->take(5);
        $context->recent_events = Event::where('school_id',1)->where('status',1)->orderBy('created_at','desc')->get()->take(5);
        $context->notices = Notice::where('school_id',1)->where('status',1)->orderBy('created_at','desc')->get();
        return view('front.content.notice',compact('context'));
    }

    public function singleNotice($id){
        $context = new Collection();
        $context->recent_notices = Notice::where('school_id',1)->where('status',1)->where('id','!=',$id)->orderBy('created_at','desc')->get();
        $notice = Notice::findOrFail($id);
        return view('front.content.single-notice',compact('notice','context'));
    }

    public function events(){
        $context = new Collection();
        $context->recent_notices = Notice::where('school_id',1)->where('status',1)->orderBy('created_at','desc')->get()->take(5);
        $context->recent_news = News::where('school_id',1)->where('status',1)->orderBy('created_at','desc')->get()->take(5);
        $context->events = Event::where('school_id',1)->where('status',1)->orderBy('created_at','desc')->get();
        return view('front.content.events',compact('context'));
    }

    public function singleEvent($id){
        $context = new Collection();
        $context->recent_events = Event::where('school_id',1)->where('status',1)->where('id','!=',$id)->orderBy('created_at','desc')->get()->take(5);
        $event = Event::findOrFail($id);
        return view('front.content.single-event',compact('event','context'));
    }
}