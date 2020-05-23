<div id="navbar">
    <div class="container d-flex justify-content-between">
        <div class="right-container">
            <div class="logo">
                <img src="assets/images/school-logo.png" alt="" class="img-fluid" />
            </div>
            <div class="center-container">
                <div class="company_name">Durbar High School</div>
                <div class="company_address">Jamal, Kathmandu</div>
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
                <img src="assets/images/logo.png" alt="" class="img-fluid" />
            </div>
        </div>
    </div>
</div>

<div id="myNav" class="overlay">
    <a class="closebtn" onclick="closeNav()">
        &times;
    </a>

    <div class="overlay-content">
        <a href="index.html">Home</a>

        <div class="dropdown">
            <button class="dropbtn">
                School Overview <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="about.html">About Us</a>
                <a href="mission-vision.html">Vision & Mission</a>
                <a href="principal-note.html">Principal Note</a>
                <a href="gallery.html">Gallery</a>
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">
                Facilities <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="science-lab.html">Science Lab</a>
                <a href="library.html">Library</a>
                <a href="computer-lab.html">Computer lab</a>
            </div>
        </div>
        <div class="dropdown">
            <button class="dropbtn">
                Members Enrolled <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="{{route('front.teachers')}}">Teachers</a>
                <a href="{{ route('front.administration') }}">Administration</a>
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
                <a href="tender.html">Tender</a>
            </div>
        </div>
        <a href="calender.html">Calender</a>
        <a href="contact.html">Contact Us</a>
    </div>
</div>
<div id="secondNavbar" class="d-none  d-lg-block">
    <div class="container ">
        <div class="nav  d-flex justify-content-around">
            <a href="index.html">Home</a>

            <div class="dropdown">
                <button class="dropbtn">
                    School Overview <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="about.html">About Us</a>
                    <a href="mission-vision.html">Vision & Mission</a>
                    <a href="principal-note.html">Principal Note</a>
                    <a href="gallery.html">Gallery</a>
                </div>
            </div>

            <div class="dropdown">
                <button class="dropbtn">
                    Facilities <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="science-lab.html">Science Lab</a>
                    <a href="library.html">Library</a>
                    <a href="computer-lab.html">Computer lab</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropbtn">
                    Members Enrolled <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="{{ route('front.teachers') }}">Teachers</a>
                    <a href="{{ route('front.administration') }}">Administration</a>
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
                    <a href="tender.html">Tender</a>
                </div>
            </div>
            <a href="calender.html">Calender</a>
            <a href="contact.html">Contact Us</a>
            <form action="">
                <div class="form-group">
                    <select name="" id="">
                        <option value="">Nep</option>
                        <option value="">Eng</option>
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

        <form action="" class="d-block d-lg-none">
            <div class="form-group">
                <select name="" id="">
                    <option value="">Nep</option>
                    <option value="">Eng</option>
                </select>
            </div>
        </form>
    </div>
</div>