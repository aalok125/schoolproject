@extends('front.master')

@push('style')
@endpush

@section('content')

    <div class="sub-banner">
        <div class="img-container">
            <img src="{{ asset('front/assets/check_header.png') }}" alt="" />
            <div class="overlay">
                <div class="title">
                    About
                </div>
            </div>
        </div>
    </div>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ route('front.home') }}">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">
                About
            </li>
        </ol>
    </nav>
    <div class="about-section">
        <div class="container">
            <div class="row">
                {{--<div class="col-md-5">--}}
                    {{--<div class="img-container">--}}
                        {{--<img src="assets/images/about.jpg" alt="" class="img-fluid" />--}}
                    {{--</div>--}}
                {{--</div>--}}
                <div class="col-md-12">
                    <div class="about-title">
                        About
                    </div>
                    <div class="about-detail">
                        {!! isset($settings['about']) ? $settings['about'] : "" !!}
                    </div>
                </div>
            </div>
            <div class="title">
                History
            </div>
            <div class="whoweare-detail">
                <p>
                    {!! isset($settings['history']) ? $settings['history']: "" !!}
                </p>
            </div>
        </div>
        <div class="counter-container">
            <div class="container">
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
    </div>

@endsection

@push('script')
@endpush