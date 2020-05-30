<div class="slim-navbar">
    <div class="container slim-wrapper">
        <div class="phone">
            <i class="fa fa-phone"></i> Phone: (+977)- 014323477, 9841582585
        </div>
        <div class="social-link">
            <i class="fab fa-facebook"></i> Facebook |
            <i class="fab fa-twitter"></i> Twitter
        </div>
    </div>
</div>
<div id="navbar">
    <div class="container d-flex justify-content-between">
        <div class="right-container">
            <div class="logo">
                <img
                        src="{{ isset($settings['logo']) ? $settings['logo'] : "front/assets/images/logo.png" }}"
                        alt="" class="img-fluid" />
            </div>
            <div class="center-container">
                <div class="company_name">{{ isset($settings['name']) ? $settings['name'] : "High School" }}</div>
                <div class="company_address">
                    {{ isset($settings['address']) ? $settings['address'] : "" }}
                </div>
            </div>
        </div>

        <div class="right-container d-none d-md-flex">
            <div class="ministry">
                <div class="company_province">Province No. 5</div>
                <div class="company_ministry">
                    Ministry of Education <br />
                    Science And Technology
                </div>
            </div>
            <div class="logo">
                <img
                        src="{{ isset($settings['vdc_logo']) ? $settings['vdc_logo'] : "front/assets/images/logo.png" }}"
                        alt="" class="img-fluid" />
            </div>
        </div>
    </div>
</div>

<div id="myNav" class="overlay">
    <a class="closebtn" onclick="closeNav()">
        &times;
    </a>

    <div class="overlay-content">
        <a href="{{ route('front.home') }}">Home</a>

        <div class="dropdown">
            <button class="dropbtn">
                School Overview <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="{{ route('front.about') }}">About Us</a>
                <a href="{{ route('front.mission-vision') }}">Vision & Mission</a>
                <a href="{{ route('front.principal-note') }}">Principal Note</a>
                <a href="{{ route('front.gallery') }}">Gallery</a>
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">
                Facilities <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                    @foreach(get_asset_categories(1) as $category)
                        <a href="{{ route('front.asset_category', $category->id) }}">{{$category->title}}</a>
                    @endforeach
            </div>
        </div>
        <div class="dropdown">
            <button class="dropbtn">
                Members Enrolled <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                @foreach(get_staff_types(1) as $type)
                    <a href="{{ route('front.staffs',$type->slug) }}">{{$type->title}}</a>
                @endforeach
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">
                News & Notice <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="{{ route('front.notice') }}">Notice</a>
                <a href="{{ route('front.news') }}">News</a>
                <a href="{{ route('front.events') }}">Events</a>
                <a href="{{route('front.tender')}}">Tender</a>
            </div>
        </div>
        <a href="{{ route('front.calendar') }}">Calender</a>
        <div class="dropdown">
            <button class="dropbtn">
                Result <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="result.html">2076</a>
                <a href="result.html">2075</a>
                <a href="result.html">2074</a>
                <a href="result.html">2073</a>
            </div>
        </div>
        <a href="{{ route('front.contact') }}">Contact Us</a>
    </div>
</div>
<div id="secondNavbar" class="d-none  d-lg-block">
    <div class="container ">
        <div class="nav  d-flex justify-content-around">
            <a href="{{ route('front.home') }}">Home</a>

            <div class="dropdown">
                <button class="dropbtn">
                    School Overview <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="{{ route('front.about') }}">About Us</a>
                    <a href="{{ route('front.mission-vision') }}">Vision & Mission</a>
                    <a href="{{ route('front.principal-note') }}">Principal Note</a>
                    <a href="{{ route('front.gallery') }}">Gallery</a>
                </div>
            </div>

            <div class="dropdown">
                <button class="dropbtn">
                    Facilities <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    @foreach(get_asset_categories(1) as $category)
                        <a href="{{ route('front.asset_category', $category->id) }}">{{$category->title}}</a>
                    @endforeach
                </div>
            </div>
            <div class="dropdown">
                <button class="dropbtn">
                    Members Enrolled <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    @foreach(get_staff_types(1) as $type)
                        <a href="{{ route('front.staffs',$type->slug) }}">{{$type->title}}</a>
                    @endforeach
                </div>
            </div>

            <div class="dropdown">
                <button class="dropbtn">
                    News & Notice <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="{{ route('front.notice') }}">Notice</a>
                    <a href="{{ route('front.news') }}">News</a>
                    <a href="{{ route('front.events') }}">Events</a>
                    <a href="{{ route('front.tender') }}">Tender</a>
                </div>
            </div>
            <a href="{{ route('front.calendar') }}">Calender</a>
            <div class="dropdown">
                <button class="dropbtn">
                    Result <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="result.html">2076</a>
                    <a href="result.html">2075</a>
                    <a href="result.html">2074</a>
                    <a href="result.html">2073</a>
                </div>
            </div>
            <a href="{{ route('front.contact') }}">Contact Us</a>
            <form method="post" action="{{ route('front.setLanguage') }}">
                {{csrf_field()}}
                <div class="form-group">
                    <select name="" id="">
                        <option value="eng" @if(\Session::get('front_lang_session') == "eng") selected @endif>Eng</option>
                        <option value="nep" @if(\Session::get('front_lang_session') == "nep") selected @endif>Nep</option>
                    </select>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="top-navbar">
    <div class="container d-flex justify-content-between">
				<span onclick="openNav()" class="d-block d-lg-none">
					<i class="fa fa-bars"></i>
				</span>

        <form method="post" action="{{ route('front.setLanguage') }}" class="d-block d-lg-none">
            {{csrf_field()}}
            <div class="form-group">
                <select name="" id="">
                    <option value="eng" @if(\Session::get('front_lang_session') == "eng") selected @endif>Eng</option>
                    <option value="nep" @if(\Session::get('front_lang_session') == "nep") selected @endif>Nep</option>
                </select>
            </div>
        </form>
    </div>
</div>