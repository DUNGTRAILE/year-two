<?php


use App\Models\Post;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\PostController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\AdminPostController;
use App\Http\Controllers\CookieController;
use App\Http\Controllers\FeaturedImagesController;
use App\Http\Controllers\HelperController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\PogController;
use App\Http\Controllers\RogController;
use App\Http\Controllers\SessionController;

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

// Route::get('admin/post/add',[AdminPostController::class,'add']);
// Route::get('admin/post/show',[AdminPostController::class,'show']);
// Route::get('/post/update/{$id}',[AdminPostController::class,'update']);
// Route::get('/post/delete/{id}',[AdminPostController::class,'delete']);

// 

// Route::get('admin/post/show', [AdminPostController::class,'show']);
// Route::get('admin/post/update/{id}',[AdminPostController::class,'update'] );
// Route::get('admin/post/add',[AdminPostController::class,'add'] );


// Route::get('users/insert', function(){
//     DB::table('users')->insert(
//         ['name' => 'phan xuan chinh','email' =>'xuanchinh@gmail.com','password' => bcrypt('dchinhg123tl')]
//     );
// });

// Route::get('post/add',[PostController::class,'add']);
// // Route::get('post/show',[PostController::class,'show']);
// Route::get('post/updata/{id}',[PostController::class,'updata']);
// Route::get('post/delete/{id}',[PostController::class,'delete']);


// Route::get('products/add',[ProductController::class,'add']);
// Route::get('products/show',[ProductController::class,'show']);
// Route::get('products/updata/{id}',[ProductController::class,'update']);
// Route::get('products/delete/{id}',[ProductController::class,'delete']);


// Route::get('/post/read', function(){
//     $posts = Post::all();
//     return $posts;
// });
// Route::get('posts/restore/{id}',[PostController::class,'restore']);
// Route::get('posts/read',[PostController::class,'read']);
// Route::get('posts/delete/{id}',[PostController::class,'delete']);
// Route::get('posts/permanentlyDelete/{id}',[PostController::class,'permanentlyDelete']);
// Route::get('images/read',[FeaturedImagesController::class,'read']);
// Route::get('role/show',[RoleController::class,'show']);

//FROM
Route::get('post/add',[PostController::class,'add']);
Route::post('post/store',[PostController::class,'store']);
Route::get('user/add',[RogController::class,'add']);
Route::post('user/store',[RogController::class,'store']);
Route::get('post/show',[PostController::class,'show'])->name('post.show');
Route::get('helper/url',[HelperController::class,'url']);
Route::get('helper/string',[HelperController::class,'string']);
Route::get('session/add',[SessionController::class,'add']);
Route::get('session/show',[SessionController::class,'show']);
Route::get('session/flash',[SessionController::class,'add_flash']);
Route::get('session/delete',[SessionController::class,'delete']);
Route::get('cookie/set',[CookieController::class,'set']);
Route::get('cookie/get',[CookieController::class,'get']);