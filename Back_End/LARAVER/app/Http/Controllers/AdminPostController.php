<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminPostController extends Controller
{
    //
    function add(){
        return view('admin.post.add');
    }
    function show(){
        return view('admin.post.show');
    }
    function update($id){
        return view('admin.post.update',['id' => $id]);
    }
    function delete($id){
        return "xóa bài viết $id";
    }
}
