<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\featuredImages;
use App\Models\User;

class PostController extends Controller
{
    function add()
    {
        // DB::table('posts')->insert([
        //     'title' => 'Post 1',
        //     'user_id' => '1'
        // ]);
        // $post = new Post;
        // $post->title = 'iphone';
        // // $post->content= 'content';
        // $post->user_id = 3;
        // $post->votes = 100;
        // $post->save();
        Post::create([
            'title' => 'Bài viết mới',

            'user_id' => 1,

            'votes' => 10,

        ]);
    }
    function show()
    {
        // $posts = DB::table('posts')->select('title')->get();
        // // foreach($posts as $post){
        // //     echo $post->title;
        // //     echo "<br>";
        // // }
        // return $posts;
        // $posts = DB::table('posts')->where('id',1)->first();
        // echo $posts->title;
        // $posts = DB::table('posts')->find(1);
        // $posts = DB::table('posts')->where('user_id',2)->count();
        // $max = DB::table('posts')->max('user_id');
        // $min = DB::table('posts')->min('user_id');
        // $avg = DB::table('posts')->avg('user_id');
        // echo $avg;

        // $posts = DB::table('posts')
        // ->join('users','users.id' ,'=','posts.user_id')
        // ->select('users.name','posts.*')
        // ->get();
        // $posts = DB::table('posts')->where('title', 'like','%p%')
        // ->get();
        // $posts = DB::table('posts')->where([
        //     ['title','like','%p%'],
        //     ['votes','<>',0]
        // ])->get();
        // return $posts;
        // $postOr = DB::table('post')->where('votes',15)
        // ->orWhere('votes',25)-get();
        // $post = DB::table('posts')->selectRaw("count('id') as munber_post, user_id" )
        // ->groupBy('user_id')
        // ->orderBy('munber_post')
        // ->get();
        // $post = DB::table('posts')
        // ->orderByRaw("votes DESC")
        // ->get();
        // $post = DB::table('posts')->limit(2)->get();
        // return $post;
    }
    function updata($id)
    {
        // DB::table('posts')
        // ->where('id',$id)
        // ->update([
        //     'title' => 'MACBOOK 2021',
        //     'votes' => 20

        // ]);

        // $post = Post::find($id);
        // $post->title = 'iphone 56';
        // // $post->content= 'content';
        // $post->user_id = 3;
        // $post->votes = 900;
        // $post->save();
        Post::where('id', $id)
            ->update([
                'title' => 'Bài viết mới',
                'user_id' => 1,
                'votes' => 10,
            ]);
    }
    function delete($id)
    {
        // return DB::table('posts')
        //     ->where('id', $id)
        //     ->delete();
        $post = Post::find($id)
            ->delete();
        // $post = Post::where('user_id',2)
        // ->delete();

        // Post::destroy($id);
        // $post = Post::find($id);
        // $post->delete();

    }
    function read()
    {
        // $posts = Post::all();
        // $posts = Post::where('title','like','%P%')->get();
        // $post = Post::where('user_id',2)->first();
        // $post = Post::find(1);
        // $posts = Post::find([1,3]);
        // $posts = Post::selectRaw("COUNT('id') as number_posts, user_id")
        // ->groupBy('user_id')
        // ->orderBy('number_posts','desc')
        // ->get();
        // $posts = Post::limit(2)->get();
        // $posts = Post::limit(1)->offset(2)->get();
        // $posts= Post::withTrashed()->get();
        // return $posts;
        // $post = Post::find(1);
        // $featuredImage = $post->featuredImages; // Lấy hình ảnh nổi bật
        // return $featuredImage; // Trả về dữ liệu dưới dạng JSON
        $user = User::find(1)->posts;
        return $user;
        
    }
    function restore($id)
    {
        Post::onlyTrashed()
            ->where('id', $id)
            ->restore();
    }
    function permanentlyDelete($id)
    {
        Post::onlyTrashed()
            ->where('id', $id)
            ->forceDelete();
    }
}
