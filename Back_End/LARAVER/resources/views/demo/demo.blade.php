<!-- @foreach($users as $user)
    <p>{{$user['name']}}</p>
@endforeach -->


@include('inc.comment',['title' => 'commment bai viet'])

@php
    foreach($users as $user){
        echo $user['name'],'<br>';
    }
@endphp