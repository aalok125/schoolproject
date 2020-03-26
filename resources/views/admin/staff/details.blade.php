@extends('admin.layouts.master')

@push('styles')

{{--Page specific styles--}}
    <style>
        .emp-profile{
            padding: 3%;
            margin-top: 3%;
            margin-bottom: 3%;
            border-radius: 0.5rem;
            background: #fff;
        }
        .profile-img{
            text-align: center;
        }
        .profile-img img{
            width: 70%;
            height: 100%;
        }
        .profile-img .file {
            position: relative;
            overflow: hidden;
            margin-top: -20%;
            width: 70%;
            border: none;
            border-radius: 0;
            font-size: 15px;
            background: #212529b8;
        }
        .profile-img .file input {
            position: absolute;
            opacity: 0;
            right: 0;
            top: 0;
        }
        .profile-head h5{
            color: #333;
        }
        .profile-head h6{
            color: #0062cc;
        }
        .profile-edit-btn{
            border: none;
            border-radius: 1.5rem;
            width: 70%;
            padding: 2%;
            font-weight: 600;
            color: #6c757d;
            cursor: pointer;
        }
        .proile-rating{
            font-size: 12px;
            color: #818182;
            margin-top: 5%;
        }
        .proile-rating span{
            color: #495057;
            font-size: 15px;
            font-weight: 600;
        }
        .profile-head .nav-tabs{
            margin-bottom:5%;
        }
        .profile-head .nav-tabs .nav-link{
            font-weight:600;
            border: none;
        }
        .profile-head .nav-tabs .nav-link.active{
            border: none;
            border-bottom:2px solid #0062cc;
        }
        .profile-work{
            padding: 14%;
            margin-top: -15%;
        }
        .profile-work p{
            font-size: 12px;
            color: #818182;
            font-weight: 600;
            margin-top: 10%;
        }
        .profile-work a{
            text-decoration: none;
            color: #495057;
            font-weight: 600;
            font-size: 14px;
        }
        .profile-work ul{
            list-style: none;
        }
        .profile-tab label{
            font-weight: 600;
        }
        .profile-tab p{
            font-weight: 600;
            color: #0062cc;
        }

        .image_preview{
            width: 300px;
            min-height: 100px;
            border: 2px solid #dddddd;
            margin-top: 15px;

            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
            color: #cccccc;

        }

        .image_preview_image{
            height: 150px;
            width: auto;

        }
    </style>
@endpush

@section('headers')

    {{--Heading and breadcrumbs--}}
    <div class="row">
        <div class="col-sm-12">
            <div class="float-right page-breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Admin</a></li>
                    <li class="breadcrumb-item"><a href="#">*Breadcrumb1*</a></li>
                    <li class="breadcrumb-item active">*Breadcrumb2*</li>
                </ol>
            </div>
            <h5 class="page-title">Staff Profile</h5>
        </div>
    </div>
    <!-- end row -->

@endsection

@section('contents')

    {{--Page Specific Content--}}
    <div class="container emp-profile">
        <form method="post">
            <div class="row">
                <div class="col-md-4">
                    <div class="profile-img">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog" alt=""/>
                        <div class="file btn btn-lg btn-primary">
                            Change Photo
                            <input type="file" name="file"/>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="profile-head">
                        <h5>
                            {{ $staff->name }}
                        </h5>
                        <h6>
                            {{ $staff->staffType->title }}
                        </h6>
                        <p>{{$staff->staffType->remarks}}</p>
                        <p class="proile-rating">School : <span>School Name</span></p>
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#experience" role="tab" aria-controls="profile" aria-selected="false">Experience</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#certificate" role="tab" aria-controls="profile" aria-selected="false">Certificates</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2">
                    <a href="{{ route('admin.staff.edit',$staff->slug) }}">
                        <input type="button" class="profile-edit-btn" name="btnAddMore" value="Edit Profile"/>
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="profile-work">

                    </div>
                </div>
                <div class="col-md-8">
                    <div class="tab-content profile-tab" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Job Title</label>
                                </div>
                                <div class="col-md-6">
                                    <p>{{ $staff->job_title }}</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Ethnicity</label>
                                </div>
                                <div class="col-md-6">
                                    <p>{{ $staff->ethnicity->title }}</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Gender</label>
                                </div>
                                <div class="col-md-6">
                                    <p>{{ $staff->gender }}</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Phone</label>
                                </div>
                                <div class="col-md-6">
                                    <p>{{ $staff->phone }}</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Date Of Birth</label>
                                </div>
                                <div class="col-md-6">
                                    <p>{{ $staff->DOB }}</p>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <label>Address</label>
                                </div>
                                <div class="col-md-6">
                                    <p>{{ $staff->address }}</p>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="experience" role="tabpanel" aria-labelledby="profile-tab">
                            <div class="table-rep-plugin">
                                <div class="table-responsive b-0" data-pattern="priority-columns">
                                    <table id="tech-companies-1" class="table  table-striped">
                                        <thead>
                                        <tr>
                                            <th data-priority="1">S.No</th>
                                            <th data-priority="4">Organization Name</th>
                                            <th data-priority="3">Job Title</th>
                                            <th data-priority="1">Job Location</th>
                                            <th data-priority="3">Start Date</th>
                                            <th data-priority="3">End Date</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            @php $count=1; @endphp
                                            @foreach($staff->expriences as $exp)
                                                <td>{{ $count }}</td>
                                                <td>{{ $exp->organization_name }}</td>
                                                <td>{{ $exp->job_title }}</td>
                                                <td>{{ $exp->job_location }}</td>
                                                <td>{{ $exp->start_date }}</td>
                                                <td>{{ $exp->end_date }}</td>
                                            @php $count++; @endphp
                                            @endforeach
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="certificate" role="tabpanel" aria-labelledby="profile-tab">
                            <div class="row">
                                @foreach($staff->documents as $doc)
                                <div class="col-md-4 ">
                                    <div class="card" style="box-shadow: 5px 10px 6px #888888;">
                                        <div class="card-header text-center">
                                            <a href="{{ asset($doc->file) }}">
                                            <span>{{ $doc->title }}</span>
                                            </a>
                                        </div>
                                        <div class="card-body">
                                            <a href="{{ asset($doc->file) }}">
                                            <img class="image_preview_image" src="{{asset('admin/img/document_logo.png')}}" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    {{--<a href="{{ asset($doc->file) }}">--}}
                                        {{--<img class="image_preview_image" src="{{asset('admin/img/document_logo.png')}}" alt="">--}}
                                        {{--<p></p>--}}
                                    {{--</a>--}}
                                </div>
                                @endforeach
                            </div>
                        </div>
                </div>
            </div>
        </form>
    </div>

@endsection

@push('scripts')

{{--Page specific scripts--}}

@endpush