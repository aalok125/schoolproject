@extends('admin.layouts.master')

@push('styles')

{{--Page specific styles--}}

@endpush

@section('headers')

    {{--Heading and breadcrumbs--}}
    <div class="row">
        <div class="col-sm-12">
            <div class="float-right page-breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Admin</a></li>
                    <li class="breadcrumb-item"><a href="#">Students</a></li>
                    <li class="breadcrumb-item active">Add</li>
                </ol>
            </div>
            <h5 class="page-title"> Add Student</h5>
        </div>
    </div>
    <!-- end row -->

@endsection

@section('contents')

    {{--Page Specific Content--}}
    <div class="row">
        <div class="col-12">
            <div class="card m-b-30">
                <div class="card-body">

                    <h4 class="mt-0 header-title">Add Student</h4>


                    <form class="" action="{{ route('admin.student.store') }}" method="post" enctype="multipart/form-data">

                        {{ csrf_field() }}
                        <div class="row">
                            <div class="col-md-9">
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <input type="text" name="name" class="form-control" required placeholder="Full Name"/>
                                </div>

                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Grade</label>
                                            <select class="form-control" name="grade_id">
                                                <option>Select Grade</option>
                                                @foreach($grades as $grade)
                                                    <option value="{{ $grade->id }}">
                                                        {{ $grade->title }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Ethnicity</label>
                                            <select class="form-control" name="ethnicity_id">
                                                <option value="">Select Ethnicity</option>
                                                @foreach($ethnicitys as $ethnicity)
                                                    <option value="{{ $ethnicity->id }}">
                                                        {{ $ethnicity->title }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label>Address</label>
                                    <input type="text" name="address" class="form-control" required placeholder="Student Address"/>
                                </div>

                                <div class="form-group">
                                    <label>Guardian Name</label>
                                    <input type="text" name="guardian_name" class="form-control" required placeholder="Guardian Name"/>
                                </div>

                                <div class="form-group">
                                    <label>Guardian Phone</label>
                                    <input type="text" name="guardian_phone" class="form-control" placeholder="Guardian Phone"/>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Guardian Occupation</label>
                                            <button class="btn btn-sm btn-primary waves-effect waves-light float-right">Add New</button>
                                            <select class="form-control" name="occupation_id">
                                                <option>Select Occupation</option>
                                                @foreach($occupations as $occupation)
                                                    <option value="{{ $occupation->id }}">
                                                        {{ $occupation->title }}
                                                    </option>
                                                    @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-3">

                                <div class="form-group">
                                    <label>Gender</label>
                                    <select class="form-control" name="gender">
                                        <option>Select Gender</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                        <option value="Other">Other</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Disability</label>
                                    <select class="form-control" name="disability">
                                        <option>Select Disability</option>
                                        <option value="No">No</option>
                                        <option value="Yes">Yes</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Religion</label>
                                    <select class="form-control" name="religion">
                                        <option>Select Religion</option>
                                        <option value="Hindu">Hindu</option>
                                        <option value="Christian">Christian</option>
                                        <option value="Buddhism">Buddhism</option>
                                        <option value="Islam">Islam</option>
                                        <option value="Other">Other</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label>Birth Date</label>
                                    <input type="date" name="DOB" class="form-control" placeholder="Birth Date"/>
                                </div>

                                <div class="form-group">
                                    <label>Student Image</label>
                                    <input type="file" name="image" class="form-control" />
                                </div>


                            </div>
                        </div>


                        <button type="submit" class="btn btn-success waves-effect waves-light float-right">Save</button>
                    </form>

                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->



@endsection

@push('scripts')

<!-- Required datatable js -->

{{--Page specific scripts--}}

@endpush