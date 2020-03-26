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
            <h5 class="page-title"> Edit Staff Info</h5>
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
                    <h4 class="modal-title" id="exampleModalLabel">{{ $staff->name }}'s&nbsp;Detail</h4>

                    <form method="post" action="{{ route('admin.staff.update',$staff->slug) }}" enctype="multipart/form-data">
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
                                            <input type="text" name="name" value="{{$staff->name}}" id="name" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="title">Job Title:</label>
                                            <textarea name="job_title" id="title" class="form-control">{{$staff->job_title}}</textarea>
                                        </div>

                                        <div class="form-group">
                                            <label for="staff_type">Staff Type:</label>
                                            <select name="staff_type_id" id="staff_type" class="form-control">
                                                <option value="" selected disabled="disabled">Select a staff type</option>
                                                @foreach($staff_types as $staff_type)
                                                    <option value="{{$staff_type->id}}"
                                                        @if($staff_type->id==$staff->staff_type_id) selected @endif
                                                    >
                                                        {{$staff_type->title}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="ethnicity">Ethnicity:</label>
                                            <select name="ethnicity_id" id="ethnicity" class="form-control">
                                                <option value="" disabled>Select Ethnicity</option>
                                                @foreach($ethnicities as $ethnicity)
                                                    <option value="{{$ethnicity->id}}"
                                                            @if($staff->ethnicity_id == $ethnicity->id) selected @endif
                                                    >
                                                        {{ $ethnicity->title }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="ethnicity">Address:</label>
                                            <textarea name="address" id="address" class="form-control">{{$staff->address}}</textarea>
                                        </div>

                                        <div class="form-group">
                                            <label for="gender">Gender:</label>
                                            <select name="gender" id="gender" class="form-control">
                                                <option value="Male"
                                                        @if("Male"==$staff->gender) selected @endif
                                                >Male</option>
                                                <option value="Female"
                                                        @if("Female"==$staff->gender) selected @endif
                                                >Female</option>
                                                <option value="Other"
                                                        @if("Other"==$staff->gender) selected @endif
                                                >Other</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="DOB">DOB:</label>
                                            <input type="date" name="DOB" value="{{$staff->DOB}}" id="DOB" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="phone">Phone:</label>
                                            <input type="text" name="phone" value="{{$staff->phone}}" id="phone" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="email">Email:</label>
                                            <input type="text" name="email" value="{{$staff->email}}" id="email" class="form-control">
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
                                                    @php $count=1; @endphp
                                                    @foreach($staff->expriences as $exp)
                                                        <tr data-row="{{ $count }}">
                                                            <td>{{ $count }}</td>
                                                            <td>
                                                                <label for="">Organization Name</label>
                                                                <input type="text" placeholder="Organization Name" name="exp[organization_name][{{$exp->id}}]" value="{{$exp->organization_name}}" class="form-control" required>
                                                                <label for="">Job Title</label>
                                                                <input type="text" placeholder="Job Title" name="exp[job_title][{{$exp->id}}]" value="{{$exp->job_title}}" class="form-control" required>
                                                                <label for="">Job Location</label>
                                                                <input type="text" placeholder="Job Location" name="exp[job_location][{{$exp->id}}]" value="{{$exp->job_location}}" class="form-control">
                                                                <label>Start Date:</label><input type="date" placeholder="Start Date" name="exp[start_date][{{$exp->id}}]" value="{{$exp->start_date}}" class="form-control" required>
                                                                <label>End Date:</label><input type="date" placeholder="End Date" name="exp[end_date][{{$exp->id}}]" value="{{$exp->end_date}}" class="form-control" >
                                                            </td>
                                                            <td>
                                                                <button type="button" class="btn btn-danger btn-sm btn-delete-qualifications" data-feature=""><i class="fa fa-minus-circle"></i></button>
                                                            </td>
                                                        </tr>
                                                    @php $count++; @endphp
                                                    @endforeach
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
                                                <div class="jumbotron">
                                                    <div class="row preview_image">
                                                    </div>
                                                    <br>
                                                    <hr><hr>
                                                    <div class="row">
                                                        <div class="col-md-4 form-group">
                                                            <label for="">Document Title</label>
                                                            <input id="doc_title" type="text" name="title" class="form-control">
                                                        </div>
                                                        <div class="col-md-4 form-group">
                                                            <label for="">Document File</label>
                                                            <input id="doc_image" type="file" name="file" class="form-control">
                                                        </div>
                                                        <div class="col-md-4 form-group">
                                                            <label for="">Add New:</label>
                                                            <button id="doc_submit" class="btn btn-outline-primary" type="button">
                                                                Upload
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
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
            '<label for="">Organization Name</label>'+
            '<input type="text" placeholder="Organization Name" name="exp[organization_name][' + randomInteger + ']" class="form-control" required>'+
            '<label for="">Job Title</label>'+
            '<input type="text" placeholder="Job Title" name="exp[job_title][' + randomInteger + ']" class="form-control" required>'+
            '<label for="">Job Location</label>'+
            '<input type="text" placeholder="Job Location" name="exp[job_location][' + randomInteger + ']" class="form-control" required>'+
            '<label>Start Date:</label><input type="date" placeholder="Start Date" name="exp[start_date][' + randomInteger + ']" class="form-control" required>'+
            '<label>End Date:</label><input type="date" placeholder="End Date" name="exp[end_date][' + randomInteger + ']" class="form-control" required>'+
            '</td>' +
            '<td><button type="button" class="btn btn-danger btn-sm btn-delete-qualifications" data-feature=""><i class="fa fa-minus-circle"></i></button></td>' +
            '</tr>');
        jQuery('table.table-qualifications').append(newRow);
    });


