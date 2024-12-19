<?php

namespace App\Http\Controllers;

use GuzzleHttp\Psr7\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Cookie;

class CookieController extends Controller
{
    //
    // function set(){
    //     $response = new Response();
    //     return $response->cookie('user','thanDung',24*60);
    // }
    // function get(Request $request){
    //     return $request->cookie('user');
    // }
    public function set()

    {

        // Tạo một đối tượng Response

        
        Cookie::queue('ten', 'thanh', 24*60*60);


        // Thiết lập cookie với tên 'user', giá trị 'thanDung', và thời gian sống là 24 phút

        // return $response->cookie('ten', 'thanDung', 24 * 60);

    }


    public function get()

    {

        // Lấy giá trị của cookie 'user'

        $cookieValue = cookie::get('ten');
        echo $cookieValue;
        // return response()->json(['cookie' => $cookieValue]);

    }

}
