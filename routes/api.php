<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\FriendshipController;
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
    Route::post('/', [FriendshipController::class, 'getFriends']);
    Route::post('/{id}', [FriendshipController::class, 'getFriendById']);
    Route::post('/addFriendship', [FriendshipController::class, 'addFriendship']);
    Route::post('/removeFriendship', [FriendshipController::class, 'removeFriendship']);
});
