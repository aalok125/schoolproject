@extends('admin.layouts.master')

@push('styles')

{{--Page specific styles--}}
<link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet" />
<link rel="stylesheet" href="{{ asset('nepaliDate/css/nepali.datepicker.v3.min.css') }}">
<style>
    .select2-container {
        width: 100% !important;
        padding: 0;
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
                    <li class="breadcrumb-item"><a href="#">Exam</a></li>
                    <li class="breadcrumb-item active">Index</li>
                </ol>
            </div>
            <h5 class="page-title"> Exam </h5>
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


                    <h4 class="mt-0 header-title">Exam List<button type="button" class="btn btn-primary waves-effect waves-light float-right" data-toggle="modal" data-target=".edu-add-new">Add New</button></h4>
                        @include('admin.exam.add')
                    <div class="modal fade edu-edit-new" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                    </div>

                    <div class="modal fade edu-result-new" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                    </div>
                    <table id="datatable-students" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                        <thead>
                        <tr>
                            <th>S.N</th>
                            <th>Title</th>
                            <th>Start Date</th>
                            <th>Grade</th>
                            <th>Action</th>
                        </tr>
                        </thead>

                        @foreach($exams as $exam)
                            <tr>
                                <td>{{ $exam->count }}</td>
                                <td>{{ $exam->title }}</td>
                                <td>{{ $exam->start_date }}</td>
                                <td>

                                    <table width="100%" border="0" bgcolor="" cellspacing="0">
                                        <tr>
                                            <th>
                                                Class
                                            </th>
                                            <th>
                                                Action
                                            </th>
                                        </tr>
                                        @if($exam->grades)
                                            @foreach($exam->grades as $grade)
                                                <tr>
                                                    <td>
                                                        Class {{ $grade->title }}
                                                    </td>
                                                    <td>
                                                        <button type='button'  class='btn btn-primary btn-icon-text mr-2 p-1 btn-result-row' grade-id="{{ $grade->id }}" data-id="{{ $exam->id }}"><i class=" mdi mdi-plus btn-icon-prepend"></i>Result</button>
                                                        @if($exam->month >= 9)
                                                        <a href='{{ route('admin.exam.pass.student', $grade->id) }}'  class='btn btn-success btn-icon-text mr-2 p-1'><i class=" mdi mdi-plus btn-icon-prepend"></i>Upgrade Student</a>
                                                            @endif
                                                    </td>
                                                </tr>
                                            @endforeach
                                        @endif
                                    </table>

                                </td>
                                <td>
                                    <button type="button" class="btn btn-dark btn-icon-text mr-2 p-1 btn-edit-row" data-id="{{ $exam->id }}" ><i class=" mdi mdi-grease-pencil btn-icon-prepend"></i></button>
                                    <a href="{{ route('admin.exam.delete', $exam->id) }}" class="btn btn-danger btn-icon-text mr-2 p-1 btn-delete-row" data-id="1"><i class=" mdi mdi-delete btn-icon-prepend"></i></a>
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

<script src="{{ asset('nepaliDate/js/nepali.datepicker.v3.min.js') }}"></script>
<script type="text/javascript">
    window.onload = function () {
        var mainInput = document.getElementById("nepali-datepicker");
        mainInput.nepaliDatePicker();
    };
</script>
<!-- Required datatable js -->
<script src="{{ asset('admin/assets/plugins/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('admin/assets/plugins/datatables/dataTables.bootstrap4.min.js') }}"></script>

<!-- Datatable init js -->
<script src="{{ asset('admin/assets/pages/datatables.init.js') }}"></script>
{{--Page specific scripts--}}


<script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>
{{--Select 2 INIT--}}
<script>
    $(document).ready(function() {
        $('.js-example-basic-multiple').select2();
    });
</script>



<script>
    $(document).on("click", ".btn-edit-row", function (e) {
        e.preventDefault();
        $this = $(this);
        var id = $this.attr('data-id');

        var tempEditUrl = "{{ route('admin.exam.edit', ':id') }}";
        tempEditUrl = tempEditUrl.replace(':id', id);
        console.log(tempEditUrl);
        var $modal = $('.edu-edit-new');
        $modal.load(tempEditUrl, function (response) {
            $modal.modal('show');
        });
    });

</script>


<script>
    $(document).on("click", ".btn-result-row", function (e) {
        e.preventDefault();
        $this = $(this);
        var id = $this.attr('data-id');
        var grade_id = $this.attr('grade-id');

        var tempResultUrl = "{{ route('admin.exam.result', [':id', ':grade_id']) }}";
        tempResultUrl = tempResultUrl.replace(':id', id);
        tempResultUrl = tempResultUrl.replace(':grade_id', grade_id);
        console.log(tempResultUrl);
        var $modal = $('.edu-result-new');
        $modal.load(tempResultUrl, function (response) {
            $modal.modal('show');
        });
    });

</script>



@endpush