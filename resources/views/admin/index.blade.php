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
                    <li class="breadcrumb-item"><a href="#">*Breadcrumb1*</a></li>
                    <li class="breadcrumb-item active">*Breadcrumb2*</li>
                </ol>
            </div>
            <h5 class="page-title"> Dashboard </h5>
        </div>
    </div>
    <!-- end row -->

@endsection

@section('contents')

    {{--Page Specific Content--}}

    <div class="row">
        <div class="col-xl-3 col-md-6">
            <div class="card mini-stat m-b-30">
                <div class="p-3 bg-primary text-white">
                    <div class="mini-stat-icon">
                        <i class="mdi mdi-account-multiple float-right mb-0"></i>
                    </div>
                    <h6 class="text-uppercase mb-0">Total Student</h6>
                </div>
                <div class="card-body">
                    <div class="mt-4 text-muted">
                        <div class="float-right">
                            <p class="m-0"><a href="#">View</a></p>
                        </div>
                        <h5 class="m-0">{{ getAbout('total_student') }}</h5>
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card mini-stat m-b-30">
                <div class="p-3 bg-primary text-white">
                    <div class="mini-stat-icon">
                        <i class="mdi mdi-account-box-outline float-right mb-0"></i>
                    </div>
                    <h6 class="text-uppercase mb-0">Total Staff</h6>
                </div>
                <div class="card-body">
                    <div class="mt-4 text-muted">
                        <div class="float-right">
                            <p class="m-0"><a href="#">View More</a></p>
                        </div>
                        <h5 class="m-0">{{ $staff->count() }}</h5>

                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card mini-stat m-b-30">
                <div class="p-3 bg-primary text-white">
                    <div class="mini-stat-icon">
                        <i class="mdi mdi-gender-female float-right mb-0"></i>
                    </div>
                    <h6 class="text-uppercase mb-0">Total Male</h6>
                </div>
                <div class="card-body">
                    <div class="mt-4 text-muted">
                        <div class="float-right">
                            <p class="m-0"><a href="#">View</a></p>
                        </div>
                        <h5 class="m-0">{{ getAbout('male_student') }}</h5>

                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card mini-stat m-b-30">
                <div class="p-3 bg-primary text-white">
                    <div class="mini-stat-icon">
                        <i class="mdi mdi-gender-male float-right mb-0"></i>
                    </div>
                    <h6 class="text-uppercase mb-0">Total Female</h6>
                </div>
                <div class="card-body">
                    <div class="mt-4 text-muted">
                        <div class="float-right">
                            <p class="m-0"><a href="#">View</a></p>
                        </div>
                        <h5 class="m-0">{{ getAbout('female_student') }}</h5>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end row -->

    <!-- end row -->
    <div class="row">
        <div class="col-xl-8">
            <div class="card m-b-30">
                <div class="card-body">
                    <h4 class="mt-0 header-title">Email Sent</h4>

                    <ul class="list-inline widget-chart m-t-20 text-center">
                        <li>
                            <h4 class=""><b>3652</b></h4>
                            <p class="text-muted m-b-0">Marketplace</p>
                        </li>
                        <li>
                            <h4 class=""><b>5421</b></h4>
                            <p class="text-muted m-b-0">Last week</p>
                        </li>
                        <li>
                            <h4 class=""><b>9652</b></h4>
                            <p class="text-muted m-b-0">Last Month</p>
                        </li>
                    </ul>

                    <div id="morris-area-example" style="height: 300px"></div>
                </div>
            </div>
        </div>
        <div class="col-xl-4">

        </div>
        
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card m-b-30">
                <div class="card-body">
                    <h4 class="mt-0 header-title">Revenue</h4>

                    <ul class="list-inline widget-chart m-t-20 text-center">
                        <li>
                            <h4 class=""><b>5248</b></h4>
                            <p class="text-muted m-b-0">Marketplace</p>
                        </li>
                        <li>
                            <h4 class=""><b>321</b></h4>
                            <p class="text-muted m-b-0">Last week</p>
                        </li>
                        <li>
                            <h4 class=""><b>964</b></h4>
                            <p class="text-muted m-b-0">Last Month</p>
                        </li>
                    </ul>
                    <div id="morris-bar-example" style="height: 300px"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- end row -->
    <div class="row">
        <div class="col-xl-4">
            <div class="card m-b-30">
                <div class="card-body">
                    <h4 class="mt-0 header-title mb-4">Monthly Earning</h4>
                    <div class="">
                        
                        <div class="row align-items-center mb-5">
                            <div class="col-md-6">
                                <div class="pl-3">
                                    <h3>$6451</h3>
                                    <h6>Monthly Earning</h6>
                                    <p class="text-muted">Sed ut perspiciatis unde omnis</p>
                                    <a href="#" class="text-primary">Learn more...</a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="text-center">
                                    <span class="peity-pie" data-peity='{ "fill": ["#508aeb", "#f2f2f2"]}' data-width="84" data-height="84">6/8</span>
                                </div>
                            </div>
                        </div>
                        <div class="row text-center">
                            <div class="col-6">
                                <div>
                                    <div class="mb-4">
                                        <span class="peity-donut" data-peity='{ "fill": ["#508aeb", "#f2f2f2"], "innerRadius": 22, "radius": 32 }' data-width="60" data-height="60">2,4</span>
                                    </div>
                                    <h4>42%</h4>
                                    <p class="mb-0 text-muted">Online Earning</p>
                                </div>
                            </div>
                            <div class="col-6">
                                <div>
                                    <div class="mb-4">
                                        <span class="peity-donut" data-peity='{ "fill": ["#508aeb", "#f2f2f2"], "innerRadius": 22, "radius": 32 }' data-width="60" data-height="60">8,4</span>
                                    </div>
                                    <h4>58%</h4>
                                    <p class="text-muted mb-0">Offline Earning</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card m-b-30 blog-wid">
                <div class="card-body">
                    <div class="float-left p-1 mr-3">
                        <div class="text-center bg-primary rounded p-3">
                            <p class="text-white-50 mb-4">October</p>
                            <h2 class="text-white mb-0">24</h2>
                        </div>
                    </div>
                    <div class="post-details p-2">
                        <h6 class="mt-0"><a href="#" class="text-dark">It will be as simple as Occidental</a></h6>
                        <p class="text-muted">Everyone realizes why a new common language would be desirable.</p>
                        <p class="mb-0">By <a href="#" class="text-primary">Daniel Sons</a></p>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-4">
            <div class="card m-b-30">
                <div class="card-body">
                    <h4 class="mt-0 header-title mb-4">Recent Activity Feed</h4>
                    <ul class="list-unstyled activity-list">
                        <li class="activity-item">
                            <span class="activity-date">12 Oct</span>
                            <span class="activity-text">Responded to need “Volunteer Activities”</span>
                            <p class="text-muted mt-2">Everyone realizes why a new common language would be desirable common words.</p>
                        </li>
                        <li class="activity-item">
                            <span class="activity-date">13 Oct</span>
                            <span class="activity-text">Uploaded this Images</span>
                            <p class="text-muted mt-2">Their separate existence is a myth</p>
                            <div>
                                <a href="#" class="activity-item-img"><img src="assets/images/small/img-1.jpg" alt="" class="rounded mb-2"></a>
                                <a href="#" class="activity-item-img"><img src="assets/images/small/img-2.jpg" alt="" class="rounded mb-2"></a>
                            </div>
                        </li>
                        <li class="activity-item">
                            <span class="activity-date">14 Oct</span>
                            <span class="activity-text">Uploaded this File</span>
                            <p class="text-muted mt-2 mb-4">The new common language will be more simple and regular their pronunciation.</p>
                            <div>
                                <a href="#" class="text-muted">
                                    <i class="ion-ios7-folder h1 p-3 bg-light rounded"></i>
                                    <p class="mt-2 mb-0">background.psd</p>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-xl-4">
            <div class="row">
                <div class="col-lg-6">
                    <div class="card bg-primary m-b-30 text-white weather-box">
                        <div class="card-body">
                            <div class="text-center">
                                <div>
                                    <canvas id="rain" width="56" height="56"></canvas>
                                </div>
                                <div>
                                    <h3>28° c</h3>
                                    <h6>Heavy rain</h6>
                                    <h4 class="mt-4">New York</h4>
                                </div>
                            </div>
                            <div class="weather-icon">
                                <i class="mdi mdi-weather-pouring"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="card bg-warning m-b-30 text-white weather-box">
                        <div class="card-body">
                            <div class="text-center">
                                <div>
                                    <canvas id="partly-cloudy-day" width="56" height="56"></canvas>
                                </div>
                                <div>
                                    <h3>32° c</h3>
                                    <h6>Partly cloudy</h6>
                                    <h4 class="mt-4">California</h4>
                                </div>
                            </div>
                            <div class="weather-icon">
                                <i class="mdi mdi-weather-partlycloudy"></i>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="card m-b-30">
                        <div class="card-body">
                            <h4 class="mt-0 header-title mb-4">Sales Analytics</h4>
                            <div id="morris-donut-example" class="morris-charts" style="height: 265px"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end row -->

    <div class="row">
        <div class="col-xl-12">
            <div class="card m-b-30">
                <div class="card-body">
                    <h4 class="mt-0 header-title mb-4">Recent Candidates</h4>
                    <div class="table-responsive">
                        <table class="table table-hover mb-0">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Position</th>
                                    <th>Office</th>
                                    <th>Age</th>
                                    <th>Start date</th>
                                    <th>Salary</th>
                                </tr>

                            </thead>
                            <tbody>
                                <tr>
                                    <td>Tiger Nixon</td>
                                    <td>System Architect</td>
                                    <td>Edinburgh</td>
                                    <td>61</td>
                                    <td>2017/04/25</td>
                                    <td>$320,800</td>
                                </tr>
                                <tr>
                                    <td>Garrett Winters</td>
                                    <td>Accountant</td>
                                    <td>Tokyo</td>
                                    <td>63</td>
                                    <td>2017/07/25</td>
                                    <td>$170,750</td>
                                </tr>
                                <tr>
                                    <td>Ashton Cox</td>
                                    <td>Junior Technical Author</td>
                                    <td>San Francisco</td>
                                    <td>66</td>
                                    <td>2015/01/12</td>
                                    <td>$86,000</td>
                                </tr>
                                <tr>
                                    <td>Cedric Kelly</td>
                                    <td>Senior Javascript Developer</td>
                                    <td>Edinburgh</td>
                                    <td>22</td>
                                    <td>2018/03/29</td>
                                    <td>$433,060</td>
                                </tr>
                                <tr>
                                    <td>Airi Satou</td>
                                    <td>Accountant</td>
                                    <td>Tokyo</td>
                                    <td>33</td>
                                    <td>2014/11/28</td>
                                    <td>$162,700</td>
                                </tr>
                                <tr>
                                    <td>Brielle Williamson</td>
                                    <td>Integration Specialist</td>
                                    <td>New York</td>
                                    <td>61</td>
                                    <td>2018/12/02</td>
                                    <td>$372,000</td>
                                </tr>
                                <tr>
                                    <td>Herrod Chandler</td>
                                    <td>Sales Assistant</td>
                                    <td>San Francisco</td>
                                    <td>59</td>
                                    <td>2018/08/06</td>
                                    <td>$137,500</td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>



