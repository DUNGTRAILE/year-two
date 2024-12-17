<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    //
    function show($id){
       $produc = DB::table('product')
       ->where('id',$id)
       ->get();
       return $produc;
    }
    function add(){
        return DB::table('products')->insert([
            'name'=>'Văn Thanh',
            'content'=>'Ihone 11 pro',
            'price' => 1000,
            'user_id' => 3
        ]);
    }
    function update($id){
        return DB::table('products')
        ->where('id',$id)
        ->update([
            'name'=>'dấy tên',
            'content'=>'Ihone 17 pro',
            'price' => 20009,
            'user_id' => 1
        ]);
    }
    function dalete($id){
        return DB::table('products')
        ->whereRaw("id = $id")
        ->delete();
    }
}
