<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\FriendshipController;
use App\Http\Controllers\PostController;
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

// --- USERCONTROLLER ROUTES 
Route::post('login', [AuthController::class, 'login']);


// --- FRIENDSHIPCONTROLLER ROUTES

Route::prefix('friends')->group(function () {
    Route::post('/', [FriendshipController::class, 'getFriendships']);
    Route::post('/{id}', [FriendshipController::class, 'getFriendshipById']);
    Route::post('/addFriendship', [FriendshipController::class, 'addFriendship']);
    Route::post('/removeFriendship', [FriendshipController::class, 'removeFriendship']);
});

// --- POSTSCONTROLLER ROUTES
Route::prefix('posts')->group(function () {
    Route::get('/', [PostController::class, 'GetAllPost']);
    Route::get('/{id}', [PostController::class, 'GetPost']);
    Route::post('/', [PostController::class, 'AddPost']);
    // Route::put('/{id}', [PostController::class, 'updatePost']);
    Route::delete('/{id}', [PostController::class, 'DeletePost']);
    Route::get('/user/{id}', [PostController::class, 'GetAllPostByUser']);
});
