@extends('front.master')

@push('style')
@endpush

@section('content')


    <div class="sub-banner">
        <div class="img-container">
            <img src="{{ asset(isset($settings['bannerImage'])?$settings['bannerImage']:'') }}" alt="" />
            <div class="overlay">
                <div class="title">
                    {{ getFrontLanguage('result-1') }}
                </div>
            </div>
        </div>
    </div>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ route('front.home') }}">{{ getFrontLanguage('home') }}</a></li>
            <li class="breadcrumb-item active" aria-current="page">
                {{ getFrontLanguage('result-1') }}
            </li>
        </ol>
    </nav>
    <div class="result-section">
        <div class="container">
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#firstTerm"
                    >First Term</a
                    >
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#secondTerm"
                    >Second Term</a
                    >
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#thirdTerm"
                    >Third Term</a
                    >
                </li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content mb-5">
                <div class="tab-pane  active" id="firstTerm">
                    <table class="table  table-bordered table-striped table-hover">
                        <thead class="bg-primary">
                        <tr>
                            <th>S.N.</th>
                            <th>Class</th>
                            <th>Download</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>Nursery</td>
                            <td><a href=""><i class="fa fa-download"></i></a></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>LKG</td>
                            <td><a href=""><i class="fa fa-download"></i></a></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>UKG</td>
                            <td><a href=""><i class="fa fa-download"></i></a></td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>One</td>
                            <td><a href=""><i class="fa fa-download"></i></a></td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>Two</td>
                            <td><a href=""><i class="fa fa-download"></i></a></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tab-pane  fade" id="secondTerm">
                    <table class="table  table-bordered table-striped table-hover">
                        <thead class="bg-primary">
                        <tr>
                            <th>S.N.</th>
                            <th>Class</th>
                            <th>Download</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>Nursery</td>
                            <td><a href=""><i class="fa fa-download"></i></a></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>LKG</td>
                            <td><a href=""><i class="fa fa-download"></i></a></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>UKG</td>
                            <td><a href=""><i class="fa fa-download"></i></a></td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>One</td>
                            <td><a href=""><i class="fa fa-download"></i></a></td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>Two</td>
                            <td><a href=""><i class="fa fa-download"></i></a></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tab-pane  fade" id="thirdTerm">
                    <table class="table  table-bordered table-striped table-hover">
                        <thead class="bg-primary">
                        <tr>
                            <th>S.N.</th>
                            <th>Class</th>
                            <th>Download</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>Nursery</td>
                            <td><a href=""><i class="fa fa-download"></i></a></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>LKG</td>
                            <td><a href=""><i class="fa fa-download"></i></a></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>UKG</td>
                            <td><a href=""><i class="fa fa-download"></i></a></td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>One</td>
                            <td><a href=""><i class="fa fa-download"></i></a></td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>Two</td>
                            <td><a href=""><i class="fa fa-download"></i></a></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

@endsection

@push('script')
@endpush