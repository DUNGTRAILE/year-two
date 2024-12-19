<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class RogController extends Controller
{
    //
    function add(){
        return view("user.reg");
    }
    function store(Request $request){
        $request->validate([
            "password" => "required|confirmed",
            // "password_confirmation"=> "password_confirmed",
            "user"=> "required",
            'email' => 'email',
        ],[

            'password.confirmed' => 'Mật khẩu xác nhận không khớp.', // Thông báo lỗi tùy chỉnh
    
        ]
        
    );
        return $request->input();
    }
}
