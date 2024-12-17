<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
</head>
<body>
    <div id="wrapper">
        <div class="header">
            <h1>header</h1>
        </div>
        <div id="wp-content">
            <div id="content">
                @yield('content')
            </div>
            <div id="sidebar">
                @yield('sidebar')
            </div>
        </div>
        <div id="footer">
            <h1>footer</h1>
        </div>
    </div>
</body>
</html>