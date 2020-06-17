@extends('admin.layouts.master')

@push('styles')

{{--Page specific styles--}}
    <!-- Dropzone css -->
{{--    <link href="{{ asset('admin/assets/plugins/dropzone/dist/dropzone.css') }}" rel="stylesheet" type="text/css">--}}
    <style>
        .image_preview{
            width: 100%;
            min-height: 100px;
            margin-top: 15px;

            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
            color: #cccccc;

        }

        .image_preview img{
            width: 150px;
            height: auto;
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
                    <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Admin</a></li>
                    <li class="breadcrumb-item active"><a href="{{ route('admin.staff.all') }}">Staffs</a></li>
                    <li class="breadcrumb-item active"><a href="{{ route('admin.staff.add') }}">Add</a></li>
                </ol>
            </div>
            <h5 class="page-title"> Add New Staff Member</h5>
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
                    <h4 class="modal-title text-center" id="exampleModalLabel">Basic Information </h4>

                    <form method="post" action="{{ route('admin.staff.store') }}" enctype="multipart/form-data">
                        @csrf

                        <div class="row">
                            <div class="col-md-8">
                                <div class="form-group">
                                    <label for="name">Name</label>
                                    <input type="text" name="name" id="name" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label for="title">Job Title:</label>
                                    <textarea  name="job_title" id="title" class="form-control" required></textarea>
                                </div>

                                <div class="form-group">
                                    <label for="staff_type">Staff Type:</label>
                                    <select name="staff_type_id" id="staff_type" class="form-control" required>
                                        <option value="" selected disabled="disabled">Select a staff type</option>
                                        @foreach($staff_types as $staff_type)
                                            <option value="{{$staff_type->id}}">{{$staff_type->title}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="phone">Phone:</label>
                                    <input type="text" name="phone" id="phone" class="form-control" >
                                </div>
                                <div class="form-group">
                                    <label for="email">Email:</label>
                                    <input type="text" name="email" id="email" class="form-control" >
                                </div>

                                <div class="form-group">
                                    <label for="ethnicity">Address:</label>
                                    <textarea name="address" id="address" class="form-control"></textarea>
                                </div>

                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="gender">Gender:</label>
                                    <select name="gender" id="gender" class="form-control" required>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                        <option value="Other">Other</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="DOB">DOB:</label>
                                    <input type="text" name="DOB" id="DOB" class="form-control nepali-calendar" >
                                </div>
                                <div class="form-group">
                                    <label for="DOB">Join Date:</label>
                                    <input type="text" name="join_date" id="join_date" class="form-control nepali-calendar"  >
                                </div>
                                <div class="form-group">
                                    <label for="photo">Profile Image</label>
                                    <input type="file" name="image" id="photo" class="form-control">
                                </div>
                                <div class="image_preview">
                                    <img src="{{asset('admin/img/profile_icon.png')}}" alt="" id="preview_image" name style="height: 100px; width: auto">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="">Quick Description</label>
                                    <textarea name="description" class="summernote form-control">
                                    </textarea>
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
{{--<script src="{{ asset('admin/assets/plugins/dropzone/dist/dropzone.js') }}"></script>--}}

<script>
    $('input[type=file]').on('change', function(e){
        uploadimages(e)
    });

    function uploadimages(e){
        const file = e.target.files[0];
        if(file){
            const reader = new FileReader();
            reader.addEventListener('load',function(){
                const previewImage = document.querySelector('#preview_image')
                console.log(previewImage)
                previewImage.setAttribute("src",reader.result)
            });
            reader.readAsDataURL(file);
        }
    }
</script>


@endpush