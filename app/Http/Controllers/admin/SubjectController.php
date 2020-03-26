<?php

namespace App\Http\Controllers\admin;

use App\Model\Grade;
use App\Model\Subject;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SubjectController extends Controller
{
    public function index(){
        $contents = Subject::all();
        $grades = Grade::all();
        return view('admin.subject.index',compact('contents','grades'));
    }
    public function add(Request $request){
        // dd($request);
        $subject = new Subject();
        $subject->school_id = 1;
        $subject->grade_id = $request->grade_id;
        $subject->title = $request->title;
        $subject->remarks = $request->remarks;

        if($subject->save()){
            return redirect()->back()->with('success','New Staff Type Added Successfully');
        }
        else{
            return redirect()->back()->with('error','New Staff Type Add Failed');
        }

    }

    public function edit(Request $request, $subject_id){
        $subject = Subject::findOrFail($subject_id);
        $subject->grade_id = $request->grade_id;
        $subject->title = $request->title;
        $subject->remarks = $request->remarks;

        if($subject->save()){
            return redirect()->back()->with('success','Staff Type Edited Successfully');
        }
        else{
            return redirect()->back()->with('error','Staff Type Edit Failed');
        }
    }

    public function delete(Request $request){
        if($subject = Subject::findOrFail($request->subject_id)){
            $subject->delete();
            return redirect()->back()->with('success','Staff Type Deleted Successfully');
        }
        else{
            return redirect()->back()->with('error','Staff Type Delete Failed, Please Reload The Page');
        }
    }
}
