<?php

namespace App\Http\Controllers\admin;

use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.user.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.user.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

//dd($request);
        $this->validate($request,[
            'name'=>'required',
            'role'=>'required',
            'email'=>'required',
        ]);

        $user = new User();
        $user->name = $request->name;
        $user->role = $request->role;
        $user->email = $request->email;
        $user->phone = $request->phone;
        $user->password = Hash::make($request->password);
        $user->school_id = 1;

        if($request->file('image')){
            $image = $request->file('image');
            $db_path = imageUpload($image,  'images/users/');
            $user->image = $db_path;
        }

        if($request->password != $request->password_confrimation){

            return redirect()->back()->with('error', 'Password Doesnot Match');
        }

        $response = $user->save();

        if($response){

            return redirect()->back()->with('success', 'User Successfully Added.');
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
        $user = User::find($id);
        return view('admin.user.edit', compact('user'));
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
            'role'=>'required',
            'email'=>'required',
        ]);

        $user = User::where('id', $request->user_id)->first();
        $user->name = $request->name;
        $user->role = $request->role;
        $user->email = $request->email;
        $user->phone = $request->phone;

        $user->school_id = 1;

        if($request->password){
            if($request->password != $request->password_confrimation){

                return redirect()->back()->with('error', 'Password Doesnot Match');
            }
            $user->password = Hash::make($request->password);
        }

        if($request->file('image')){
            if($user->image){
                $file_path = public_path().'/'.$user->image;
                $thumbnail_path = public_path().'/thumbnail/'.$user->image;
                if(file_exists($file_path)){
                    unlink($file_path);
                }
                if(file_exists($thumbnail_path)){
                    unlink($thumbnail_path);
                }
            }
            $image = $request->file('image');
            $db_filename = imageUpload($image,'images/students/');
            $user->image = $db_filename;
        }

        $response = $user->update();

        if($response){

            return redirect()->back()->with('success', 'User Successfully Updated.');
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
        $user =User::find($id);
        if($user->image){
            $file_path = public_path().'/'.$user->image;
            $thumbnail_path = public_path().'/thumbnail/'.$user->image;
            if(file_exists($file_path)){
                unlink($file_path);
            }
            if(file_exists($thumbnail_path)){
                unlink($thumbnail_path);
            }
        }

        $response = $user->delete();

        if($response){

            return redirect()->back()->with('success', 'User Successfully Deleted.');
        }
        else{
            return redirect()->back()->with('error', '...........Error.........');
        }
    }


    public function getJson(){
        $users = User::all();
        $count = 1;
        foreach ($users as $user){
            $user->count = $count;
            $user->image = asset('thumbnail/'.$user->image);
            $count++;
        }
        return datatables($users)->toJson();
    }
}
