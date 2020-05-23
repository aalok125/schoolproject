@extends('front.master')

@push('style')

@endpush

@section('content')

    <div style=" background-color: #fff">
        <div id="hospitalCarousel" class="carousel slide" data-ride="carousel">
            <ul class="carousel-indicators">
                <li
                        data-target="#hospitalCarousel"
                        data-slide-to="0"
                        class="active"
                ></li>
                <li data-target="#hospitalCarousel" data-slide-to="1"></li>
                <li data-target="#hospitalCarousel" data-slide-to="2"></li>
            </ul>

            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img
                            src="{{ asset('front/assets/images/banner1.jpg') }}"
                            alt="Los Angeles"
                            class="img-fluid"
                    />
                </div>
                <div class="carousel-item">
                    <img
                            src="{{ asset('front/assets/images/banner2.jpg') }}"
                            alt="Chicago"
                            class="img-fluid"
                    />
                </div>
                <div class="carousel-item">
                    <img
                            src="{{ asset('front/assets/images/banner3.jpg') }}"
                            alt="New York"
                            class="img-fluid"
                    />
                </div>
            </div>

            <a
                    class="carousel-control-prev"
                    href="#hospitalCarousel"
                    data-slide="prev"
            >
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a
                    class="carousel-control-next"
                    href="#hospitalCarousel"
                    data-slide="next"
            >
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
    </div>

    <div class="welcome-container">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-6">
                    <div class="marquee-notice">
                        <div class="title">Notice</div>
                        <div class="content">
                            <div
                                    id="notice-carousel"
                                    class="carousel slide"
                                    data-ride="carousel"
                            >
                                @if($context->notices->isNotEmpty())
                                    <div class="carousel-inner">
                                        @foreach($context->notices as $notice)
                                        <div class="carousel-item @if($notice->id == $context->notices[0]->id) active @endif">
                                            <a href="">{{$notice->title}}</a>
                                        </div>
                                        @endforeach
                                    </div>
                                @else
                                    <div class="carousel-inner">
                                        <div class="carousel-item">
                                            <a href="#">No notice available !!</a>
                                        </div>
                                    </div>
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="welcome-content">
                        <div class="title">
                            Welcome to Durbar High School
                        </div>

                        <div class="description">
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quod
                            labore hic consequuntur pariatur nulla, id obcaecati at rem
                            illo saepe quidem odit architecto eligendi harum assumenda
                            unde reiciendis! Cum, quo.Lorem ipsum, dolor sit amet
                            consectetur adipisicing elit. Quod labore hic consequuntur
                            pariatur nulla, id obcaecati at rem illo saepe quidem odit
                            architecto eligendi harum assumenda unde reiciendis! Cum, quo.
                        </div>
                        <div class="button-container">
                            <a href="/about">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="officer-container">
                        <h5>Officer</h5>
                        <div class="officer-item">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-4 col-4">
                                        <div class="img-container">
                                            <img
                                                    src="assets/images/voice.jpg"
                                                    alt=""
                                                    class="img-fluid"
                                            />
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-8">
                                        <div class="officer-name">Aalok Niraula</div>
                                        <div class="officer-designation">
                                            Educational Minister
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="officer-item">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-4 col-4">
                                        <div class="img-container">
                                            <img
                                                    src="assets/images/voice.jpg"
                                                    alt=""
                                                    class="img-fluid"
                                            />
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-8">
                                        <div class="officer-name">Mrs Aalok Niraula</div>
                                        <div class="officer-designation">
                                            Principal
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="service-container">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-6">
                    <div class="eventTemplate">
                        <div class="event-tabs">
                            <ul class="nav nav-tabs">
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#news">
                                        News Update
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a
                                            class="nav-link active"
                                            data-toggle="tab"
                                            href="#tendernotice"
                                    >
                                        Tender Notice
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#events">
                                        Events
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a
                                            class="nav-link"
                                            data-toggle="tab"
                                            href="#scholarships"
                                    >
                                        Scholarships
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div>
                            <div class="tab-content">
                                <div class="tab-pane container active" id="news">
                                    <div class="tab-detail">
                                        <div class="tab-item">
                                            <div class="title">
                                                <a href="">
                                                    News ipsum dolor, sit amet consectetur adipisicing
                                                    elit. Veniam sed, facere eligendi sint dolorum
                                                    officia
                                                </a>
                                            </div>
                                            <div class="info">
                                                <div class="date">2076-12-12</div>
                                                <div class="morebtn">
                                                    <a href="">
                                                        View <i class="fa fa-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-item">
                                            <div class="title">
                                                <a href="">
                                                    News ipsum dolor, sit amet consectetur adipisicing
                                                    elit. Veniam sed, facere eligendi sint dolorum
                                                    officia
                                                </a>
                                            </div>
                                            <div class="info">
                                                <div class="date">2076-12-12</div>
                                                <div class="morebtn">
                                                    <a href="">
                                                        View <i class="fa fa-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-item">
                                            <div class="title">
                                                <a href="">
                                                    Lorem ipsum dolor, sit amet consectetur
                                                    adipisicing elit. Veniam sed, facere eligendi sint
                                                    dolorum officia
                                                </a>
                                            </div>
                                            <div class="info">
                                                <div class="date">2076-12-12</div>
                                                <div class="morebtn">
                                                    <a href="">
                                                        View <i class="fa fa-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="morebtn">
                                        <a href="/notice">
                                            View More <i class="fa fa-arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="tab-pane container fade" id="tendernotice">
                                    <div class="tab-detail">
                                        <div class="tab-item">
                                            <div class="title">
                                                <a href="">
                                                    tendernotice ipsum dolor, sit amet consectetur
                                                    adipisicing elit. Veniam sed, facere eligendi sint
                                                    dolorum officia
                                                </a>
                                            </div>
                                            <div class="info">
                                                <div class="date">2076-12-12</div>
                                                <div class="morebtn">
                                                    <a href="">
                                                        View <i class="fa fa-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-item">
                                            <div class="title">
                                                <a href="">
                                                    tendernotice ipsum dolor, sit amet consectetur
                                                    adipisicing elit. Veniam sed, facere eligendi sint
                                                    dolorum officia
                                                </a>
                                            </div>
                                            <div class="info">
                                                <div class="date">2076-12-12</div>
                                                <div class="morebtn">
                                                    <a href="">
                                                        View <i class="fa fa-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-item">
                                            <div class="title">
                                                <a href="">
                                                    Lorem ipsum dolor, sit amet consectetur
                                                    adipisicing elit. Veniam sed, facere eligendi sint
                                                    dolorum officia
                                                </a>
                                            </div>
                                            <div class="info">
                                                <div class="date">2076-12-12</div>
                                                <div class="morebtn">
                                                    <a href="">
                                                        View <i class="fa fa-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="morebtn">
                                        <a href="/news">
                                            View More <i class="fa fa-arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="tab-pane container fade" id="events">
                                    <div class="tab-detail">
                                        <div class="tab-item">
                                            <div class="title">
                                                <a href="">
                                                    Events dolor, sit amet consectetur adipisicing
                                                    elit. Veniam sed, facere eligendi sint dolorum
                                                    officia
                                                </a>
                                            </div>
                                            <div class="info">
                                                <div class="date">2076-12-12</div>
                                                <div class="morebtn">
                                                    <a href="">
                                                        View <i class="fa fa-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-item">
                                            <div class="title">
                                                <a href="">
                                                    Events ipsum dolor, sit amet consectetur
                                                    adipisicing elit. Veniam sed, facere eligendi sint
                                                    dolorum officia
                                                </a>
                                            </div>
                                            <div class="info">
                                                <div class="date">2076-12-12</div>
                                                <div class="morebtn">
                                                    <a href="">
                                                        View <i class="fa fa-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-item">
                                            <div class="title">
                                                <a href="">
                                                    Lorem ipsum dolor, sit amet consectetur
                                                    adipisicing elit. Veniam sed, facere eligendi sint
                                                    dolorum officia
                                                </a>
                                            </div>
                                            <div class="info">
                                                <div class="date">2076-12-12</div>
                                                <div class="morebtn">
                                                    <a href="">
                                                        View <i class="fa fa-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="morebtn">
                                        ser
                                        <a href="/event">
                                            View More <i class="fa fa-arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="tab-pane container fade" id="scholarships">
                                    <div class="tab-detail">
                                        <div class="tab-item">
                                            <div class="title">
                                                <a href="">
                                                    scholarships dolor, sit amet consectetur
                                                    adipisicing elit. Veniam sed, facere eligendi sint
                                                    dolorum officia
                                                </a>
                                            </div>
                                            <div class="info">
                                                <div class="date">2076-12-12</div>
                                                <div class="morebtn">
                                                    <a href="">
                                                        View <i class="fa fa-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-item">
                                            <div class="title">
                                                <a href="">
                                                    scholarships ipsum dolor, sit amet consectetur
                                                    adipisicing elit. Veniam sed, facere eligendi sint
                                                    dolorum officia
                                                </a>
                                            </div>
                                            <div class="info">
                                                <div class="date">2076-12-12</div>
                                                <div class="morebtn">
                                                    <a href="">
                                                        View <i class="fa fa-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-item">
                                            <div class="title">
                                                <a href="">
                                                    Lorem ipsum dolor, sit amet consectetur
                                                    adipisicing elit. Veniam sed, facere eligendi sint
                                                    dolorum officia
                                                </a>
                                            </div>
                                            <div class="info">
                                                <div class="date">2076-12-12</div>
                                                <div class="morebtn">
                                                    <a href="">
                                                        View <i class="fa fa-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="morebtn">
                                        ser
                                        <a href="/event">
                                            View More <i class="fa fa-arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="eventTemplate">
                        <div class="main-title">
                            Notice
                        </div>

                        <div class="tab-pane container active">
                            <div class="tab-detail">
                                <div class="tab-item">
                                    <div class="title">
                                        <a href="">
                                            Notice ipsum dolor, sit amet consectetur adipisicing
                                            elit. Veniam sed, facere eligendi sint dolorum officia
                                        </a>
                                    </div>
                                    <div class="info">
                                        <div class="date">2076-12-12</div>
                                        <div class="morebtn">
                                            <a href="">
                                                View <i class="fa fa-arrow-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-item">
                                    <div class="title">
                                        <a href="">
                                            Lorem ipsum dolor, sit amet consectetur adipisicing
                                            elit. Veniam sed, facere eligendi sint dolorum officia
                                        </a>
                                    </div>
                                    <div class="info">
                                        <div class="date">2076-12-12</div>
                                        <div class="morebtn">
                                            <a href="">
                                                View <i class="fa fa-arrow-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="morebtn">
                                <a href="/notice">
                                    View More <i class="fa fa-arrow-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="facilities">
        <div class="main-title">
            Facilities
        </div>
        <div class="sub-title">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint deserunt
            consequuntur dicta, cupiditate odit repellat, ex veniam dolor
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="facility-item">
                        <div class="img-container">
                            <img
                                    src="assets/images/computerlab.jpg"
                                    alt=""
                                    class="img-fluid"
                            />
                        </div>
                        <div class="facility-title">
                            Computer Lab
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="facility-item">
                        <div class="img-container">
                            <img
                                    src="assets/images/library.jpg"
                                    alt=""
                                    class="img-fluid"
                            />
                        </div>
                        <div class="facility-title">
                            Library
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="facility-item">
                        <div class="img-container">
                            <img
                                    src="assets/images/sciencelab.jpg"
                                    alt=""
                                    class="img-fluid"
                            />
                        </div>
                        <div class="facility-title">
                            Science Lab
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="counter-container">
        <div class="container">
            <div class="main-title">
                Our Assets
            </div>
            <div class="sub-title">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint
                deserunt consequuntur dicta, cupiditate odit repellat, ex veniam
                dolor
            </div>
            <div class="row text-center">
                <div class="col-md-4">
                    <div class="counter">
                        <h2
                                class="timer count-title count-number"
                                data-to="25"
                                data-speed="3000"
                        ></h2>
                        <p class="count-text ">Administration Member</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="counter">
                        <h2
                                class="timer count-title count-number"
                                data-to="45"
                                data-speed="3000"
                        ></h2>
                        <p class="count-text ">Our Excellent Teachers</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="counter">
                        <h2
                                class="timer count-title count-number"
                                data-to="1000"
                                data-speed="2000"
                        ></h2>
                        <p class="count-text ">Our Geniues Students</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="testimonial-container">
        <div
                id="testimonialCarousel"
                class="carousel slide"
                data-ride="carousel"
        >
            <ul class="carousel-indicators">
                <li
                        data-target="#hospitalCarousel"
                        data-slide-to="0"
                        class="active"
                ></li>
                <li data-target="#hospitalCarousel" data-slide-to="1"></li>
                <li data-target="#hospitalCarousel" data-slide-to="2"></li>
            </ul>

            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="testimonial-wrapper">
                                <div class="title">What people are saying</div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                    Aperiam aliquid unde magni aspernatur excepturi nobis
                                    nihil,
                                </p>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                    Libero sequi, est quas distinctio atque, debitis
                                    voluptatum
                                </p>
                                <div class="name">David</div>
                                <div class="designation">
                                    Full Stack Developer
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="img-container">
                                <img
                                        src="assets/images/voice.jpg"
                                        alt=""
                                        class="img-fluid"
                                />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="testimonial-wrapper">
                                <div class="title">What people are saying</div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                    Aperiam aliquid unde magni aspernatur excepturi nobis
                                    nihil,
                                </p>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                    Libero sequi, est quas distinctio atque, debitis
                                    voluptatum
                                </p>
                                <div class="name">David</div>
                                <div class="designation">
                                    Full Stack Developer
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="img-container">
                                <img
                                        src="assets/images/voice.jpg"
                                        alt=""
                                        class="img-fluid"
                                />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="testimonial-wrapper">
                                <div class="title">What people are saying</div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                    Aperiam aliquid unde magni aspernatur excepturi nobis
                                    nihil,
                                </p>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                    Libero sequi, est quas distinctio atque, debitis
                                    voluptatum
                                </p>
                                <div class="name">David</div>
                                <div class="designation">
                                    Full Stack Developer
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="img-container">
                                <img
                                        src="assets/images/voice.jpg"
                                        alt=""
                                        class="img-fluid"
                                />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <a
                    class="carousel-control-prev"
                    href="#testimonialCarousel"
                    data-slide="prev"
            >
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a
                    class="carousel-control-next"
                    href="#testimonialCarousel"
                    data-slide="next"
            >
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
    </div>

@endsection

@push('script')

@endpush