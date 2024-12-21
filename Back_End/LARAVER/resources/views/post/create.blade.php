<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <script src="https://cdn.tiny.cloud/1/3ad7iwns82dirzfmcex2z6ojakdc26qvxukxfeen9ly2hs2u/tinymce/5/tinymce.min.js"
        referrerpolicy="origin"></script>
    <script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <div class="container">
        <h1>Thêm bài viết</h1>
        <!-- {{ html()->form('PUT', '/post')->open() }}
            @csrf
        {{ html()->email('email')->placeholder('Your e-mail address') }}

        {{ html()->form()->close() }} -->
        <!-- @if ($errors->any())
<div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
<li>{{ $error }}</li>
@endforeach
            </ul>
        </div>
@endif -->
        <form action="store" method="POST" enctype="multipart/form-data">
            @csrf
            <!-- <form enctype="multipart/form-data"> -->
            <div class="form-group">
                <!-- {{ html()->label('') }} -->
                {{ html()->text()->name('title')->class('form-control')->placeholder('nhập tiêu đề') }}
                @error('title')
                    <small class="form-text text-danger">{{ $message }}</small>
                @enderror
            </div>
            <br>
            <div class="form-group">
                {{ html()->textarea()->id('content')->name('content')->class('form-control')->cols(30)->rows(10)->placeholder('nhập nội dung') }}
                @error('content')
                    <small class="form-text text-danger">{{ $message }}</small>
                @enderror
            </div>
            <br>
            <div class="form-group">
                {{ html()->file()->name('file')->class('form-control-file') }}
            </div>
            <br>
            {{ html()->submit('sb_add')->class('btn btn-secondary') }}
        </form>
        <!-- {{ html()->form()->close() }} -->
        <!-- html()->form -->
        <!-- <form action="post/add" method="POST">
            <div class="form-group">
                <input type="text" class="form-control" name="title" id="" placeholder="tiêu đề"><br>
            </div>
            <div class="form-group">
                <textarea name="content" class="form-control" id="" cols="30" rows="10"
                    placeholder="Nội dung bài viết"></textarea><br>
            </div>
            <div class="form-group">
                <input type="submit" class="form-control" value="sm-add">
            </div>

        </form> -->
    </div>

    <script>
        var editor_config = {
            path_absolute: "http://localhost/year-two/Back_End/LARAVER/",
            selector: 'textarea',
            relative_urls: false,
            plugins: [
                "advlist autolink lists link image charmap print preview hr anchor pagebreak",
                "searchreplace wordcount visualblocks visualchars code fullscreen",
                "insertdatetime media nonbreaking save table directionality",
                "emoticons template paste textpattern"
            ],
            toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media",
            file_picker_callback: function(callback, value, meta) {
                var x = window.innerWidth || document.documentElement.clientWidth || document.getElementsByTagName(
                    'body')[0].clientWidth;
                var y = window.innerHeight || document.documentElement.clientHeight || document
                    .getElementsByTagName('body')[0].clientHeight;

                var cmsURL = editor_config.path_absolute + 'laravel-filemanager?editor=' + meta.fieldname;
                if (meta.filetype == 'image') {
                    cmsURL = cmsURL + "&type=Images";
                } else {
                    cmsURL = cmsURL + "&type=Files";
                }

                tinyMCE.activeEditor.windowManager.openUrl({
                    url: cmsURL,
                    title: 'Filemanager',
                    width: x * 0.8,
                    height: y * 0.8,
                    resizable: "yes",
                    close_previous: "no",
                    onMessage: (api, message) => {
                        callback(message.content);
                    }
                });
            }
        };

        tinymce.init(editor_config);
    </script>

</body>

</html>
