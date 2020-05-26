<?php



function getAbout($key){

    $value = \App\Model\About::where( 'key', '=', $key )->first();
    if ( $value != null ) {
        return $value->value;
    }

    return null;

}


function getLanguage($key){
    $language = \App\Model\Language::where('name', $key)->first();
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


?>