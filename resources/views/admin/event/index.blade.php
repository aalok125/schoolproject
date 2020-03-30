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
                    <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Admin</a></li>
                    <li class="breadcrumb-item active"><a href="{{ route('admin.event.all') }}">Events</a></li>
                </ol>
            </div>
            <h5 class="page-title">Events</h5>
            
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

                    <h4 class="mt-0 header-title text-center">All School Events</h4>
                    <div>
                        <a href="{{ route('admin.event.add') }}" class="pull-right btn btn-primary">
                            ADD NEW</a>
                    </div>
                    <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                        <thead>
                        <tr>
                            <th>S.No</th>
                            <th>Name</th>
                            <th>Date</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                        </thead>


                        <tbody>
                            @foreach($contents as $content)
                            <tr>
                                <td>{{ $content->id }}</td>
                                <td>{{$content->title}}</td>
                                <td>{{$content->event_date}}</td>
                                <td>
                                    <a href="{{route('admin.event.changestatus',$content->id)}}">
                                    @if($content->status == "Active")
                                        <button data-id="{{$content->id}}" class="btn-chnage-status btn btn-sm btn-default text-primary btn-success" title="Active"><i class="ion-toggle-filled"></i> </button>
                                    @else
                                        <button data-id="{{ $content->id }}" class="btn-chnage-status btn btn-sm btn-default text-primary btn-danger" title="Inactive"><i class="ion-toggle"></i></button>
                                    @endif
                                    </a>
                                </td>
                                <td>
                                    <button class="btn btn-primary btn-icon-text mr-2 p-1" title="View Details" data-toggle="modal" data-target="#view_content{{$content->id}}">
                                        <i class="fa fa-eye"></i>
                                    </button>
                                    @include('admin.event.details')

                                    <a href="{{ route('admin.event.edit',$content->slug) }}" class="btn btn-success btn-icon-text mr-2 p-1" title="Edit">
                                        <i class="fa fa-edit"></i>
                                    </a>

                                    <button class="btn btn-danger btn-icon-text mr-2 p-1"
                                            data-toggle="modal" data-target="#delete_content{{$content->id}}" title="Delete">
                                        <i class="fa fa-trash"></i>
                                    </button>
                                    @include('admin.event.delete')

                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    


@endsection

@push('scripts')

    {{--Page specific scripts--}}
    <!-- Required datatable js -->
    <script src="{{ asset('admin/assets/plugins/datatables/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('admin/assets/plugins/datatables/dataTables.bootstrap4.min.js') }}"></script>

    <!-- Datatable init js -->
    <script src="{{ asset('admin/assets/pages/datatables.init.js') }}"></script>

@endpush