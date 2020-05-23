@extends('front.master')

@push('style')
@endpush

@section('content')

    <div class="sub-banner">
        <div class="img-container">
            <img src="assets/images/banner1.jpg" alt="" />
            <div class="overlay">
                <div class="title">
                    News
                </div>
            </div>
        </div>
    </div>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item"><a href="news.html">News</a></li>
            <li class="breadcrumb-item active" aria-current="page">
                News Title
            </li>
        </ol>
    </nav>
    <div class="news-notice-section">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="content-section">
                        <div class="news-section">

                            <div class="news-wrapper">
                                <div class="img-container">
                                    <img
                                            src="assets/images/banner1.jpg"
                                            alt=""
                                            class="img-fluid"
                                    />
                                </div>
                                <div class="title">
                                    News Title of Durbar High School.
                                </div>
                                <div class="long-description">
                                    <p>
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate
                                        vitae, animi deleniti quaerat architecto ipsum dolor beatae, ipsa
                                        saepe dolore reiciendis vel minus non veritatis quod obcaecati at
                                        fugiat cumque! Lorem ipsum dolor sit amet consectetur adipisicing
                                        elit. Perspiciatis similique autem nisi, voluptas fugiat dolor velit
                                        sint laborum atque nesciunt veniam maxime doloribus temporibus
                                        aliquam quod adipisci. Eius, quo aspernatur.
                                    </p>
                                    <p>
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate
                                        vitae, animi deleniti quaerat architecto ipsum dolor beatae, ipsa
                                        saepe dolore reiciendis vel minus non veritatis quod obcaecati at
                                        fugiat cumque! Lorem ipsum dolor sit amet consectetur adipisicing
                                        elit. Perspiciatis similique autem nisi, voluptas fugiat dolor velit
                                        sint laborum atque nesciunt veniam maxime doloribus temporibus
                                        aliquam quod adipisci. Eius, quo aspernatur.
                                    </p>
                                    <p>
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate
                                        vitae, animi deleniti quaerat architecto ipsum dolor beatae, ipsa
                                        saepe dolore reiciendis vel minus non veritatis quod obcaecati at
                                        fugiat cumque! Lorem ipsum dolor sit amet consectetur adipisicing
                                        elit. Perspiciatis similique autem nisi, voluptas fugiat dolor velit
                                        sint laborum atque nesciunt veniam maxime doloribus temporibus
                                        aliquam quod adipisci. Eius, quo aspernatur.
                                    </p>
                                </div>
                                <div class="date">
                                    March 10, 2020
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="sidebar-section">
                        <div class="sidebar-title">Recent News</div>
                        <ul>
                            <li>
                                <a href="">Recent Notice Title will be placed Here</a>
                            </li>
                            <li>
                                <a href="">Recent Notice Title will be placed Here</a>
                            </li>
                            <li>
                                <a href="">Recent Notice Title will be placed Here</a>
                            </li>
                            <li>
                                <a href="">Recent Notice Title will be placed Here</a>
                            </li>
                        </ul>
                        <hr />
                        <div class="sidebar-title">Recent Events</div>
                        <ul>
                            <li>
                                <a href="">Recent Events Title will be placed Here</a>
                            </li>
                            <li>
                                <a href="">Recent Events Title will be placed Here</a>
                            </li>
                            <li>
                                <a href="">Recent Events Title will be placed Here</a>
                            </li>
                            <li>
                                <a href="">Recent Events Title will be placed Here</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

@push('script')
@endpush