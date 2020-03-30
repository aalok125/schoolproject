<?php



function getAbout($key){

    $value = \App\Model\About::where( 'key', '=', $key )->first();
    if ( $value != null ) {
        return $value->value;
    }

    return null;

}

?>