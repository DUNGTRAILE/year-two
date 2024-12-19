<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
// use Illuminate\Support\Facades\session; 

class SessionController extends Controller
{
    //
    function add(Request $request){
        // $request->session()->put('username','thandung');
        // $request->session()->put('login','True');
        session(["username"=>'thanVanDung','password'=> '123445566']);
    }

    function show(Request $request){
        // return $request -> session()->all();
        // if($request->session()->has('usermame')){
        //     echo 'ton tai';
        // }
        // else{
        //     echo 'khong ton tai';
        // }
        // return $request->session()->all();
        // return $request->session()->get('usermame');
        return session()->all();
    }
    function add_flash(Request $request){
        $request->session()->flash('status','Ban da them thanh cong');
    }
    function delete(Request $request){
        // $request->session()->forget('usermame');
        $request->session()->flush();
    }
}
