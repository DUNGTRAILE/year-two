<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Post extends Model
{
    use SoftDeletes;
    use HasFactory;
    protected $fillable =['title','user_id','votes','thumbnail'];
    function FeaturedImages(){
        return $this->hasOne(featuredImages::class);
    }
    function User(){
        return $this->belongsTo(User::class);
    }
}
