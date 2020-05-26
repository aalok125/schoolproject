@extends('front.master')

@push('style')
@endpush

@section('content')

    <div class="sub-banner">
        <div class="img-container">
            <img src="assets/images/banner1.jpg" alt="" />
            <div class="overlay">
                <div class="title">
                    Tender Notice
                </div>
            </div>
        </div>
    </div>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="{{ route('front.home') }}"><i class="fa fa-home"> </i> Home</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">
                Tender
            </li>
        </ol>
    </nav>
    <div class="news-notice-section">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="content-section">
                        <div class="notice-section">
                            @if($context->tenders->isNotEmpty())
                                @foreach($context->tenders as $tender)
                                    <div class="notice-wrapper">
                                        <div class="title">
                                            {{ $tender->title }}
                                        </div>
                                        <div class="short-description">
                                            {!! substr($tender->content,0,300) !!}
                                        </div>
                                        <div class="date">
                                            Publish Date: {{ $tender->created_at->format('Y-m-d') }}
                                        </div>
                                        <div class="button-container">
                                            <a href="{{ route('front.singleTender',$tender->id) }}">View Detail</a>
                                        </div>
                                    </div>
                                @endforeach
                            @else
                                <span>No tenders available currently.</span>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="sidebar-section">
                        <div class="sidebar-title">Recent News</div>
                        @if($context->recent_news->isNotEmpty())
                            <ul>
                                @foreach($context->recent_news as $news)
                                    <li>
                                        <a href="{{ route('front.singleNews',$news->id) }}">{{$news->title}}</a>
                                    </li>
                                @endforeach
                            </ul>
                        @else
                            <span>No recent news to show.</span>
                        @endif

                        <hr />

                        <div class="sidebar-title">Recent Events</div>
                        @if($context->recent_events->isNotEmpty())
                            <ul>
                                @foreach($context->recent_events as $event)
                                    <li>
                                        <a href="{{ route('front.singleEvent',$event->id) }}">{{ $event->title }}</a>
                                    </li>
                                @endforeach
                            </ul>
                        @else
                            <span>No recent events to show.</span>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

@push('script')
@endpush