<?php

use App\Http\Controllers\Api\UsersDataController;
use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
//пункт 6
Route::get('users', [UsersDataController::class, 'getAll']) ;

//пункт 7
Route::get('comments', [UsersDataController::class, 'getComments']) ;

