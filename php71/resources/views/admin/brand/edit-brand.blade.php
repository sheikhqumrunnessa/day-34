@extends('admin.master')
@section('body')
    <br/>
    <div class="row">
        <div class="col-md-10">
            <div class="panel">
                <div class="panel-body">
                    <h3 class="text-center text-success">{{ Session::get('message') }}</h3>
                    {{--<form action="{{route('update-brand')}}" method="post" class="form-horizontal">--}}
                    {{--{{csrf_field()}}--}}
                    {{ Form::open(['route'=>'update-brand', 'method'=>'POST', 'class' => 'form-horizontal']) }}
                    <div class="form-group">
                        <label class="control-label col-md-3">
                            Brand Name
                        </label>
                        <div class="col-md-9">
                            <input type="text" value="{{ $brand->brand_name }}" name="brand_name" class="form-control"/>
                            <input type="hidden" value="{{ $brand->id }}" name="brand_id" class="form-control"/>
                            <span class="text-danger">{{ $errors->has('brand_name') ? $errors->first('brand_name') : ' ' }}</span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="control-label col-md-3">
                            Brand Description
                        </label>
                        <div class="col-md-9">
                            <textarea  type="text" name="brand_description" class="form-control">{{ $brand->brand_description }}</textarea>
                            <span class="text-danger">{{ $errors->has('brand_description') ? $errors->first('brand_description') : ' ' }}</span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3">Publication Status</label>
                        <div class="col-md-9">
                            <label><input type="radio" name="publication_status" {{ $brand->publication_status == 1 ? 'checked' : ''}}  value="1"/> Published</label>
                            <label><input type="radio" name="publication_status" {{ $brand->publication_status == 0 ? 'checked' : ''}} value="0"/> UnPublished</label>
                            <br/> <span class="text-danger">{{ $errors->has('publication_status') ? $errors->first('publication_status') : ' ' }}</span>
                        </div>
                    </div>

                    <div class="form-group">

                        <div class="col-md-9 col-md-offset-3">
                            <input type="submit" name="btn" value="Update Brand Info" class="btn btn-success btn-block">
                        </div>
                    </div>

                    {{ Form::close() }}
                </div>
            </div>
        </div>

    </div>
@endsection