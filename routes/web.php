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

Route::get('/', 'Auth\loginController@index')->name('index_login');
Route::get('/login', 'Auth\loginController@index')->name('index_login');
Route::get('/login_proces', 'Auth\loginController@login')->name('login');
Route::post('/logout_proces', 'Auth\loginController@logout')->name('logout_prc');
//regist
Route::get('/regist_proces', 'RegisterController@regist')->name('regist');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
