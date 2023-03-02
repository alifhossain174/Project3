<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin Panel</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
    <link rel="stylesheet" href="{{ url('/') }}/backend_assets/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{ url('/') }}/backend_assets/vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="{{ url('/') }}/backend_assets/css/fontastic.css">
    <link rel="stylesheet" href="{{ url('/') }}/backend_assets/css/grasp_mobile_progress_circle-1.0.0.min.css">
    <link rel="stylesheet" href="{{ url('/') }}/backend_assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="{{ url('/') }}/backend_assets/css/style.default.css" id="theme-stylesheet">
    <link rel="stylesheet" href="{{ url('/') }}/backend_assets/css/custom.css">
    <link rel="stylesheet" href="{{ url('/') }}/backend_assets/css/toastr.min.css">
    <link rel="shortcut icon" href="{{ url('/') }}/backend_assets/img/favicon.ico">

    @yield('header_css')

    <style>
        .page {
            background: #F7F8F8;
            background: -webkit-linear-gradient(to left, #ACBB78, #F7F8F8);
            background: linear-gradient(to left, #ACBB78, #F7F8F8);
        }
    </style>

</head>

<body>

    <!-- Side Navbar -->
    <nav class="side-navbar">
        <div class="side-navbar-wrapper">
            <!-- Sidebar Header-->
            <div class="sidenav-header d-flex align-items-center justify-content-center">
                <!-- User Info-->
                <div class="sidenav-header-inner text-center"><img src="{{ url('/') }}/backend_assets/img/admin2.png" alt="person" class="img-fluid rounded-circle">
                    <h2 class="h5">{{ Auth::user()->name }}</h2><span>{{ Auth::user()->email }}</span>
                </div>
                <!-- Small Brand information, appears on minimized sidebar-->
                <div class="sidenav-header-logo">
                    <a href="{{ url('/home') }}" class="brand-small text-center">
                        <strong>P3</strong>
                    </a>
                </div>
            </div>
            <!-- Sidebar Navigation Menus-->
            <div class="main-menu">
                <h5 class="sidenav-heading">MENU</h5>
                <ul id="side-main-menu" class="side-menu list-unstyled">
                    <li><a href="{{ url('/home') }}" style="text-shadow: 1px 1px 3px black"> <i class="icon-home"></i> Home </a></li>
                    <li><a href="{{url('/users/lists')}}"><i class="fas fa-users"></i>Users </a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="page">
        <!-- navbar-->
        <header class="header">
            <nav class="navbar">
                <div class="container-fluid">
                    <div class="navbar-holder d-flex align-items-center justify-content-between">
                        <div class="navbar-header">
                            <a id="toggle-btn" href="#" style="border-radius: 4px" class="menu-btn"><i class="icon-bars"> </i></a><a href="{{ url('/home') }}" class="navbar-brand">
                                <div class="brand-text d-none d-md-inline-block"><span></span><strong class="text-primary">Dashboard</strong></div>
                            </a>
                        </div>
                        <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">

                            <!-- Log out-->
                            <li class="nav-item">
                                <a href="{{ route('logout') }}" class="nav-link logout"
                                    onclick="event.preventDefault();
                                document.getElementById('logout-form').submit();">
                                    <span>Logout</span>
                                    <i class="fa fa-sign-out"></i>
                                </a>
                            </li>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                @csrf
                            </form>

                        </ul>
                    </div>
                </div>
            </nav>
        </header>


        @yield('content')


        <footer class="main-footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <p>&copy; <?= date('Y') ?> | Developed By Md Fahim Hossain for Orange Toolz</p>
                    </div>
                </div>
            </div>
        </footer>
    </div>

    <!-- JavaScript files-->
    <script src="{{ url('/') }}/backend_assets/vendor/jquery/jquery.min.js"></script>
    <script src="{{ url('/') }}/backend_assets/vendor/popper.js/umd/popper.min.js"></script>
    <script src="{{ url('/') }}/backend_assets/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="{{ url('/') }}/backend_assets/js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
    <script src="{{ url('/') }}/backend_assets/vendor/jquery.cookie/jquery.cookie.js"></script>
    <script src="{{url('/')}}/backend_assets/vendor/chart.js/Chart.min.js"></script>
    <script src="{{ url('/') }}/backend_assets/vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="{{ url('/') }}/backend_assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="{{url('/')}}/backend_assets/js/charts-home.js"></script>

    @yield('footer_js')

    <script src="{{ url('/') }}/backend_assets/js/front.js"></script>
    <script src="{{ url('/') }}/backend_assets/js/c218529370.js"></script>
    <script src="{{ url('/') }}/backend_assets/js/toastr.min.js"></script>
    {!! Toastr::message() !!}
</body>

</html>
