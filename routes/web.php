<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return redirect('login');
});

// Auth::routes();
Auth::routes([
    'login' => true,
    'register' => false, // Registration Routes...
    'reset' => true, // Password Reset Routes...
    'verify' => true, // Email Verification Routes...
]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::group(['middleware' => 'auth'], function () {

    Route::get('/users/lists', [App\Http\Controllers\UserController::class, 'usersList'])->name('usersList');

    Route::get('/delete/user/{id}', [App\Http\Controllers\UserController::class, 'deleteUsers']);
    Route::get('/get/user/info/{id}', [App\Http\Controllers\UserController::class, 'getUserInfo']);
    Route::post('/user/info/update', [App\Http\Controllers\UserController::class, 'userInfoUpdate']);
    Route::get('/users/lists/{filter_value}', [App\Http\Controllers\UserController::class, 'usersFiltredList']);

});