</script>

<script>
    $(document).ready(function(){
        get_images();
    });

    function get_images(){

        $.ajax({
            url: '{{ route('admin.staff.get_documents',$staff->id) }}',
            contentType : false,
            processData : false,
            method: 'get',
            // data: formData,
            success: function(result)
            {
                console.log(result);
                $('.preview_image').empty();
                var images = result;
                $.each(images, function(key, value){
                    var url = '{{asset(':url')}}';
                    var img = '{{asset('admin/img/document_logo.png')}}';
                    url = url.replace(":url", value.file);
                    var preview = jQuery("<div class='col-md-4'>"+
                        "<a href='"+url+"' >"+
                        "<img src='"+img+"' alt='Click To View File' style='height: 100px; width: auto' />"+
                        "<p>"+value.title+"</p>"+
                        "</a>"+
                        "<button class='btn btn-danger text-center delete_document' value='"+value.id+"'>delete</button>" +
                        "<br>"+
                        "</div>");

                    $('.preview_image').append(preview);
                    console.log(value);
                })
                // location.reload();
            },
            error: function(data)
            {
                console.log(data);
            }
        });


    }
</script>

<script>
    $('#doc_submit').on('click',function(){
        console.log('adasa')
        var formData = new FormData();
        var myFile = $('#doc_image').prop('files')[0];
        var title = $('#doc_title').val();
         console.log(myFile);
        formData.append('file',myFile);
        formData.append('title',title);
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN' : $('meta[name="csrf-token"]').attr('content'),
            }
        });

        $.ajax({
            url: '{{ route("admin.staff.upload_document",$staff->id)}}',
            contentType: false,
            processData: false,
            method: 'POST',
            data : formData,

            success: function(result)
            {
                console.log(result);
                get_images();

            },
            error: function(data)
            {
                console.log(data);
            }

        })
    });
</script>

<script>
    jQuery(document).on('click', '.delete_document', function (e) {
        e.preventDefault();
        var imageId = $(this).val();
        var url = '{{ route("admin.staff.delete_document",":imageId") }}';
        url = url.replace(':imageId',imageId);
        $.ajax({
            url: url,
            contentType : false,
            processData : false,
            method: 'get',
            // data: formData,
            success: function(result)
            {
                alert(result);
                get_images();
                // location.reload();
            },
            error: function(data)
            {
                console.log(data);
            }
        });
    });
</script>


@endpush