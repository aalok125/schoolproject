<?php

namespace App\Http\Controllers\admin;

use App\Model\Language;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;

class LanguageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.language.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

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
            'english_name'=>'required',
//            'nepali_name'=>'required',
        ]);

        $language = new Language();
        $language->english_name = $request->english_name;
        $language->nepali_name = "#";
        $language->type = "Backend";



        $response = $language->save();
        if($response){

            return response()->json([
                'status' => 'success',
                'message' => 'Language Successfully Added.'
            ], 201);
        }else{
            return response()->json([
                'status' => 'error',
                'message' => '...........Error.........'
            ], 201);
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
        $language = Language::find($id);
        return view('admin.language.edit', compact('language'));
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
            'english_name'=>'required',
            'nepali_name'=>'required',
        ]);

        $language = Language::where('id', $request->language_id)->first();
        $language->english_name = $request->english_name;
        $language->nepali_name = $request->nepali_name;



        $response = $language->update();

        if($response){

            return redirect()->back()->with('success', 'Language Successfully Updated.');
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
        $ethnicity =Language::find($id);

        $response = $ethnicity->delete();

        if($response){

            return redirect()->back()->with('success', 'Ethnicity Successfully Deleted.');
        }
        else{
            return redirect()->back()->with('error', '...........Error.........');
        }
    }


    public function getJson(){
        $languages = Language::all();
        $count = 1;
        foreach ($languages as $language){
            $language->count = $count;
            $count++;
        }
        return datatables($languages)->toJson();
    }
}
