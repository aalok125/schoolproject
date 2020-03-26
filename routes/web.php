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

//    Student Route

    Route::get('students', 'StudentController@index')->name('students');
    Route::get('student/create', 'StudentController@create')->name('student.create');
    Route::post('student/store', 'StudentController@store')->name('student.store');
    Route::get('students/json', 'StudentController@getJson')->name('students.json');

});
