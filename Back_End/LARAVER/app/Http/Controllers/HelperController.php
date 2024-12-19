<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;

class HelperController extends Controller
{
    //
    function url(){
        // 1 tạo ra url cơ bản 
        // $url = url('login');
        // 2. tạo url qua route
        // $url = route('post.show');
        // $url = action([PostController::class,'store']);
        // lấy current hiện tại
        $url = url()->current();
        echo $url;
        // unitop.vn=>unitop.vn/login 
    }
    function string(){
        //1 lấy độ dài chuỗi
        // $str_1 = 'thanvandung';
        // echo str::length($str_1);
        // echo str::upper($str_1);
        // random string 
        // echo str::random(10);
        // loại bỏ ký tự dư thừa 
        // $str = str::of('______than______van____dung______')->trim('_');
        // echo $str;
        // unitop.vn học web đi làm => unitop.vn-hoc-web-đi-lam 
        // 5 tạo slug (làm kink thân thiện)
        // $str = str::slug('unitop.vn học web đi làm');
        // echo $str;
        // lấy chuỗi con
        // $str = 'thân văn dũng';
        // echo str::of($str)->substr(5);
        // echo str::of($str)->substr(0,4);
        // nối chuỗi vào đuôi 
        // echo str::of('thân văn ')->append('dũng');
        //thay thế chuỗi
        // $str = 'than van thanh';
        // echo str::of($str)->replace('thanh','dung');
        // cắt chuỗi với số ký tự cho trước 
        $srt = 'Sử dụng Str::of() và các phương thức của lớp Stringable trong Laravel giúp bạn thao tác với chuỗi một cách dễ dàng và hiệu quả. Nếu bạn có thêm câu hỏi hoặc cần hỗ trợ thêm, hãy cho tôi biết!';
        // echo str::of($srt)->limit(60);
        echo str::contains($srt, 'cács') ?'CÓ':'KHÔNG';

    }
}
