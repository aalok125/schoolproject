<?php

namespace App\Http\Controllers\admin;

use App\Model\Ethnicity;
use App\Model\Occupation;
use App\Model\Student;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File;
use Image;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.student.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $ethnicitys = Ethnicity::all();
        $occupations = Occupation::all();
        return view('admin.student.add', compact('ethnicitys', 'occupations'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {


        $this->validate($request,[
            'name'=>'required',
            'grade_id'=>'required',
            'guardian_name'=>'required',
        ]);

        $student = new Student();
        $student->name = $request->name;
        $student->grade_id = $request->grade_id;
        $student->ethnicity_id = $request->ethnicity_id;
        $student->address = $request->address;
        $student->gender = $request->gender;
        $student->DOB = $request->DOB;
        $student->guardian_name = $request->guardian_name;
        $student->guardian_phone = $request->guardian_phone;
        $student->guardian_email = $request->email;
        $student->occupation_id = $request->occupation_id;
        $student->school_id = 1;

        if($request->file('image')){
            $image = $request->file('image');
            imageUpload($image, 'images/students/thumbnail/', 'images/students/');
            $student->image = time().$image->getClientOriginalName();
        }

        $response = $student->save();

        if($response){

            return redirect()->back()->with('success', 'Student Successfully Added.');
        }
        else{
            return redirect()->back()->with('error', '...........Error.........');
        }


    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $student = Student::find($id);
        return view('admin.student.edit', compact('student'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $this->validate($request,[
            'name'=>'required',
            'grade_id'=>'required',
            'guardian_name'=>'required',
        ]);

        $student = Student::where('id', $request->student_id)->first();
        $student->name = $request->name;
        $student->grade_id = $request->grade_id;
        $student->ethnicity_id = $request->ethnicity_id;
        $student->address = $request->address;
        $student->gender = $request->gender;
        $student->DOB = $request->DOB;
        $student->guardian_name = $request->guardian_name;
        $student->guardian_phone = $request->guardian_phone;
        $student->guardian_email = $request->email;
        $student->occupation_id = $request->occupation_id;
        $student->school_id = 1;

        if($request->file('image')){
            if($student->image){
                File::delete(public_path('images/students/thumbnail/'.$student->image));
                File::delete(public_path('images/students/'.$student->image));
            }
            $image = $request->file('image');
            imageUpload($image, 'images/students/thumbnail/', 'images/students/');
            $student->image = time().$image->getClientOriginalName();
        }

        $response = $student->update();

        if($response){

            return redirect()->back()->with('success', 'Student Successfully Updated.');
        }
        else{
            return redirect()->back()->with('error', '...........Error.........');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $student =Student::find($id);
        if($student->image){
            File::delete(public_path('images/students/thumbnail/'.$student->image));
            File::delete(public_path('images/students/'.$student->image));
        }

        $response = $student->delete();

        if($response){

            return redirect()->back()->with('success', 'Student Successfully Deleted.');
        }
        else{
            return redirect()->back()->with('error', '...........Error.........');
        }
    }


    public function getJson(){
        $students = Student::all();
        $count = 1;
        $todayDate = Carbon::parse(date('Y-m-d'));
        foreach ($students as $student){
            $student->count = $count;
            $birthdate = Carbon::parse($student->DOB);
            $student->age =$birthdate->diffInYears($todayDate, false);
            $student->image = asset('images/students/thumbnail/'.$student->image);
            $count++;
        }
        return datatables($students)->toJson();
    }
}
