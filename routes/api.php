<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\homeController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::middleware(['auth', 'roleRedirect'])->group(function () {
    

    // Accessible to users with the 'admin' and 'user' roles
    Route::group(['middleware' => 'role:admin,user'], function () {
        Route::get('/home', function () {
            return Redirect::to('http://localhost:3000/home');
        });
    });

    // Accessible only to users with the 'superAdmin' role
    Route::group(['middleware' => 'role:superAdmin'], function () {
        Route::get('/adminDash', function () {
            return Redirect::to('http://localhost:3000/adminDash');
        });
    });

    // Add more routes as needed based on your application's requirements
});
