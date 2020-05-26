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


            @if($context->sliders->isNotEmpty())
            <div class="carousel-inner">
                @foreach($context->sliders as $slider)
                <div class="carousel-item {{ $context->sliders[0]->id == $slider->id ? 'active' : '' }}">
                    <a href="{{isset($slider->link)?$slider->link:"#"}}">
                        <img
                                src="{{ asset($slider->image) }}"
                                alt="{{ $slider->title }}"
                                class="img-fluid"
                        />
                    </a>
                </div>
                @endforeach
                {{--<div class="carousel-item">--}}
                    {{--<img--}}
                            {{--src="{{ asset('front/assets/images/banner2.jpg') }}"--}}
                            {{--alt="Chicago"--}}
                            {{--class="img-fluid"--}}
                    {{--/>--}}
                {{--</div>--}}
                {{--<div class="carousel-item">--}}
                    {{--<img--}}
                            {{--src="{{ asset('front/assets/images/banner3.jpg') }}"--}}
                            {{--alt="New York"--}}
                            {{--class="img-fluid"--}}
                    {{--/>--}}
                {{--</div>--}}
            </div>
            @endif

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
                                @if($context->slider_notices->isNotEmpty())
                                    <div class="carousel-inner">
                                        @foreach($context->slider_notices as $notice)
                                        <div class="carousel-item @if($notice->id == $context->slider_notices[0]->id) active @endif">
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
                            Welcome to {{ isset($settings['name']) ? $settings['name'] : "High School" }}
                        </div>

                        <div class="description">
                            {!! isset($settings['welcome_message']) ? $settings['welcome_message'] : ''  !!}
                        </div>
                        <div class="button-container">
                            <a href="{{ route('front.about') }}">Read More</a>
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
                                    <a class="nav-link active" data-toggle="tab" href="#news">
                                        News Update
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a
                                            class="nav-link"
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
                                        @if($context->news->isNotEmpty())
                                            @foreach($context->news as $news)
                                                <div class="tab-item">
                                                    <div class="title">
                                                        <a href="{{ route('front.singleNews',$news->id) }}">
                                                            {{ $news->title }}
                                                        </a>
                                                    </div>
                                                    <div class="info">
                                                        <div class="date">
                                                            {{ isset($news->created_at)?$news->created_at->format('Y-m-d'):"" }}
                                                        </div>
                                                        <div class="morebtn">
                                                            <a href="{{ route('front.singleNews',$news->id) }}">
                                                                View <i class="fa fa-arrow-right"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            @endforeach
                                        @else
                                            <div class="tab-item">
                                                <div class="title">
                                                    <a href="">
                                                        No News Available Currently.
                                                    </a>
                                                </div>
                                                <div class="info">
                                                    {{--<div class="date">2076-12-12</div>--}}
                                                    <div class="morebtn">
                                                        <a href="#">
                                                            View <i class="fa fa-arrow-right"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        @endif
                                    </div>
                                    <div class="morebtn">
                                        <a href="{{ route('front.news') }}">
                                            View More <i class="fa fa-arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="tab-pane container fade" id="tendernotice">
                                    <div class="tab-detail">
                                        @if($context->tenders->isNotEmpty())
                                            @foreach($context->tenders as $tender)
                                                <div class="tab-item">
                                                    <div class="title">
                                                        <a href="{{ route('front.singleTender',$tender->id) }}">
                                                            {{ $tender->title }}
                                                        </a>
                                                    </div>
                                                    <div class="info">
                                                        {{--<div class="date">2076-12-12</div>--}}
                                                        <div class="morebtn">
                                                            <a href="{{ route('front.singleTender',$tender->id) }}">
                                                                View <i class="fa fa-arrow-right"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            @endforeach
                                        @else
                                            <div class="tab-item">
                                                <div class="title">
                                                    <a href="">
                                                        No tenders availbale currently.
                                                    </a>
                                                </div>
                                                <div class="info">
                                                    {{--<div class="date">2076-12-12</div>--}}
                                                    <div class="morebtn">
                                                        <a href="#">
                                                            View <i class="fa fa-arrow-right"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        @endif
                                    </div>
                                    <div class="morebtn">
                                        <a href="{{ route('front.tender') }}">
                                            View More <i class="fa fa-arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="tab-pane container fade" id="events">
                                    <div class="tab-detail">
                                        @if($context->events->isNotEmpty())
                                            @foreach($context->events as $event)
                                                <div class="tab-item">
                                                    <div class="title">
                                                        <a href="{{ route('front.singleEvent',$event->id) }}">
                                                            {{ $event->title }}
                                                        </a>
                                                    </div>
                                                    <div class="info">
                                                        {{--<div class="date">2076-12-12</div>--}}
                                                        <div class="morebtn">
                                                            <a href="{{ route('front.singleEvent',$event->id) }}">
                                                                View <i class="fa fa-arrow-right"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            @endforeach
                                        @else
                                            <div class="tab-item">
                                                <div class="title">
                                                    <a href="">
                                                        No events availbale currently.
                                                    </a>
                                                </div>
                                                <div class="info">
                                                    {{--<div class="date">2076-12-12</div>--}}
                                                    <div class="morebtn">
                                                        <a href="#">
                                                            View <i class="fa fa-arrow-right"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        @endif
                                    </div>
                                    <div class="morebtn">
                                        ser
                                        <a href="{{ route('front.events') }}">
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
                                @if($context->slider_notices->isNotEmpty())
                                    @foreach($context->slider_notices as $notice)
                                        <div class="tab-item">
                                            <div class="title">
                                                <a href="">
                                                    {{$notice->title}}
                                                </a>
                                            </div>
                                            <div class="info">
                                                <div class="date">
                                                    {{ isset($notice->created_at)?$notice->created_at->format('Y-m-d'):"" }}
                                                </div>
                                                <div class="morebtn">
                                                    <a href="{{ route('front.singleNotice',$notice->id) }}">
                                                        View <i class="fa fa-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                @else
                                    <div class="tab-item">
                                        <div class="title">
                                            <a href="">
                                                No Notice Available !!
                                            </a>
                                        </div>
                                    </div>
                                @endif

                            </div>
                            <div class="morebtn">
                                <a href="{{ route('front.notice') }}">
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
            Our School is equipped with many facilities
        </div>
        <div class="container">
            <div class="row">
                @if($context->asset_categories->isNotEmpty())
                    @foreach($context->asset_categories as $category)
                        {{--@dd($category)--}}
                        <div class="col-md-4">
                            <div class="facility-item">
                                <div class="img-container">
                                    <img
                                            src="{{ asset( isset($category->preview_image) ? $category->preview_image :"front/assets/images/computerlab.jpg") }}"
                                            alt=""
                                            class="img-fluid"
                                    />
                                </div>
                                <div class="facility-title">
                                    {{ $category->title }}
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endif
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
                                data-to="{{$context->administration_count}}"
                                data-speed="3000"
                        ></h2>
                        <p class="count-text ">Administration Member</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="counter">
                        <h2
                                class="timer count-title count-number"
                                data-to="{{$context->teacher_count}}"
                                data-speed="3000"
                        ></h2>
                        <p class="count-text ">Our Excellent Teachers</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="counter">
                        <h2
                                class="timer count-title count-number"
                                data-to="{{ $context->student_count }}"
                                data-speed="3000"
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