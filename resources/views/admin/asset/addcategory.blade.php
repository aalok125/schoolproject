<div class="modal fade edu-add-new" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title mt-0">{{ getLanguage('add-new') }} {{ getLanguage('asset-1') }}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="" action="{{ route('admin.asset.category.store') }}" method="post" enctype="multipart/form-data">

                {{ csrf_field() }}
                    <div class="form-group">
                        <label>{{ getLanguage('asset-1') }} {{ getLanguage('title') }}</label>
                        <input type="text" name="title" class="form-control" required placeholder="{{ getLanguage('asset-1') }} {{ getLanguage('title') }}"/>
                    </div>

                    <div class="form-group">
                        <label>{{ getLanguage('remarks') }}</label>
                        <textarea class="form-control" name="remarks">

                        </textarea>
                    </div>
                    <button type="submit" class="btn btn-success waves-effect waves-light float-right">Save</button>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->