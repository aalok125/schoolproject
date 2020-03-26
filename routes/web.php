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
    'namespace'=>'admin'
], function (){

    Route::get('/dashboard','IndexController@index')->name('dashboard');

    //Grade (CLASS) CRUD
    Route::group([
        'prefix'=>'grade',
        'as' => 'grade.',
    ], function(){
        Route::get('/','GradeController@index')->name('all');
        Route::post('/add','GradeController@add')->name('add');
        Route::post('/edit/{grade_id}','GradeController@edit')->name('edit');
        Route::post('/delete','GradeController@delete')->name('delete');
    });

    //SUBJECT CRUD
    Route::group([
        'prefix'=>'subject',
        'as' => 'subject.',
    ], function(){
        Route::get('/','SubjectController@index')->name('all');
        Route::post('/add','SubjectController@add')->name('add');
        Route::post('/edit/{staff_type_id}','SubjectController@edit')->name('edit');
        Route::post('/delete','SubjectController@delete')->name('delete');
    });

    //STAFF TYPE CRUD
    Route::group([
        'prefix'=>'staff_type',
        'as' => 'staff_type.',
    ], function(){
        Route::get('/','StaffTypeController@index')->name('all');
        Route::post('/add','StaffTypeController@add')->name('add');
        Route::post('/edit/{staff_type_id}','StaffTypeController@edit')->name('edit');
        Route::post('/delete','StaffTypeController@delete')->name('delete');
    });

    //STAFF CRUD
    Route::group([
        'prefix'=>'staff',
        'as' => 'staff.',
    ], function(){
        Route::get('/','StaffController@index')->name('all');
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
        'prefix'=>'staffbygrade',
        'as' => 'staffbygrade.',
    ], function(){
        Route::get('/','StaffClassController@index')->name('all');
        Route::post('/add','StaffClassController@add')->name('add');
    });
//    Student Route

    Route::get('students', 'StudentController@index')->name('students');
    Route::get('student/create', 'StudentController@create')->name('student.create');
    Route::get('student/store', 'StudentController@store')->name('student.store');

});
