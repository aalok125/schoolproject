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
                    <li class="breadcrumb-item"><a href="#">School</a></li>
                    <li class="breadcrumb-item active">Add</li>
                </ol>
            </div>
            <h5 class="page-title"> Basic Info</h5>
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

                    <h4 class="mt-0 header-title">School Info</h4>


                    <form class="" action="{{ route('admin.about.update') }}" method="post" enctype="multipart/form-data">

                        {{ csrf_field() }}
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>School Name</label>
                                    <input type="text" value="{{ getAbout('name') }}" name="name" class="form-control" required placeholder="School Name"/>
                                </div>


                                <div class="form-group">
                                    <label>School Description</label>
                                    <textarea type="text" value="{{ getAbout('description') }}" name="description" class="form-control" > </textarea>
                                </div>



                                <div class="form-group">
                                    <label for="photo">School Logo</label>
                                    <input type="file" name="logo" id="photo" class="form-control">
                                    <div class="image_preview">
                                        <div class="z-depth-1-half mb-4" style="text-align: center;">
                                            <img style="width: 100px;" id="preview_image" src="{{ asset('thumbnail/'.getAbout('logo')) }}" class="avatar-pic img-fluid" title="Click To Upload news Photo"
                                                 alt="news Image">
                                        </div>
                                    </div>
                                </div>



                                <div class="form-group">
                                    <label for="photo">School Favicon</label>
                                    <input type="file" name="favicon" id="photo" class="form-control">
                                    <div class="image_preview">
                                        <div class="z-depth-1-half mb-4" style="text-align: center;">
                                            <img style="width: 100px;" id="preview_image" src="{{ asset('thumbnail/'.getAbout('favicon')) }}" class="avatar-pic img-fluid" title="Click To Upload news Photo"
                                                 alt="news Image">
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label>Facebook Link</label>
                                    <input type="text"  value="{{ getAbout('facebook_link') }}" name="facebook_link" class="form-control" required placeholder="Facebook Link "/>
                                </div>


                                <div class="form-group">
                                    <label>Youtube Link</label>
                                    <input type="text"  value="{{ getAbout('youtube_link') }}" name="youtube_link" class="form-control" required placeholder="Youtube Link "/>
                                </div>


                                <div class="form-group">
                                    <label>Twitter Link</label>
                                    <input type="text"  value="{{ getAbout('twitter_link') }}" name="twitter_link" class="form-control" required placeholder="Twitter Link "/>
                                </div>

                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>School Address</label>
                                    <input type="text" name="address"  value="{{ getAbout('address') }}" class="form-control" required placeholder="Address"/>
                                </div>

                                <div class="form-group">
                                    <label>Phone Number</label>
                                    <input type="text" name="phone"  value="{{ getAbout('phone') }}" class="form-control" placeholder="Phone Number"/>
                                </div>

                                <div class="form-group">
                                    <label>School Email</label>
                                    <input type="email" name="email"  value="{{ getAbout('email') }}" class="form-control" placeholder="Email"/>
                                </div>



                                <div class="form-group">
                                    <label>VDC Name</label>
                                    <input type="title" name="vdc_name"  value="{{ getAbout('vdc_name') }}" class="form-control" placeholder="Name"/>
                                </div>





                                <div class="form-group">
                                    <label for="photo">VDC Logo</label>
                                    <input type="file" name="vdc_logo" id="photo" class="form-control">
                                    <div class="image_preview">
                                        <div class="z-depth-1-half mb-4" style="text-align: center;">
                                            <img style="width: 100px;" id="preview_image" src="{{ asset('thumbnail/'.getAbout('vdc_logo')) }}" class="avatar-pic img-fluid" title="Click To Upload news Photo"
                                                 alt="news Image">
                                        </div>
                                    </div>
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
<script>
    $('input[type=file]').on('change', function(e){
        $this = $(this);
        uploadimages(e, this)
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
{{--Page specific scripts--}}

@endpush