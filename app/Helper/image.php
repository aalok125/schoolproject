<?php




    function imageUpload($file, $thumbnailPath, $orginalPath ){

        $ImageUpload = \Image::make($file);
        $originalPath = public_path( $orginalPath);
        if(!\File::isDirectory($originalPath)){

            \File::makeDirectory($originalPath, 0777, true, true);

        }
        $ImageUpload->save($originalPath.time().$file->getClientOriginalName());

        // for save thumnail image
        $thumbnailPath = public_path($thumbnailPath);
        if(!\File::isDirectory($thumbnailPath)){

            \File::makeDirectory($thumbnailPath, 0777, true, true);

        }
        $ImageUpload->resize(250,250);
        $ImageUpload = $ImageUpload->save($thumbnailPath.time().$file->getClientOriginalName());
    }










?>