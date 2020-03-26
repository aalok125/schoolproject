@extends('admin.layouts.master')

@push('styles')

{{--Page specific styles--}}
    <!-- Dropzone css -->
    <link href="{{ asset('admin/assets/plugins/dropzone/dist/dropzone.css') }}" rel="stylesheet" type="text/css">


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
            <h5 class="page-title"> ** Page Heading **</h5>
        </div>
    </div>
    <!-- end row -->

@endsection

@section('contents')

    {{--Page Specific Content--}}
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="modal-title" id="exampleModalLabel">New Staff </h4>

                    <form method="post" action="{{ route('admin.staff.store') }}" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-2 mb-3">
                                <ul class="nav nav-pills flex-column" id="myTab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home"
                                           aria-selected="true">Basic Details</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
                                           aria-selected="false">Qualification</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact"
                                           aria-selected="false">Certificates</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-10">
                                <div class="tab-content" id="myTabContent">
                                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

                                        <h5 class="text-center">Basic Information</h5>
                                        <div class="form-group">
                                            <label for="name">Name</label>
                                            <input type="text" name="name" id="name" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="title">Job Title:</label>
                                            <textarea  name="job_title" id="title" class="form-control"></textarea>
                                        </div>

                                        <div class="form-group">
                                            <label for="staff_type">Staff Type:</label>
                                            <select name="staff_type_id" id="staff_type" class="form-control">
                                                <option value="" selected disabled="disabled">Select a staff type</option>
                                                @foreach($staff_types as $staff_type)
                                                    <option value="{{$staff_type->id}}">{{$staff_type->title}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="ethnicity">Ethnicity:</label>
                                            <select name="ethnicity_id" id="ethnicity" class="form-control">
                                                <option value="" selected disabled>Select Ethnicity</option>
                                                @foreach($ethnicities as $ethnicity)
                                                    <option value="{{$ethnicity->id}}">{{ $ethnicity->title }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="ethnicity">Address:</label>
                                            <textarea name="address" id="address" class="form-control"></textarea>
                                        </div>

                                        <div class="form-group">
                                            <label for="gender">Gender:</label>
                                            <select name="gender" id="gender" class="form-control">
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                                <option value="Other">Other</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="DOB">DOB:</label>
                                            <input type="date" name="DOB" id="DOB" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="phone">Phone:</label>
                                            <input type="text" name="phone" id="phone" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="email">Email:</label>
                                            <input type="text" name="email" id="email" class="form-control">
                                        </div>

                                    </div>
                                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                        <h5 class="text-center">Add Qualifications</h5>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <table class="table table-bordered table-qualifications">
                                                    <thead>
                                                    <tr>
                                                        <th>SN</th>
                                                        <th>Details</th>
                                                        <th>Action</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>

                                                    </tbody>
                                                    <tfoot>
                                                    <tr>
                                                        <th></th>
                                                        <th></th>
                                                        <th>
                                                            <button class="btn btn-primary btn-sm btn-add-qualifications">
                                                                Add New
                                                            </button>
                                                        </th>
                                                    </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                                    <h5 class="text-center">Certificates Upload Section</h5>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <table class="table table-bordered table-certificates">
                                                <thead>
                                                <tr>
                                                    <th>SN</th>
                                                    <th>Details</th>
                                                    <th>Action</th>
                                                </tr>
                                                </thead>
                                                <tbody>

                                                </tbody>
                                                <tfoot>
                                                <tr>
                                                    <th></th>
                                                    <th></th>
                                                    <th>
                                                        <button class="btn btn-primary btn-sm btn-add-certificates">
                                                            Add New
                                                        </button>
                                                    </th>
                                                </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-success pull-right">Save changes</button>
                    </form>
                </div>
            </div>

        </div>
    </div>

@endsection

@push('scripts')

{{--Page specific scripts--}}
<!-- Dropzone js -->
<script src="{{ asset('admin/assets/plugins/dropzone/dist/dropzone.js') }}"></script>
<script>
    function generateRandomInteger() {
        return Math.floor(Math.random() * 90000) + 10000;
    }

    jQuery(document).on('click', '.btn-delete-qualifications', function (e) {
        e.preventDefault();
        var $this = $(this);
        $this.closest("tr").remove();
    });

    jQuery(document).on('click', '.btn-add-qualifications', function (e) {
        e.preventDefault();
        // console.log('tgd');
        var lastRow = $('table.table-qualifications > tbody > tr').last().attr('data-row');
        var counter = lastRow ? parseInt(lastRow) + 1 : 1;
        var randomInteger = generateRandomInteger();

        var newRow = jQuery('<tr data-row="' + counter + '">' +
            '<td>' + counter + '</td>' +
            '<td>' +
            '<input type="text" placeholder="Organization Name" name="exp[organization_name][' + randomInteger + ']" class="form-control" required>'+
            '<input type="text" placeholder="Job Title" name="exp[job_title][' + randomInteger + ']" class="form-control" required>'+
            '<input type="text" placeholder="Job Location" name="exp[job_location][' + randomInteger + ']" class="form-control">'+
            '<label>Start Date:</label><input type="date" placeholder="Start Date" name="exp[start_date][' + randomInteger + ']" class="form-control" required>'+
            '<label>End Date:</label><input type="date" placeholder="End Date" name="exp[end_date][' + randomInteger + ']" class="form-control">'+
            '</td>' +
            '<td><button type="button" class="btn btn-danger btn-sm btn-delete-qualifications" data-feature=""><i class="fa fa-minus-circle"></i></button></td>' +
            '</tr>');
        jQuery('table.table-qualifications').append(newRow);
    });


    jQuery(document).on('click', '.btn-delete-certificates', function (e) {
        e.preventDefault();
        var $this = $(this);
        $this.closest("tr").remove();
    });

    jQuery(document).on('click', '.btn-add-certificates', function (e) {
        e.preventDefault();
        // console.log('tgd');
        var lastRow = $('table.table-certificates > tbody > tr').last().attr('data-row');
        var counter = lastRow ? parseInt(lastRow) + 1 : 1;
        var randomInteger = generateRandomInteger();

        var newRow = jQuery('<tr data-row="' + counter + '">' +
            '<td>' + counter + '</td>' +
            '<td>' +
            '<input type="text" placeholder="Title" name="certificate_title[' + randomInteger + ']" class="form-control" required>'+
            '<label>Certificate File:</label><input type="file" name="certificate_file[' + randomInteger + ']" class="form-control" required>'+
            '</td>' +
            '<td><button type="button" class="btn btn-danger btn-sm btn-delete-certificates" data-feature=""><i class="fa fa-minus-circle"></i></button></td>' +
            '</tr>');
        jQuery('table.table-certificates').append(newRow);
    });

</script>

@endpush