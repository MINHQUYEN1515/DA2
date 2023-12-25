<?php

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\Auth\AuthController;
use App\Http\Controllers\Admin\image\ImageController;
use App\Http\Controllers\Data\Category\CategoryController;
use App\Http\Controllers\Data\Product\ProductController;
use App\Models\Category;
use PHPUnit\Framework\Attributes\Group;

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


Route::prefix("/Auth")->controller(AuthController::class)->group(function () {
    Route::post("signup", 'Signup');
    Route::post("login", "Login");
    Route::post('logout', 'logout');
    Route::get('profile', 'getProfile');
    Route::post("changepassword", 'changePassword');
});
Route::prefix("/image")->controller(ImageController::class)->group(function () {
    Route::post('uploadprofile', 'uploadImageProfile');
});

Route::prefix('/category')->controller(CategoryController::class)->group(function () {
    Route::get('getAll', 'getAll');
    Route::get('/getProduct', 'getCategory');
});
Route::prefix('/product')->controller(ProductController::class)->group(function () {
    Route::get('getProduct', 'getAllProduct');
});
