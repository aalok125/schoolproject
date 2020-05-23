<?php

namespace App\Http\Controllers\front;

use App\Model\Tender;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TenderController extends Controller
{
    public function tender(){
        return view('front.content.tender');
    }
    public function singleTender($id){
        $tender = Tender::findOrFail($id);
        return view('front.content.single-tender',compact('tender'));
    }
}
