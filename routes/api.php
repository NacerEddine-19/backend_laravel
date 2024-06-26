<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\CommentsController;
use App\Http\Controllers\FriendshipController;
use App\Http\Controllers\GroupController;
use App\Http\Controllers\LanguageController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\ProjectsController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\UserController;
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
Route::prefix('login')->group(function () {
    Route::post('/', [AuthController::class, 'login']);
    Route::put('/pass/{id}', [AuthController::class, 'changePass']);
});


// --- FRIENDSHIPCONTROLLER ROUTES

Route::prefix('friends')->group(function () {
    Route::post('/', [FriendshipController::class, 'getFriendships']);
    Route::post('/{id}', [FriendshipController::class, 'getFriendshipById']);
    Route::post('/addFriendship', [FriendshipController::class, 'addFriendship']);
    Route::post('/removeFriendship', [FriendshipController::class, 'removeFriendship']);
});

// --- POSTSCONTROLLER ROUTES
Route::prefix('posts')->group(function () {
    Route::get('/', [PostController::class, 'GetAllPosts']);
    Route::get('/{id}', [PostController::class, 'GetPost']);
    Route::post('/', [PostController::class, 'AddPost']);
    // Route::put('/{id}', [PostController::class, 'updatePost']);
    Route::delete('/{id}', [PostController::class, 'DeletePost']);
    Route::get('/user/{id}', [PostController::class, 'GetAllPostByUser']);
    Route::get('/group/{group_id}', [PostController::class, 'GetPostsByGroup']);
    Route::post('/{id}/like', [PostController::class, 'LikePost']);
    Route::post('/{id}/unlike', [PostController::class, 'UnlikePost']);
});

// --- COMMENTSCONTROLLER ROUTES
Route::prefix('comments')->group(function () {
    Route::post('/add', [CommentsController::class, 'addComment']);
    Route::delete('/delete/{id}', [CommentsController::class, 'deleteComment']);
    // Route::put('/edit/{id}', [CommentsController::class, 'editComment']);
    Route::get('/all', [CommentsController::class, 'getAllComments']);
});

// --- USERCONTROLLER ROUTES
Route::prefix('users')->group(function () {
    Route::get('/', [UserController::class, 'users']);
    Route::get('/{id}', [UserController::class, 'getUser']);
    Route::patch('/{id}', [UserController::class, 'updateUser']);
    Route::delete('/{id}', [UserController::class, 'deleteUser']);
    Route::patch('/{id}/ban', [UserController::class, 'banUser']);
    Route::patch('/{id}/unban', [UserController::class, 'unbanUser']);
});

// --- REPORTS ROUTES
Route::prefix('reports')->group(function () {
    Route::get('/', [ReportController::class, 'index']);
    Route::post('/add', [ReportController::class, 'store']);
    Route::delete('/{id}', [ReportController::class, 'deleteReport']);
});

// --- PROJECTS ROUTES
Route::prefix('projects')->group(function () {
    Route::get('/', [ProjectsController::class, 'index']);
    Route::get('/{project_id}', [ProjectsController::class, 'show']);
    Route::get('/user/{id}', [ProjectsController::class, 'getProjectsByUser']);
    Route::post('/', [ProjectsController::class, 'store']);
    Route::patch('/{project_id}', [ProjectsController::class, 'update']);
    Route::delete('/{project_id}', [ProjectsController::class, 'destroy']);
});


// --- LANGUAGES ROUTES
Route::prefix('languages')->group(function () {
    Route::get('/', [LanguageController::class, 'index']);
});


// --- Group ROUTES
Route::prefix('groups')->group(function () {
    Route::get('/{id}', [GroupController::class, 'GetGroupById']);
});
