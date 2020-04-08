<?php

namespace App\Http\Controllers\admin;

use App\Model\Grade;
use App\Model\Staff;
use App\Model\Student;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Spatie\Activitylog\Models\Activity;

class IndexController extends Controller
{
    public function index(){
        $staff = Staff::all();
        return view('admin.index', compact('staff'));
    }


    public function getStudentJson(){

        $grades = Grade::all();
        foreach ($grades as $grade){
            $grade->totalStudent = $grade->students->count();
            $grade->totalFemale = $grade->students->where('gender', 'Female')->count();
            $grade->totalMale = $grade->students->where('gender', 'Male')->count();

        }

        return $grades;
    }
}
