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
                    <li class="breadcrumb-item"><a href="#">Asset</a></li>
                    <li class="breadcrumb-item active">Index</li>
                </ol>
            </div>
            <h5 class="page-title"> {{ getLanguage('facilities-1') }} </h5>
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


                    <h4 class="mt-0 header-title">{{ getLanguage('facilities-1') }} {{ getLanguage('list') }}
                        <button type="button" class="btn btn-primary waves-effect waves-light float-right" data-toggle="modal" data-target=".edu-add-new">
                            {{ getLanguage('add-new') }} {{getLanguage('asset-1')}}
                        </button>
                    </h4>

                    @include('admin.asset.addcategory')

                    <div class="modal fade edu-edit-category" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                    </div>

                    <div class="modal fade edu-add-asset" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                    </div>

                    <div class="modal fade edu-edit-asset" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                    </div>
                    <table id="datatable-students" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                        <thead>
                        <tr>
                            <th>S.N</th>
                            <th>{{ getLanguage('title') }}</th>
                            <th>{{ getLanguage('asset') }}</th>
                            <th>{{ getLanguage('action') }}</th>
                        </tr>
                        </thead>

                        @foreach($categories as $category)
                        <tr>
                           <td>
                               {{ $category->count }}
                           </td>
                           <td>
                               {{ $category->title }}
                           </td>
                            <td>
                                <table width="100%" border="0" bgcolor="" cellspacing="0">
                                    <tr>
                                        <th>
                                            {{ getLanguage('name') }}
                                        </th>
                                        <th>
                                            {{ getLanguage('quantity') }}
                                        </th>
                                        <th>
                                            {{ getLanguage('action') }}
                                        </th>
                                    </tr>
                                    @if($category->assets)
                                        @foreach($category->assets as $asset)
                                    <tr>
                                        <td>
                                            {{ $asset->title }}
                                        </td>
                                        <td>
                                            {{ $asset->quantity }}
                                        </td>
                                        <td>
                                            <a href="{{ route('admin.asset.image', $asset->slug) }}" class='btn btn-danger btn-icon-text mr-2 p-1 btn-delete-row' ><i class=' mdi mdi-plus btn-icon-prepend'></i>{{ getLanguage('image') }}</a>
                                            <button type='button'  class='btn btn-dark btn-icon-text mr-2 p-1 btn-edit-row' data-id="{{ $asset->id }}"><i class=' mdi mdi-grease-pencil btn-icon-prepend'></i>{{ getLanguage('edit') }}</button>
                                            <a href="{{ route('admin.asset.delete',$asset->id) }}" class='btn btn-danger btn-icon-text mr-2 p-1 btn-delete-row' ><i class=' mdi mdi-delete btn-icon-prepend'></i>{{ getLanguage('delete') }}</a>
                                        </td>
                                    </tr>
                                        @endforeach
                                        @endif
                                </table>
                            </td>
                           <td>

                               <button type="button " class='btn btn-success btn-icon-text mr-2 p-1 btn-add-asset' data-id="{{ $category->id }}"><i class=' mdi mdi-plus btn-icon-prepend'></i>{{ getLanguage('add-new') }} {{ $category->title }} {{getLanguage('asset')}}</button>
                               <hr>
                               <button type='button'  class='btn btn-dark btn-icon-text mr-2 p-1 btn-edit-category-row' data-id="{{ $category->id }}"><i class=' mdi mdi-grease-pencil btn-icon-prepend'></i>{{ getLanguage('title') }} {{ getLanguage('edit') }}</button>
                               <a href="{{ route('admin.asset.category.delete', $category->id) }}" class='btn btn-danger btn-icon-text mr-2 p-1 btn-delete-row' ><i class=' mdi mdi-delete btn-icon-prepend'></i>{{ $category->title }} {{ getLanguage('delete') }}</a>
                           </td>
                        </tr>
                        @endforeach
                        <tbody>

                        </tbody>
                    </table>

                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->



@endsection

@push('scripts')

<!-- Required datatable js -->
<script src="{{ asset('admin/assets/plugins/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('admin/assets/plugins/datatables/dataTables.bootstrap4.min.js') }}"></script>

<!-- Datatable init js -->
<script src="{{ asset('admin/assets/pages/datatables.init.js') }}"></script>
{{--Page specific scripts--}}




<script>
    $(document).on("click", ".btn-edit-category-row", function (e) {
        e.preventDefault();
        $this = $(this);
        var id = $this.attr('data-id');

        var tempEditUrl = "{{ route('admin.asset.category.edit', ':id') }}";
        tempEditUrl = tempEditUrl.replace(':id', id);
        console.log(tempEditUrl);
        var $modal = $('.edu-edit-category');
        $modal.load(tempEditUrl, function (response) {
            $modal.modal('show');
        });
    });

</script>


<script>
    $(document).on("click", ".btn-edit-row", function (e) {
        e.preventDefault();
        $this = $(this);
        var id = $this.attr('data-id');

        var tempEditUrl = "{{ route('admin.asset.edit', ':id') }}";
        tempEditUrl = tempEditUrl.replace(':id', id);
        console.log(tempEditUrl);
        var $modal = $('.edu-edit-asset');
        $modal.load(tempEditUrl, function (response) {
            $modal.modal('show');
        });
    });

</script>

<script>
    $(document).on("click", ".btn-add-asset", function (e) {
        e.preventDefault();
        $this = $(this);
        var id = $this.attr('data-id');

        var tempAddUrl = "{{ route('admin.asset.create', ':id') }}";
        tempAddUrl = tempAddUrl.replace(':id', id);
        console.log(tempAddUrl);
        var $modal = $('.edu-add-asset');
        $modal.load(tempAddUrl, function (response) {
            $modal.modal('show');
        });
    });

</script>

@endpush