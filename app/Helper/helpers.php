<?php


use App\Model\AssetCategory;
use App\Model\StaffType;
use Illuminate\Support\Facades\Schema;

function getAbout($key){

    $value = \App\Model\About::where( 'key', '=', $key )->first();
    if ( $value != null ) {
        return $value->value;
    }

    return null;

}


function getLanguage($key){
    $language = \App\Model\Language::where('name', $key)->where('type','Backend')->first();
    $langSession = \Illuminate\Support\Facades\Session::get('lang_session');

    if($language){
        if($langSession == "nep"){
           if($language->nepali_name == null || $language->nepali_name == "#"){
               return $language->english_name;
           }
            return $language->nepali_name;
        }
        return $language->english_name;
    }

    return null;
}

function get_asset_categories($school_id){
    if(Schema::hasTable('asset_categories')) {
        $asset_categories = AssetCategory::where('school_id', $school_id)->get();
    }
    else{
        $asset_categories = [];
    }
    return $asset_categories;
}

function get_staff_types($school_id){
    if(Schema::hasTable('staff_types')) {
        $asset_categories = StaffType::where('school_id', $school_id)->get();
    }
    else{
        $asset_categories = [];
    }
    return $asset_categories;
}


function schoolStudentsCount($school_id){
    $grades = \App\Model\Grade::where('school_id',$school_id)->get();
    $students = 0;
    foreach ($grades as $grade){
        $students += isset($grade->students)? $grade->students->count() : 0;
    }
    return $students;
}

function schoolAdministrationCount($school_id){
    $staffTypes = \App\Model\StaffType::where('school_id',$school_id)->where('title','!=','Teacher')->get();
    $admins = 0;
    foreach ($staffTypes as $type){
        $admins += isset($type->staffs) ? $type->staffs->count() : 0;
    }
    return $admins;
}
function schoolTeacherCount($school_id)
{
    $staffType = \App\Model\StaffType::where('school_id', $school_id)->where('title', 'Teacher')->first();
    return isset($staffType->staffs) ? $staffType->staffs->count() : 0;
}

function getNepaliDate($date){
    if(isset($date)){
        return $date->format('Y-m-d');
    }else{
        return \Carbon\Carbon::now()->format('Y-m-d');
    }
}


function getFrontLanguage($key){
    $language = \App\Model\Language::where('name', $key)->where('type','Frontend')->first();
    $langSession = \Illuminate\Support\Facades\Session::get('front_lang_session');

    if($language){
        if($langSession == "nep"){
            if($language->nepali_name == null || $language->nepali_name == "#"){
                return $language->english_name;
            }
            return $language->nepali_name;
        }
        return $language->english_name;
    }

    return null;
}


?>