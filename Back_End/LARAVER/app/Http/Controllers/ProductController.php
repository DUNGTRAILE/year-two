<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProductController extends Controller
{
    //
    function show($id){
        $price = '300.000 VND';
        $colors = ['red', 'green'];
        return view('product.show', compact('id', 'price','colors'));
    }
    function create(){
        return view('product.create');
    }
    function update($id){
        return "update san pham co id $id";
    }
}