@endsection

@push('scripts')

    <script>
        !function ($) {
            "use strict";

            var Dashboard = function () {
            };


            //creates area chart
            Dashboard.prototype.createAreaChart = function (element, pointSize, lineWidth, data, xkey, ykeys, labels, lineColors) {
                Morris.Area({
                    element: element,
                    pointSize: 0,
                    lineWidth: 0,
                    data: data,
                    xkey: xkey,
                    ykeys: ykeys,
                    labels: labels,
                    resize: true,
                    gridLineColor: '#eee',
                    hideHover: 'auto',
                    lineColors: lineColors,
                    fillOpacity: 0.7,
                    behaveLikeLine: true
                });
            },

                //creates area chart
                Dashboard.prototype.createBarChart  = function(element, data, xkey, ykeys, labels, lineColors) {
                    Morris.Bar({
                        element: element,
                        data: data,
                        xkey: xkey,
                        ykeys: ykeys,
                        labels: labels,
                        gridLineColor: '#eef0f2',
                        barSizeRatio: 0.4,
                        resize: true,
                        hideHover: 'auto',
                        barColors: lineColors
                    });
                },

                //creates Donut chart
                Dashboard.prototype.createDonutChart = function (element, data, colors) {
                    Morris.Donut({
                        element: element,
                        data: data,
                        resize: true,
                        colors: colors,
                    });
                },

                //donut
                $('.peity-donut').each(function () {
                    $(this).peity("donut", $(this).data());
                });

            //pie
            $('.peity-pie').each(function () {
                $(this).peity("pie", $(this).data());
            });

            /* BEGIN SVG WEATHER ICON */
            if (typeof Skycons !== 'undefined'){
                var icons = new Skycons(
                    {"color": "#fff"},
                    {"resizeClear": true}
                    ),
                    list  = [
                        "clear-day", "clear-night", "partly-cloudy-day",
                        "partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
                        "fog"
                    ],
                    i;

                for(i = list.length; i--; )
                    icons.set(list[i], list[i]);
                icons.play();
            };

            Dashboard.prototype.init = function () {

                //creating area chart
                var $areaData = [
                    {y: '2012', a: 0, b: 0, c:0},
                    {y: '2013', a: 150, b: 45, c:15},
                    {y: '2014', a: 60, b: 150, c:195},
                    {y: '2015', a: 180, b: 36, c:21},
                    {y: '2016', a: 90, b: 60, c:360},
                    {y: '2017', a: 75, b: 240, c:120},
                    {y: '2018', a: 30, b: 30, c:30}
                ];
                this.createAreaChart('morris-area-example', 0, 0, $areaData, 'y', ['a', 'b', 'c'], ['Series A', 'Series B', 'Series C'], ['#ff5560', '#fcc24c', '#508aeb']);

                //creating bar chart
                var $barData = [
                    {y: '1', a: 75, b: 65, c: 65},
                    {y: '2', a: 50, b: 40, c: 65},
                    {y: '3', a: 75, b: 65, c: 65},
                    {y: '4', a: 100, b: 90, c: 65},
                    {y: '5', a: 90, b: 75, c: 65},
                    {y: '6', a: 90, b: 75, c: 65},
                    {y: '7', a: 90, b: 75, c: 65},
                    {y: '8', a: 90, b: 75, c: 65},
                    {y: '9', a: 90, b: 75, c: 65},
                    {y: '10', a: 90, b: 75, c: 65},
                ];
                this.createBarChart('morris-bar-example', $barData, 'y', ['a', 'b', 'c'], ['Total', 'Male', 'Female'], ['#508aeb', '#fcc24c', '#54cc96']);

                //creating donut chart
                var $donutData = [
                    {label: "Bitcoin", value: 12},
                    {label: "Ethereum", value: 42},
                    {label: "Cardano", value: 20},
                    {label: "Ripple", value: 26}
                ];
                this.createDonutChart('morris-donut-example', $donutData, ['#54cc96', "#508aeb", '#ff5560', '#fcc24c']);

            },
                //init
                $.Dashboard = new Dashboard, $.Dashboard.Constructor = Dashboard
        }(window.jQuery),

//initializing
            function ($) {
                "use strict";
                $.Dashboard.init();
            }(window.jQuery);
    </script>

@endpush