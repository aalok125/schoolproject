
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title mt-0">Edit Exam</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="" action="{{ route('admin.exam.update') }}" method="post" enctype="multipart/form-data">

                    {{ csrf_field() }}
                    <input type="hidden" name="exam_id" value="{{ $exam->id }}" />
                    <div class="form-group">
                        <label>Title</label>
                        <input type="text" name="title" value="{{ $exam->title }}" class="form-control" required placeholder="Title"/>
                    </div>

                    <div class="form-group">
                        <label>Start Date</label>
                        <input type="date" name="start_date" value="{{ $exam->start_date }}" class="form-control" required placeholder="Title"/>
                    </div>

                    <div class="form-group">
                        <label>Select Grade</label>
                        <select class="form-control js-example-basic-multiple" name="grade_id[]" multiple="multiple">
                            <option value="" disabled>Select Grade</option>
                            @foreach($grades as $grade)
                                <option value="{{$grade->id}}"
                                @foreach($exam->grades as $gradeItem)
                                    @if($gradeItem->id == $grade->id) selected @endif
                                    @endforeach
                                >{{$grade->title}}</option>
                            @endforeach
                        </select>
                    </div>


                    <div class="form-group">
                        <label>Remarks</label>
                        <textarea class="form-control" name="remarks">{{ $exam->remarks }} </textarea>
                    </div>
                    <button type="submit" class="btn btn-success waves-effect waves-light float-right">Update</button>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
    <script>
        $(document).ready(function() {
            $('.js-example-basic-multiple').select2();
        });
    </script>