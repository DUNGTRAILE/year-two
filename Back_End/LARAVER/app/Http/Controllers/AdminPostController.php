<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminPostController extends Controller
{
    //
    function add(){
        return 'Thêm bài Viết';
    }
    function show(){
        return 'Hiện thị tất cả bài viết';
    }
    function update($id){
        return "cập nhật bài viết $id";
    }
    function delete($id){
        return "xóa bài viết $id";
    }
}
