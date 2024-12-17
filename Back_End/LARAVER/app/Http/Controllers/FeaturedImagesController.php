<?php

namespace App\Http\Controllers;
// use App\Http\Controllers\Controller;

use App\Models\featuredImages;
use Illuminate\Http\Request;

class FeaturedImagesController extends Controller
{
    //
    function read(){
        $image = featuredImages::find(1);
        $post = $image->post;
        return $post;
    }
}
