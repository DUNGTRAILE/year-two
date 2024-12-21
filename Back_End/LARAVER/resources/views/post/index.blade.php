<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>hiện thị danh sách bài viết</h1>
    @if(session('status'))
        <div class="alert alert-success">
            {{session('status')}}
        </div>
    @endif
    <ul>
    @foreach ($posts as $post )
    <li>
        <a href="">{{$post->title}}</a> <br>
        <!-- <img src="{{url("$post->thumbnail")}}" alt=""> -->
        <p>{!!$post->content!!}</p>
        <p>{{$post->votes}}</p>
    </li>
    @endforeach
    </ul>
    {{$posts->appends(['sort'=>'votes'])->links()}}
    
</body>
</html>