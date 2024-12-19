<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <div class="container">
        <h1>TẠO TÀI KHOẢN</h1>
        <!-- {{ html()->form('PUT', '/post')->open() }}

        {{ html()->email('email')->placeholder('Your e-mail address') }}

        {{ html()->form()->close() }} -->
        <!-- {{ html()->form('GET','store')->open()}} -->
        <form action="store" method="POST" enctype="multipart/form-data">
            @csrf
        <div class="form-group">
            {{html()->label('Tên đăng nhập','username')}}
            {{html()->text()->name('user')->id('username')->value( old('user'))->class('form-control')}}
            @error('user')
            <small class="form-text text-danger">{{$message}}</small>
            @enderror
        </div>
        <div class="form-group">
            {{html()->label('Mật khẩu','password')}}
            {{html()->password()->value(old('password'))->name('password')->id('password')->class('form-control')}}
            <!-- @error('password')
            <small class="form-text text-danger">{{$message}}</small>
            @enderror -->
        </div>
        <div class="form-group">
            {{html()->label('Xác nhận mật khẩu','password_confirmation')}}
            {{html()->password()->name('password_confirmation')->id('password_confirmation')->class('form-control')}}
            @error('password')
            <small class="form-text text-danger">{{$message}}</small>
            @enderror
        </div>
        <div class="form-group">
            {{html()->label('Email','emali')}}
            {{html()->text()->name('email')->value(old('email'))->id('email')->class('form-control')}}
            @error('email')
            <small class="form-text text-danger">{{$message}}</small>
            @enderror
        </div>
        <!-- <div class="form-group">
            {{html()->label('Chọn giáo họ','gx')}}
            {{html()->select('option',[
                '' => 'Chọn giáo họ',
                '1' => 'Trại Lê',
                '2' => 'Vinh Long',
                '3' => 'Bình Hòa',
            ])->id('gx')->class('form-control')
            ->placeholder('Chọn giáo họ')}} <br>
        </div> -->
        <div class="form-group">
            {{html()->label('Giới tính')->id('gender')}}<br>
            <!-- <div class="form-check"> -->
            {{html()->radio('gender','1',true)->id('male')->class("form-check-input")}}
            {{html()->label('Nam','male')->class("form-check-label")}} <br>
            {{html()->radio('gender','2')->id('famale')->class("form-check-input")}}
            {{html()->label('Nữ','famale')->class("form-check-label")}}
            <!-- </div>   -->
        </div>
        <div class="form-group">
            {{html()->label('Kỹ Năng')->id('sills')}}<br>
            {{html()->checkbox('interests[]',false,'HTML')->id('HTML')->class("form-check-input")}}
            {{html()->label('HTML','HTML')->class("form-check-label")}} <br>
            {{html()->checkbox('interests[]',false,'Java')->id('Java')->class("form-check-input")}}
            {{html()->label('Java','Java')->class("form-check-label")}}<br>
            {{html()->checkbox('interests[]',false,'Python')->id('Python')->class("form-check-input")}}
            {{html()->label('Python','Python')->class("form-check-label")}}<br>
            {{html()->checkbox('interests[]',false,'CSS')->id('CSS')->class("form-check-input")}}
            {{html()->label('CSS','CSS')->class("form-check-label")}}
            <!-- </div>   -->
        </div>
        <div class="form-group">
            {{html()->label('Ngày sinh','birth')}}<br>
            <!-- <div class="form-check"> -->
            {{html()->date('date', \Carbon\Carbon::now()->format('Y-m-d'))->class('form-control')->id('birth')}}
            <!-- </div>   -->
        </div>
        <div class="form-group">
            {{html()->label('Giới thiệu bản thân','intro')}}
            {{html()->textarea()->id('intro')->class('form-control')}} <br>
        </div>
        <div class="form-group">
            {{html()->file()->name('file')->class('form-control-file')}}
        </div>
        <!-- <div class="form-group">
            {{html()->textarea()->cols(30)->rows(10)->class('form-control')->placeholder('nhập nội dung')}} <br>
        <div class="form-group"> -->
        {{html()->submit('đăng ký')->class('btn btn-dark')}}
        @if(session('success'))

        <div class="alert alert-success">

            {{ session('success') }}

        </div>

        @endif
    </div>
    </form>
    <!-- {{html()->form()->close()}} -->
    <!-- html()->form -->
    <!-- <form action="post/add" method="POST">
            <div class="form-group">
                <input type="text" class="form-control" name="title" id="" placeholder="tiêu đề"><br>
            </div>
            <div class="form-group">
                <textarea name="content" class="form-control" id="" cols="30" rows="10" placeholder="Nội dung bài viết"></textarea><br>
            </div>
            <div class="form-group">
                <input type="submit" class="form-control" value="sm-add">
            </div>

        </form> -->
    </div>

</body>

</html>