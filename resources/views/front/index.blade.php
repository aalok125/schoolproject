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
                                src="{{ asset('large/'.$slider->image) }}"
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
                        <div class="title">{{ getFrontLanguage('notice-1') }}</div>
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
                            <a href="{{ route('front.about') }}">{{ getFrontLanguage('read-more-1') }}</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="officer-container">
                        <h5>{{ getFrontLanguage('officer') }}</h5>
                        <div class="officer-item">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-4 col-4">
                                        <div class="img-container">
                                            <img
                                                    src="{{asset(isset($settings['adhyaksh_image']) ? 'thumbnail/'.$settings['adhyaksh_image']:'')}}"
                                                    alt=""
                                                    class="img-fluid"
                                            />
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-8">
                                        <div class="officer-name">{{isset($settings['adhyaksh_name']) ? $settings['adhyaksh_name']:''}}</div>
                                        <div class="officer-designation">
                                            {{ getFrontLanguage('ward-chairman') }}
                                        </div>
                                        <a href="{{ route('front.principal-note') }}" style="float: right">
                                            {{ getFrontLanguage('view-message') }}&nbsp;<i class="fa fa-arrow-right"></i>
                                        </a>
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
                                                    src="{{asset(isset($settings['principal_image']) ? 'thumbnail/'.$settings['principal_image']:'')}}"
                                                    alt=""
                                                    class="img-fluid"
                                            />
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-8">
                                        <div class="officer-name">{{isset($settings['principal_name']) ? $settings['principal_name']:''}}</div>
                                        <div class="officer-designation">
                                            {{ getFrontLanguage('principal') }}
                                        </div>
                                        <a href="{{ route('front.principal-note') }}" style="float: right">
                                            {{ getFrontLanguage('view-message') }}&nbsp;<i class="fa fa-arrow-right"></i>
                                        </a>
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
                                        {{ getFrontLanguage('news-1') }}
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a
                                            class="nav-link"
                                            data-toggle="tab"
                                            href="#tendernotice"
                                    >
                                        {{ getFrontLanguage('tender-1')." ".getFrontLanguage('notice-1') }}
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#events">
                                        {{ getFrontLanguage('event') }}
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a
                                            class="nav-link"
                                            data-toggle="tab"
                                            href="#scholarships"
                                    >
                                        {{ getFrontLanguage('scholarship-1') }}
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
                                                    <div class="title" style="font-weight:600">
                                                        <a href="{{ route('front.singleNews',[$news->id,getNepaliDate($news->created_at)]) }}">
                                                            {{ $news->title }}
                                                        </a>
                                                    </div>
                                                    <div class="info">
                                                        <div class="date">
                                                            {{ isset($news->created_at)?$news->created_at->format('Y-m-d'):"" }}
                                                        </div>
                                                        <div class="morebtn">
                                                            <a href="{{ route('front.singleNews',[$news->id,getNepaliDate($news->created_at)]) }}">
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
                                                    <div class="title" style="font-weight:600">
                                                        <a href="{{ route('front.singleTender',[$tender->id,getNepaliDate($tender->created_at)]) }}">
                                                            {{ $tender->title }}
                                                        </a>
                                                    </div>
                                                    <div class="info">
                                                        {{--<div class="date">2076-12-12</div>--}}
                                                        <div class="morebtn">
                                                            <a href="{{ route('front.singleTender',[$tender->id,getNepaliDate($tender->created_at)]) }}">
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
                                                        No tenders available currently.
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
                                                    <div class="title" style="font-weight:600">
                                                        <a href="{{ route('front.singleEvent',[$event->id,getNepaliDate($event->created_at)]) }}">
                                                            {{ $event->title }}
                                                        </a>
                                                    </div>
                                                    <div class="info">
                                                        {{--<div class="date">2076-12-12</div>--}}
                                                        <div class="morebtn">
                                                            <a href="{{ route('front.singleEvent',[$event->id,getNepaliDate($event->created_at)]) }}">
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
                                                        No events available currently.
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
                                        <a href="{{ route('front.events') }}">
                                            View More <i class="fa fa-arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="tab-pane container fade" id="scholarships">
                                    <div class="tab-detail">
                                        @if($context->scholarships->isNotEmpty())
                                            @foreach($context->scholarships as $scholarship)
                                            <div class="tab-item">
                                                <div class="title" style="font-weight:600">
                                                    <a href="">
                                                        {{ $scholarship->title }}
                                                    </a>
                                                </div>
                                                <div class="info">
                                                    <div class="date">{{ getNepaliDate($scholarship->created_at) }}</div>
                                                    <div class="morebtn">
                                                        <a href="{{ route('front.singleScholarship',[$scholarship->id,getNepaliDate($scholarship->created_at)]) }}">
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
                                                    No Scholarship Available
                                                </a>
                                            </div>
                                        </div>
                                        @endif
                                    </div>
                                    {{--<div class="morebtn">--}}
                                        {{--<a href="/event">--}}
                                            {{--View More <i class="fa fa-arrow-right"></i>--}}
                                        {{--</a>--}}
                                    {{--</div>--}}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="eventTemplate">
                        <div class="main-title">
                            {{ getFrontLanguage('notice-1') }}
                        </div>

                        <div class="tab-pane container active">
                            <div class="tab-detail">
                                @if($context->block_notices->isNotEmpty())
                                    @foreach($context->block_notices as $notice)
                                        <div class="tab-item">
                                            <div class="title" style="font-weight:600">
                                                {{$notice->title}}
                                            </div>
                                            <div class="info">
                                                <div class="date">
                                                    {{ getNepaliDate($notice->created_at) }}
                                                </div>
                                                <div class="morebtn">
                                                    <a href="{{ route('front.singleNotice',[$notice->id,getNepaliDate($notice->created_at)]) }}">
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
            {{ getFrontLanguage('facilities') }}
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
                {{ getFrontLanguage('our-school-family') }}
            </div>
            <div class="sub-title">
                We strive towards success and greatness.
            </div>
            <div class="row text-center">
                <div class="col-md-4">
                    <div class="counter">
                        <h2
                                class="timer count-title count-number"
                                data-to="{{ isset($settings['total_administrations']) ? $settings['total_administrations'] : "" }}"
                                data-speed="3000"
                        ></h2>
                        <p class="count-text ">{{ getFrontLanguage('administration-members') }}</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="counter">
                        <h2
                                class="timer count-title count-number"
                                data-to="{{ isset($settings['total_teachers']) ? $settings['total_teachers'] : "" }}"
                                data-speed="3000"
                        ></h2>
                        <p class="count-text ">{{ getFrontLanguage('our-excellent-teachers') }}</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="counter">
                        <h2
                                class="timer count-title count-number"
                                data-to="{{ isset($settings['total_student']) ? $settings['total_student'] : "" }}"
                                data-speed="3000"
                        ></h2>
                        <p class="count-text ">{{ getFrontLanguage('our-genius-students') }}</p>
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
                @if($context->testimonials->isNotEmpty())
                    @foreach($context->testimonials as $testimonial)
                    <div class="carousel-item @if($context->testimonials[0]->id == $testimonial->id)active @endif">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="testimonial-wrapper">
                                    <div class="title">{{ getFrontLanguage('what-people-are-saying') }}</div>
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
                                    <div class="name">{{$testimonial->name}}</div>
                                    <div class="designation">
                                        {{ $testimonial->designation }}
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="img-container">
                                    <img
                                            src="{{ asset(isset($testimonial->image) ? 'thumbnail/'.$testimonial->image :$settings['logo'] ) }}"
                                            alt=""
                                            class="img-fluid"
                                    />
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                @else
                    <div class="carousel-item active">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="testimonial-wrapper">
                                    <div class="title">{{ getFrontLanguage('what-people-are-saying') }}</div>
                                    <p>
                                        No Testimonials Available
                                    </p>
                                    <div class="name">David</div>
                                    <div class="designation">
                                        Admin
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="img-container">
                                    <img
                                            src="{{ asset(isset($settings['logo'])?$settings['logo']:'') }}"
                                            alt=""
                                            class="img-fluid"
                                    />
                                </div>
                            </div>
                        </div>
                    </div>
                @endif
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