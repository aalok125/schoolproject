<?php

namespace App\Http\Controllers\admin;

use App\Model\Grade;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class GradeController extends Controller
{
    public function index(){
        $contents = Grade::all();
        return view('admin.grade.index',compact('contents'));
    }
    public function add(Request $request){
        // dd($request);
        $grade = new Grade();
        $grade->school_id = 1;
        $grade->title = $request->title;
        $grade->remarks = $request->remarks;

        if($grade->save()){
            return redirect()->back()->with('success','New Grade Added Successfully');
        }
        else{
            return redirect()->back()->with('error','New Grade Add Failed');
        }

    }

    public function edit(Request $request, $grade_id){
        $grade = Grade::findOrFail($grade_id);
        $grade->title = $request->title;
        $grade->remarks = $request->remarks;

        if($grade->save()){
            return redirect()->back()->with('success','Grade Edited Successfully');
        }
        else{
            return redirect()->back()->with('error','Grade Edit Failed');
        }
    }

    public function delete(Request $request){
        if($grade = Grade::findOrFail($request->grade_id)){
            $grade->delete();
            return redirect()->back()->with('success','Grade Deleted Successfully');
        }
        else{
            return redirect()->back()->with('error','Grade Delete Failed, Please Reload The Page');
        }
    }
}
