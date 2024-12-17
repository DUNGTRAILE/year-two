@extends('layouts.app')


@section('title',"tieu de trang")

@section('content')
    <p>Noi Dung</p>
    <!-- <p>Ho va ten: {!!$data!!}</p> -->
     @isset($post_title)
        <p>Tiêu đề: {{$post_title}}</p>
     @endisset

     @empty($user)
        <p>Khong co nguoi dung nao</p>
     @endempty
     @if($data % 2 == 0)
        <p>{{$data}} la So Chan</p>
    @else
        <p>So le</p>
    @endif

@show


@section('sidebar')
    @parent
    <p>sidebar</p>
@show

