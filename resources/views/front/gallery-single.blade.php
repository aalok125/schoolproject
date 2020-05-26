
@extends('front.master')

@push('style')

    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css"
            integrity="sha256-UK1EiopXIL+KVhfbFa8xrmAWPeBjMVdvYMYkTAEv/HI="
            crossorigin="anonymous"
    />
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css"
            integrity="sha256-4hqlsNP9KM6+2eA8VUT0kk4RsMRTeS7QGHIM+MZ5sLY="
            crossorigin="anonymous"
    />
    <!-- font awesome -->
    <link
            rel="stylesheet"
            href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
            integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
            crossorigin="anonymous"
    />


@endpush

@section('content')

    <div class="sub-banner">
        <div class="img-container">
            <img src="{{ asset($galleries->first()->image) }}" alt="" />
            <div class="overlay">
                <div class="title">
                    Album
                </div>
            </div>
        </div>
    </div>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ route('front.home') }}">Home</a></li>
            <li class="breadcrumb-item"><a href="{{ route('front.gallery') }}">Gallery</a></li>
            <li class="breadcrumb-item active" aria-current="page">
                {{ $album->title }}
            </li>
        </ol>
    </nav>
    <div class="gallery-section">
        <div class="container">
            @if($galleries->isNotEmpty())
                <div class="slider-for">
                    @foreach($galleries as $gallery)
                        <div>
                            <div class="img-container">
                                <img src="{{ asset($gallery->image) }}" alt="" class="img-fluid" />
                            </div>
                        </div>
                    @endforeach
                </div>
                <div class="slider-nav">
                    @foreach($galleries as $gallery)
                        <div>
                            <div class="img-container">
                                <img src="{{ asset($gallery->image) }}" alt="" class="img-fluid" />
                            </div>
                        </div>
                    @endforeach
                </div>
            @endif
        </div>
    </div>

@endsection

@push('script')

    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"
            integrity="sha256-NXRS8qVcmZ3dOv3LziwznUHPegFhPZ1F/4inU7uC8h0="
            crossorigin="anonymous"></script>
    <script>
        $(".slider-for").slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: false,
            fade: true,
            asNavFor: ".slider-nav"
        });
        $(".slider-nav").slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            asNavFor: ".slider-for",
            dots: true,
            centerMode: true,
            focusOnSelect: true
        });
    </script>

@endpush
