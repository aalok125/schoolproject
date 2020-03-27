<?php




    function imageUpload($file, $orginalPath ){
        $time = time();
        $db_path = $orginalPath.$time.$file->getClientOriginalName();
        $ImageUpload = \Image::make($file);
        $thumbnailPath = public_path('/thumbnail/'.$orginalPath);
        $originalPath = public_path( $orginalPath);
        if(!\File::isDirectory($originalPath)){

            \File::makeDirectory($originalPath, 0777, true, true);

        }
        $ImageUpload->save($originalPath.$time.$file->getClientOriginalName());

        // for save thumnail image
        if(!\File::isDirectory($thumbnailPath)){

            \File::makeDirectory($thumbnailPath, 0777, true, true);

        }
        $ImageUpload->resize(250,250);
        $ImageUpload = $ImageUpload->save($thumbnailPath.$time.$file->getClientOriginalName());
        return $db_path;
    }










?>