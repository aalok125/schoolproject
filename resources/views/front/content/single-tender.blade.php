@extends('front.master')

@push('style')
@endpush

@section('content')

    <div class="sub-banner">
        <div class="img-container">
            <img src="assets/images/banner1.jpg" alt="" />
            <div class="overlay">
                <div class="title">
                    Tender
                </div>
            </div>
        </div>
    </div>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html"><i class="fa fa-home"> </i> Home</a></li>

            <li class="breadcrumb-item active" aria-current="page">
                Tender Notice
            </li>
        </ol>
    </nav>
    <div class="news-notice-section">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="content-section">
                        <div class="notice-section">
                            <div class="notice-detail-wrapper">
                                <div class="main-title">
                                    Tender Notice title for Durbar High School will be placed here.
                                </div>
                                <div class="long-description">
                                    <p>
                                        Lorem ipsum dolor, sit amet consectetur adipisicing
                                        elit. Dolores esse impedit, dolorum porro sapiente
                                        natus? Placeat nesciunt ducimus laborum minima, minus
                                        tempora consectetur suscipit veniam tenetur repudiandae
                                        expedita exercitationem dolorum? Lorem ipsum dolor, sit
                                        amet consectetur adipisicing elit. Dolores esse impedit,
                                        dolorum porro sapiente natus? Placeat nesciunt ducimus
                                        laborum minima, minus tempora consectetur suscipit
                                        veniam tenetur repudiandae expedita exercitationem
                                        dolorum?
                                    </p>
                                    <p>
                                        Lorem ipsum dolor, sit amet consectetur adipisicing
                                        elit. Dolores esse impedit, dolorum porro sapiente
                                        natus? Placeat nesciunt ducimus laborum minima, minus
                                        tempora consectetur suscipit veniam tenetur repudiandae
                                        expedita exercitationem dolorum? Lorem ipsum dolor, sit
                                        amet consectetur adipisicing elit. Dolores esse impedit,
                                        dolorum porro sapiente natus? Placeat nesciunt ducimus
                                        laborum minima, minus tempora consectetur suscipit
                                        veniam tenetur repudiandae expedita exercitationem
                                        dolorum?
                                    </p>

                                </div>
                                <div class="download-title">
                                    Additional Documents
                                </div>
                                <ul>
                                    <li>
                                        <div class="document-name">
                                            This is the first document that can be download.
                                        </div>
                                        <div class="download-icon">
                                            <a href=""> <i class="fa fa-download"></i></a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="document-name">
                                            This is the first document that can be download.
                                        </div>
                                        <div class="download-icon">
                                            <a href=""> <i class="fa fa-download"></i></a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="document-name">
                                            This is the first document that can be download.
                                        </div>
                                        <div class="download-icon">
                                            <a href=""> <i class="fa fa-download"></i></a>
                                        </div>
                                    </li>
                                </ul>
                                <div class="date">
                                    Publish Date: March 10, 2020
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