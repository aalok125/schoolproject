<?php

namespace App\Http\Controllers\admin;

use App\Model\About;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AboutController extends Controller
{


    public function about(){

        return view('admin.about.about');
    }


    public function history(){

        return view('admin.about.history');
    }


    public function welcomeMessage(){

        return view('admin.about.welcome-message');
    }


    public function basicInfo(){

        return view('admin.about.basic-info');
    }


    public function update(Request $request){
//        dd($request);
        $inputs = $request->only(
            'name',
            'site_description',
            'description',
            'address',
            'phone',
            'email',
            'vdc_name',
            'logo',
            'favicon',
            'vdc_logo',
            'facebook_link',
            'twitter_link',
            'youtube_link',
            'history',
            'welcome_message',
            'about'
        );

        foreach ($inputs as $inputKey => $inputValue) {
            if ($inputKey == 'logo' || $inputKey == 'favicon' || $inputKey == 'vdc_logo') {
                $file = $inputValue;
                // Delete old file
                $this->deleteImage($inputKey);
                // Upload file & get store file name
                $fileName = imageUpload($file,'images/about/');;
                $inputValue = $fileName;
            }
            About::updateOrCreate(['key' => $inputKey], ['value' => $inputValue, 'school_id' => 1]);
        }

        return redirect()->back()->with('success', 'Successfully updated!!');

    }


    public function deleteImage($inputKey){

        $about = About::where('key', '=', $inputKey)->first();

        if(isset($about->value)){
        $file_path = public_path().'/'.$about->value;
        $thumbnail_path = public_path().'/thumbnail/'.$about->value;
            if(file_exists($file_path)){
            unlink($file_path);
            }
                if(file_exists($thumbnail_path)){
                    unlink($thumbnail_path);
                }
            }
        }

}
