@extends('front.master')

@push('style')
@endpush

@section('content')

    <div class="contact-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="main-title">
                        Contact Us
                    </div>
                    {{--<div class="sub-title">--}}
                        {{--Lorem, ipsum dolor sit amet consectetur adipisicing elit.--}}
                        {{--Provident possimus voluptatibus porro corrupti--}}
                    {{--</div>--}}
                    <form action="">
                        <div class="form-group">
                            <input
                                    type="text"
                                    class="form-control"
                                    placeholder="Full Name*"
                            />
                        </div>
                        <div class="form-group">
                            <input
                                    type="email"
                                    class="form-control"
                                    placeholder="Email*"
                            />
                        </div>
                        <div class="form-group">
                            <input
                                    type="phone"
                                    class="form-control"
                                    placeholder="Phone*"
                            />
                        </div>
                        <div class="form-group">
                            <input
                                    type="text"
                                    placeholder="Subject"
                                    class="form-control"
                            />
                        </div>
                        <div class="form-group">
									<textarea
                                            name=""
                                            id=""
                                            cols="30"
                                            rows="5"
                                            class="form-control"
                                            placeholder="Your Message *"
                                    ></textarea>
                        </div>
                        <div class="button-container">
                            <button type="submit" class="btn btn-primary">
                                Send Message
                            </button>
                        </div>
                    </form>
                </div>
                <div class="col-md-6">
                    <div class="img-container d-none d-md-block">
                        <img src="{{ asset('front/assets/images/contact.jpg') }}" alt="" class="img-fluid" />
                    </div>
                </div>
            </div>
        </div>
        <div class="contact-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="phone-wrapper">
                            <div class="title">
                                Call Us!
                            </div>
                            <div class="phone">
                                {{ isset($settings['phone']) ? $settings['phone'] : "" }}
                            </div>
                            <div class="phone-wrapper-icon">
                                <i class="fa fa-phone"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="phone-wrapper">
                            <div class="title">
                                Email Us!
                            </div>
                            <div class="phone">
                                {{ isset($settings['email']) ? $settings['email'] : "" }}
                            </div>
                            {{--<div class="phone">--}}
                                {{--administration@schoolname.com--}}
                            {{--</div>--}}
                            <div class="phone-wrapper-icon">
                                <i class="fa fa-envelope"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="phone-wrapper">
                            <div class="title">
                                Locate Us!
                            </div>
                            <div class="phone">
                                {{ isset($settings['address']) ? $settings['address'] : "" }}
                            </div>
                            {{--<div class="phone">--}}
                                {{--Province Number 3--}}
                            {{--</div>--}}
                            <div class="phone-wrapper-icon">
                                <i class="fa fa-map-marker-alt"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3531.946120703582!2d85.30727344983875!3d27.718949782702598!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb18e36e151cad%3A0x7cfad33881817bf5!2sSorakhutte%20Taxi%20Stand!5e0!3m2!1sen!2snp!4v1585377262866!5m2!1sen!2snp"
            width="100%"
            height="450"
            frameborder="0"
            style="border:0;"
            allowfullscreen=""
            aria-hidden="false"
            tabindex="0"
    ></iframe>

@endsection

@push('script')
@endpush