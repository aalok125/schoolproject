
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title mt-0">Edit Slider</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="" action="{{ route('admin.slider.update') }}" method="post" enctype="multipart/form-data">

                    {{ csrf_field() }}
                    <input type="hidden" name="slider_id" value="{{ $slider->id }}" />
                    <div class="form-group">
                        <label>Title</label>
                        <input type="text" name="title" value="{{ $slider->title }}" class="form-control" required placeholder="Title"/>
                    </div>

                    <div class="form-group">
                        <label>Image</label>
                        <input type="file" name="image" class="form-control" placeholder="Image"/>
                        @if($slider->image)
                            <img src="{{ asset('thumbnail/'.$slider->image) }}" style="width: 100px;">
                            @endif
                    </div>

                    <div class="form-group">
                        <label>Status</label>
                        <select class="form-control" name="status">
                            <option value="">Select Status</option>
                            <option value="Active" @if($slider->status == "Active") selected @endif >Active</option>
                            <option value="Inactive" @if($slider->status == "Inactive") selected @endif >Inactive</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Link</label>
                        <input type="text" value="{{ $slider->link }}" name="link" class="form-control" placeholder="Link"/>
                    </div>
                    <button type="submit" class="btn btn-success waves-effect waves-light float-right">Update</button>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
