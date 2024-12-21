<?php

namespace App\Http\Controllers;

use App\Mail\DemoMaill;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
class DemoController extends Controller
{
    //
    function sendmail(){
        $data =[
            "key1"=> "dữ liệu được truyền vào controller",
        ];
        Mail::to('dung123tltl@gmail.com')->send(new DemoMaill($data));
        // return redirect()->route()
    }
}
