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

?>