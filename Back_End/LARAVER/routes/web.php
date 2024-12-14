<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\AdminPostController;
// use App\Http\Controllers\PostController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
// định tuyến cơ bản

// domain.com/post

// Route::get('/post', function () {
//     return "day la trang baif viet";
// });





// Route::get('/admin/product/add',function(){
//     return 'trang them san pham';
// });


// Route::get('post/{id?}' , function($id = 0){
//     return $id;
// }) -> where('id','[a-z]+');

// Route::get('posts/{cat_id}/page/{page}',function($cat_id,$page){
//     return "danh mục $cat_id trang $page";
    
// });
// Route::get('/admin/product',function(){
//     return route('product');
// }) -> name('product');


// Route::get('posts/{cat_id}/page/{page}',function($cat_id,$page){
//     return "danh mục $cat_id trang $page";
    
// }) -> where('page','[a-bA-Z0-9_]+');


// Route::view('/welcom', 'welcome');

// Route::view('/post','post', ['id' => 20]);
// Route::get('/post/{id}', [PostController::class, 'detail']);


// Route::get('/admin/post/add', function(){
//     return 'trang them bai viet';
// });
// Route::get('/admin/post/remove/{id}', function($id){
//     return "xoa bai viet co id $id ";
// });
// Route::get('/admin/post/ds', function(){
//     return 'trang danh sach bai viet';
// });


// Route::get('/product/show/{id}',[ProductController::class,'show']);
// Route::get('/product/creat',[ProductController::class,'create']);
// Route::get('/product/update/{id}',[ProductController::class,'update']);


// Route::resource('post',PostController::class);

Route::get('/post/add',[AdminPostController::class,'add']);
Route::get('/post/show',[AdminPostController::class,'show']);
Route::get('/post/update/{$id}',[AdminPostController::class,'update']);
Route::get('/post/delete/{id}',[AdminPostController::class,'delete']);




