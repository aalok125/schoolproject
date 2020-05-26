<?php

namespace App\Http\Controllers\front;

use App\Model\Notice;
use App\Model\Staff;
use App\Model\StaffType;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class MemberController extends Controller
{
    public function administration(){
        return view('front.members.administration');
    }

    public function teachers(){
        $school_id = 1;
        $context = new Collection();
        $staff_type = StaffType::where('title','Teacher')->first();
        $context->staffs = Staff::where('staff_type_id',$staff_type->id)->where('school_id',$school_id)->get();
        $context->recent_notices = Notice::where('school_id',$school_id)->where('status',1)->orderBy('created_at','desc')->get()->take(5);
        return view('front.members.teachers', compact('context'));
    }

    public function teacherDetail($id){
        $teacher = Staff::findOrFail($id);
        return view('front.members.teacher-detail',compact('teacher'));
    }
}
