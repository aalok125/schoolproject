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
                    <li class="breadcrumb-item active">Edit</li>
                </ol>
            </div>
            <h5 class="page-title"> Edit Student</h5>
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


                    <form class="" action="{{ route('admin.student.update') }}" method="post" enctype="multipart/form-data">

                        {{ csrf_field() }}
                        <input type="hidden" name="student_id" value="{{ $student->id }}">
                        <div class="row">
                            <div class="col-md-9">
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <input type="text" value="{{ $student->name }}" name="name" class="form-control" required placeholder="Full Name"/>
                                </div>

                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Grade</label>
                                            <select class="form-control" name="grade_id">
                                                <option>Select Grade</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Ethnicity</label>
                                            <select class="form-control" name="ethnicity_id">
                                                <option value="">Select Ethnicity</option>
                                                <option value="1">Bahun</option>
                                                <option value="2">Magar</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label>Address</label>
                                    <input type="text" value="{{ $student->address }}" name="address" class="form-control" required placeholder="Student Address"/>
                                </div>

                                <div class="form-group">
                                    <label>Guardian Name</label>
                                    <input type="text" value="{{ $student->guardian_name }}" name="guardian_name" class="form-control" required placeholder="Guardian Name"/>
                                </div>

                                <div class="form-group">
                                    <label>Guardian Phone</label>
                                    <input type="text" value="{{ $student->guardian_phone }}" name="guardian_phone" class="form-control" placeholder="Guardian Phone"/>
                                </div>

                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="email" value="{{ $student->guardian_email }}" name="email" class="form-control" placeholder="Email"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Guardian Occupation</label>
                                            <button class="btn btn-sm btn-primary waves-effect waves-light float-right">Add New</button>
                                            <select class="form-control" name="occupation_id">
                                                <option>Select Occupation</option>
                                                <option value="1">Farmer</option>
                                                <option value="2">Teacher</option>
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
                                        <option value="Male" @if($student->gender == "Male") selected @endif >Male</option>
                                        <option value="Female" @if($student->gender == "Female") selected @endif >Female</option>
                                        <option value="Other" @if($student->gender == "Other") selected @endif >Other</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label>Religion</label>
                                    <select class="form-control" name="religion">
                                        <option>Select Religion</option>
                                        <option value="Hindu" @if($student->religion == "Hindu") selected @endif >Hindu</option>
                                        <option value="Christian" @if($student->religion == "Christian") selected @endif >Christian</option>
                                        <option value="Buddhism" @if($student->religion == "Buddhism") selected @endif >Buddhism</option>
                                        <option value="Islam" @if($student->religion == "Islam") selected @endif >Islam</option>
                                        <option value="Other" @if($student->religion == "Other") selected @endif >Other</option>
                                    </select>
                                </div>



                                <div class="form-group">
                                    <label>Birth Date</label>
                                    <input type="date" value="{{ $student->DOB }}" name="DOB" class="form-control" placeholder="Birth Date"/>
                                </div>

                                <div class="form-group">
                                    <label>Student Image</label>
                                    <input type="file" name="image" class="form-control" />

                                    @if($student->image)
                                    <img src="{{ asset('images/students/thumbnail/'.$student->image) }}">
                                        @endif
                                </div>


                            </div>
                        </div>


                        <button type="submit" class="btn btn-success waves-effect waves-light float-right">Update</button>
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