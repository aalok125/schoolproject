@extends('front.master')

@push('style')
@endpush

@section('content')

    <div class="sub-banner">
        <div class="img-container">
            <img src="assets/images/banner1.jpg" alt="" />
            <div class="overlay">
                <div class="title">
                    Gallery
                </div>
            </div>
        </div>
    </div>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">
                Gallery
            </li>
        </ol>
    </nav>
    <div class="gallery-section">
        <div class="container">
            <div class="main-title">
                Albums
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="album-container">
                        <a href="single-gallery.html">
                            <div class="img-container">
                                <img src="assets/images/banner1.jpg" alt="" />
                            </div>
                            <div class="overlay">
                                <div class="view">
                                    <i class="fa fa-eye"></i>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="album-title">
                        Album Name
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="album-container">
                        <a href="single-gallery.html">
                            <div class="img-container">
                                <img src="assets/images/banner1.jpg" alt="" />
                            </div>
                            <div class="overlay">
                                <div class="view">
                                    <i class="fa fa-eye"></i>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="album-title">
                        Album Name
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="album-container">
                        <a href="single-gallery.html">
                            <div class="img-container">
                                <img src="assets/images/banner1.jpg" alt="" />
                            </div>
                            <div class="overlay">
                                <div class="view">
                                    <i class="fa fa-eye"></i>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="album-title">
                        Album Name
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="album-container">
                        <a href="single-gallery.html">
                            <div class="img-container">
                                <img src="assets/images/banner1.jpg" alt="" />
                            </div>
                            <div class="overlay">
                                <div class="view">
                                    <i class="fa fa-eye"></i>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="album-title">
                        Album Name
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="album-container">
                        <a href="single-gallery.html">
                            <div class="img-container">
                                <img src="assets/images/banner1.jpg" alt="" />
                            </div>
                            <div class="overlay">
                                <div class="view">
                                    <i class="fa fa-eye"></i>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="album-title">
                        Album Name
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="album-container">
                        <a href="single-gallery.html">
                            <div class="img-container">
                                <img src="assets/images/banner1.jpg" alt="" />
                            </div>
                            <div class="overlay">
                                <div class="view">
                                    <i class="fa fa-eye"></i>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="album-title">
                        Album Name
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

@push('script')
@endpush