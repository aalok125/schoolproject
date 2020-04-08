<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::group([
    'prefix' => '/admins',
    'as' => 'admin.',
    'namespace'=>'admin',
    'middleware' => ['auth']
], function (){


    Route::get('/dashboard','IndexController@index')->name('dashboard');
    Route::get('/getstudentjson','IndexController@getStudentJson')->name('dashboard.student.json');

    //Grade (CLASS) CRUD
    Route::group([
        'prefix'=>'grades',
        'as' => 'grade.',
    ], function(){
        Route::get('/','GradeController@index')->name('all');
        Route::post('/add','GradeController@add')->name('add');
        Route::post('/edit/{grade_id}','GradeController@edit')->name('edit');
        Route::post('/delete','GradeController@delete')->name('delete');
    });

    //SUBJECT CRUD
    Route::group([
        'prefix'=>'subjects',
        'as' => 'subject.',
    ], function(){
        Route::get('/','SubjectController@index')->name('all');
        Route::post('/add','SubjectController@add')->name('add');
        Route::post('/edit/{staff_type_id}','SubjectController@edit')->name('edit');
        Route::post('/delete','SubjectController@delete')->name('delete');
    });

    //STAFF TYPE CRUD
    Route::group([
        'prefix'=>'staff_types',
        'as' => 'staff_type.',
    ], function(){
        Route::get('/','StaffTypeController@index')->name('all');
        Route::post('/add','StaffTypeController@add')->name('add');
        Route::post('/edit/{staff_type_id}','StaffTypeController@edit')->name('edit');
        Route::post('/delete','StaffTypeController@delete')->name('delete');
    });

    //STAFF CRUD
    Route::group([
        'prefix'=>'staffs',
        'as' => 'staff.',
    ], function(){
        Route::get('/','StaffController@index')->name('all');
        Route::get('/qualifications/{staff_slug}','StaffController@qualifications_edit')->name('qualifications');
        Route::post('/qualifications/{staff_slug}','StaffController@qualifications_update')->name('qualifications_update');
        Route::get('/certificates/{staff_slug}','StaffController@certificates_edit')->name('certificates');
        Route::get('/detail/{staff_slug}','StaffController@details')->name('details');
        Route::get('/add','StaffController@add')->name('add');
        Route::post('/store','StaffController@store')->name('store');
        Route::get('/edit/{staff_slug}','StaffController@edit')->name('edit');
        Route::post('/edit/{staff_slug}','StaffController@update')->name('update');
        Route::post('/delete','StaffController@delete')->name('delete');
        Route::get('/edit/get_documents/{staff_id}','StaffController@preview')->name('get_documents');
        Route::get('/edit/delete_document/{staff_id}','StaffController@delete_doc')->name('delete_document');
        Route::post('/edit/upload_document/{staff_id}','StaffController@upload_doc')->name('upload_document');
    });

    //STAFF-CLASS-SUBJECT ROUTES
    Route::group([
        'prefix'=>'staffsbygrade',
        'as' => 'staffbygrade.',
    ], function(){
        Route::get('/','StaffClassController@index')->name('all');
        Route::post('/add','StaffClassController@add')->name('add');
    });

    //Album ROUTES
    Route::group([
        'prefix'=>'albums',
        'as' => 'album.',
    ], function(){
        Route::get('/','AlbumController@index')->name('all');
        Route::post('/add','AlbumController@add')->name('add');
        Route::post('/edit/{album_id}','AlbumController@edit')->name('edit');
        Route::post('/delete','AlbumController@delete')->name('delete');
        //gallery
        Route::get('/gallery/{album_slug}','GalleryController@gallery')->name('gallery');
        Route::get('/get_images/{album_id}','GalleryController@get_gallery')->name('get_images');
        Route::post('/upload/{gallery_id}','GalleryController@upload')->name('upload_gallery');
        Route::get('/delete_image/{gallery_id}','GalleryController@delete')->name('delete_gallery');

    });

    Route::group([
        'prefix'=>'events',
        'as' => 'event.',
    ], function(){
        Route::get('/','EventController@index')->name('all');
        Route::get('/add','EventController@add')->name('add');
        Route::post('/add','EventController@store')->name('store');
        Route::get('/edit/{event_slug}','EventController@edit')->name('edit');
        Route::post('/edit/{event_slug}','EventController@update')->name('update');
        Route::post('/delete','EventController@delete')->name('delete');
        Route::get('/changestatus/{event_id}','EventController@changestatus')->name('changestatus');
    });


    Route::group([
        'prefix'=>'news',
        'as' => 'news.',
    ], function(){
        Route::get('/','NewsController@index')->name('all');
        Route::get('/add','NewsController@add')->name('add');
        Route::post('/add','NewsController@store')->name('store');
        Route::get('/edit/{news_slug}','NewsController@edit')->name('edit');
        Route::post('/edit/{news_slug}','NewsController@update')->name('update');
        Route::post('/delete','NewsController@delete')->name('delete');
        Route::get('/changestatus/{news_id}','NewsController@changestatus')->name('changestatus');
    });

    Route::group([
        'prefix'=>'notice',
        'as' => 'notice.',
    ], function(){
        Route::get('/','NoticeController@index')->name('all');
        Route::get('/add','NoticeController@add')->name('add');
        Route::post('/add','NoticeController@store')->name('store');
        Route::get('/edit/{notice_slug}','NoticeController@edit')->name('edit');
        Route::post('/edit/{notice_slug}','NoticeController@update')->name('update');
        Route::post('/delete','NoticeController@delete')->name('delete');
        Route::get('/changestatus/{notice_id}','NoticeController@changestatus')->name('changestatus');
    });

    Route::group([
        'prefix'=>'tenders',
        'as' => 'tender.',
    ], function(){
        Route::get('/','TenderController@index')->name('all');
        Route::get('/add','TenderController@add')->name('add');
        Route::post('/add','TenderController@store')->name('store');
        Route::get('/edit/{tender_slug}','TenderController@edit')->name('edit');
        Route::post('/edit/{tender_slug}','TenderController@update')->name('update');
        Route::post('/delete','TenderController@delete')->name('delete');
        Route::get('/changestatus/{tender_id}','TenderController@changestatus')->name('changestatus');
    });

    Route::group([
        'prefix'=>'logs',
        'as' => 'log.',
    ], function(){
        Route::get('/','LogController@index')->name('all');
        Route::get('/getJson/{school_id}','LogController@getJson')->name('Json');
        Route::get('/getJson/details/{log_id}','LogController@details')->name('details');

    });


//    Student Route

    Route::get('students/{id}', 'StudentController@index')->name('students');
    Route::get('studentsbygrade', 'StudentController@studentbyGrade')->name('grade.students');
    Route::get('student/create', 'StudentController@create')->name('student.create');
    Route::post('student/store', 'StudentController@store')->name('student.store');
    Route::post('student/update', 'StudentController@update')->name('student.update');
    Route::get('students/json/{id}', 'StudentController@getJson')->name('students.json');
    Route::get('student/edit/{id}', 'StudentController@edit')->name('student.edit');
    Route::get('student/delete/{id}', 'StudentController@destroy')->name('student.delete');



//    Occupation Route

    Route::get('occupations', 'OccupationController@index')->name('occupations');
    Route::get('occupation/create', 'OccupationController@create')->name('occupation.create');
    Route::post('occupation/store', 'OccupationController@store')->name('occupation.store');
    Route::post('occupation/update', 'OccupationController@update')->name('occupation.update');
    Route::get('occupation/json', 'OccupationController@getJson')->name('occupation.json');
    Route::get('occupation/edit/{id}', 'OccupationController@edit')->name('occupation.edit');
    Route::get('occupation/delete/{id}', 'OccupationController@destroy')->name('occupation.delete');




//    Ethnicity Route

    Route::get('ethnicitys', 'EthnicityController@index')->name('ethnicitys');
    Route::get('ethnicity/create', 'EthnicityController@create')->name('ethnicity.create');
    Route::post('ethnicity/store', 'EthnicityController@store')->name('ethnicity.store');
    Route::post('ethnicity/update', 'EthnicityController@update')->name('ethnicity.update');
    Route::get('ethnicitys/json', 'EthnicityController@getJson')->name('ethnicitys.json');
    Route::get('ethnicity/edit/{id}', 'EthnicityController@edit')->name('ethnicity.edit');
    Route::get('ethnicity/delete/{id}', 'EthnicityController@destroy')->name('ethnicity.delete');


//    Asset Route

    Route::get('assets', 'AssetController@index')->name('assets');
    Route::get('asset/create/{id}', 'AssetController@create')->name('asset.create');
    Route::post('asset/store', 'AssetController@store')->name('asset.store');
    Route::post('asset/update', 'AssetController@update')->name('asset.update');
    Route::get('asset/json', 'AssetController@getJson')->name('asset.json');
    Route::get('asset/edit/{id}', 'AssetController@edit')->name('asset.edit');
    Route::get('asset/delete/{id}', 'AssetController@destroy')->name('asset.delete');
    Route::get('asset/image/{slug}', 'AssetController@addImage')->name('asset.image');
    Route::get('asset/get_image/{id}', 'AssetController@getImages')->name('asset.get_image');
    Route::post('asset/upload/{id}','AssetController@upload')->name('asset.upload');
    Route::get('asset/image_delete/{id}','AssetController@deleteImage')->name('asset.image_delete');


    Route::post('asset/category/store', 'AssetController@categoryStore')->name('asset.category.store');
    Route::get('asset/category/json', 'AssetController@getCategoryJtore')->name('asset.category.json');
    Route::get('asset/category/edit/{id}', 'AssetController@categoryEdit')->name('asset.category.edit');
    Route::get('asset/category/delete/{id}', 'AssetController@categoryDelete')->name('asset.category.delete');
    Route::post('asset/category/update', 'AssetController@categoryUpdate')->name('asset.category.update');




    //    Exam Route

    Route::get('exams', 'ExamController@index')->name('exams');
    Route::get('exam/create', 'ExamController@create')->name('exam.create');
    Route::post('exam/store', 'ExamController@store')->name('exam.store');
    Route::post('exam/update', 'ExamController@update')->name('exam.update');
    Route::get('exam/json', 'ExamController@getJson')->name('exam.json');
    Route::get('exam/edit/{id}', 'ExamController@edit')->name('exam.edit');
    Route::get('exam/delete/{id}', 'ExamController@destroy')->name('exam.delete');
    Route::get('exam/result/{id}/{grade_id}', 'ExamController@examResult')->name('exam.result');
    Route::post('exam/result/update', 'ExamController@examResultUpdate')->name('exam.result.update');
    Route::get('exam/pass/student/{id}/', 'ExamController@examPassStudent')->name('exam.pass.student');
    Route::post('exam/pass/student/update/', 'ExamController@examPassStudentUpdate')->name('exam.pass.student.student');





//    Committees Route

    Route::get('committees', 'CommitteeController@index')->name('committees');
    Route::get('committee/create', 'CommitteeController@create')->name('committee.create');
    Route::post('committee/store', 'CommitteeController@store')->name('committee.store');
    Route::post('committee/update', 'CommitteeController@update')->name('committee.update');
    Route::get('committee/json', 'CommitteeController@getJson')->name('committee.json');
    Route::get('committee/edit/{id}', 'CommitteeController@edit')->name('committee.edit');
    Route::get('committee/delete/{id}', 'CommitteeController@destroy')->name('committee.delete');



//    Committees Route

    Route::get('about', 'AboutController@about')->name('about');
    Route::get('history', 'AboutController@history')->name('history');
    Route::get('welcome-message', 'AboutController@welcomeMessage')->name('welcome.message');
    Route::get('basic-info', 'AboutController@basicInfo')->name('basic.info');
    Route::post('about/update', 'AboutController@update')->name('about.update');
    Route::get('about/student', 'AboutController@aboutStudent')->name('about.student');


//    Slider Route

    Route::get('sliders', 'SliderController@index')->name('sliders');
    Route::get('slider/create', 'SliderController@create')->name('slider.create');
    Route::post('slider/store', 'SliderController@store')->name('slider.store');
    Route::post('slider/update', 'SliderController@update')->name('slider.update');
    Route::get('slider/json', 'SliderController@getJson')->name('slider.json');
    Route::get('slider/edit/{id}', 'SliderController@edit')->name('slider.edit');
    Route::get('slider/delete/{id}', 'SliderController@destroy')->name('slider.delete');



//    User Route

    Route::get('users', 'UserController@index')->name('users');
    Route::get('user/create', 'UserController@create')->name('user.create');
    Route::post('user/store', 'UserController@store')->name('user.store');
    Route::post('user/update', 'UserController@update')->name('user.update');
    Route::get('user/json', 'UserController@getJson')->name('user.json');
    Route::get('user/edit/{id}', 'UserController@edit')->name('user.edit');
    Route::get('user/delete/{id}', 'UserController@destroy')->name('user.delete');

});



Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
