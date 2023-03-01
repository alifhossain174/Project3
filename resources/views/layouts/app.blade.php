<!DOCTYPE html>
<html lang="en">

<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="{{url('/')}}/login_assets/images/icons/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="{{url('/')}}/login_assets/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="{{url('/')}}/login_assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="{{url('/')}}/login_assets/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <link rel="stylesheet" type="text/css" href="{{url('/')}}/login_assets/vendor/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="{{url('/')}}/login_assets/vendor/css-hamburgers/hamburgers.min.css">
    <link rel="stylesheet" type="text/css" href="{{url('/')}}/login_assets/vendor/animsition/css/animsition.min.css">
    <link rel="stylesheet" type="text/css" href="{{url('/')}}/login_assets/vendor/select2/select2.min.css">
    <link rel="stylesheet" type="text/css" href="{{url('/')}}/login_assets/vendor/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="{{url('/')}}/login_assets/css/util.css">
    <link rel="stylesheet" type="text/css" href="{{url('/')}}/login_assets/css/main.css">

    <style>
        .container-login100{
            background: #134E5E;
            background: -webkit-linear-gradient(to right, #71B280, #134E5E);
            background: linear-gradient(to right, #71B280, #134E5E);
        }

        .container-login100::before {
            content: "";
            display: block;
            position: absolute;
            z-index: -1;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            background-color: rgba(0,0,0,0.3);
        }
    </style>
</head>

<body>
    <div class="limiter">
        <div class="container-login100">

            @yield('content')

        </div>
    </div>

    <script src="{{url('/')}}/login_assets/vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="{{url('/')}}/login_assets/vendor/animsition/js/animsition.min.js"></script>
    <script src="{{url('/')}}/login_assets/vendor/bootstrap/js/popper.js"></script>
    <script src="{{url('/')}}/login_assets/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="{{url('/')}}/login_assets/vendor/select2/select2.min.js"></script>
    <script src="{{url('/')}}/login_assets/vendor/daterangepicker/moment.min.js"></script>
    <script src="{{url('/')}}/login_assets/vendor/daterangepicker/daterangepicker.js"></script>
    <script src="{{url('/')}}/login_assets/vendor/countdowntime/countdowntime.js"></script>
    <script src="{{url('/')}}/login_assets/js/main.js"></script>

</body>

</html>

