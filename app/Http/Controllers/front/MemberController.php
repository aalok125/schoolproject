<?php

namespace App\Http\Controllers\front;

use App\Model\Staff;
use App\Model\StaffType;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class MemberController extends Controller
{
    public function administration(){
        return view('front.members.administration');
    }

    public function teachers(){
        $staff_type = StaffType::where('slug','teacher')->first();
        $staffs = $staff_type->staffs;
        return view('front.members.teachers', compact('staffs'));
    }
}
