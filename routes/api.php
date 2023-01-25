<?php
// use App\Models\Post;
use App\Models\books;
use App\Models\userdata;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UsersdataController;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/



Route::get('/users', [UsersdataController::class, 'index']);

Route::post('/users', [UsersdataController:: class, 'createuser']);

Route::put('/users/{user}',[UsersdataController:: class, 'edituser']);

Route::delete('/users/{user}', [UsersdataController:: class, 'destroyUser']);
    
Route::get('/books', [UsersdataController::class, 'getBooks']);
Route::get('/books/{book}', [UsersdataController::class, 'getBookById']);

  
Route::post('/books', [UsersdataController::class, 'postBooks']);

Route::put('/books/{book}', [UsersdataController:: class, 'editBooks']);

Route::delete('/books/{book}', [UsersdataController:: class, 'deleteBook']);
Route::get('/users/{user}', [UsersdataController:: class, 'getUserById']);

Route::group([
    'prefix' => 'auth'
], function (){
    Route::post('login', [AuthController::class, 'login']);
    Route::post('register', [AuthController::class, 'register']);
});
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
// Route::middleware('auth:api')->get('/user', function(Request $request){
//     return $request->userdata();
// });