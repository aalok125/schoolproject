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

    public function staffs($slug){
//        dd($slug);
        $school_id = 1;
        $context = new Collection();
        $staff_type = StaffType::where('slug',$slug)->first();
        $context->staffType = $staff_type;
        $context->staffs = Staff::where('staff_type_id',$staff_type->id)->where('school_id',$school_id)->get();
        $context->recent_notices = Notice::where('school_id',$school_id)->where('status',1)->orderBy('created_at','desc')->get()->take(5);
        return view('front.members.staffs', compact('context'));
    }

    public function staffDetail($staff_id,$stafftypeSlug){
        $staffType = StaffType::where('slug',$stafftypeSlug)->first();
        $staff = Staff::where('id',$staff_id)->where('staff_type_id',$staffType->id)->first();
        return view('front.members.staff-detail',compact('staff','staffType'));
    }
}
