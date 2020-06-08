<div class="topbar">

    <div class="topbar-left	d-none d-lg-block">
        <div class="text-center">

            <a href="{{ url('admins/dashboard') }}" class="logo">
                @if(getAbout('logo'))
                    <img src="{{ asset('thumbnail/'.getAbout('logo')) }}" style="width: 70px;" alt="logo">
                @endif
            </a>
        </div>
    </div>

    <nav class="navbar-custom">

        <ul class="list-inline float-right mb-0">
            <li class="list-inline-item notification-list dropdown d-none d-sm-inline-block">
                <form role="search" method="post" action="{{ route('admin.setlanguage') }}">
                    {{ csrf_field() }}
                    <div class="form-group mb-0">
                        <select class="form-control" name="language" id="selectlanguage">
                            <option value="eng" @if(\Session::get('lang_session') == "eng") selected @endif >English</option>
                            <option value="nep" @if(\Session::get('lang_session') == "nep") selected @endif >Nepali</option>
                        </select>
                    </div>
                </form>
            </li>
            {{--<li class="list-inline-item dropdown notification-list">--}}
                {{--<a class="nav-link dropdown-toggle arrow-none waves-effect" data-toggle="dropdown" href="#" role="button"--}}
                   {{--aria-haspopup="false" aria-expanded="false">--}}
                    {{--<i class="mdi mdi-email-outline noti-icon"></i>--}}
                    {{--<span class="badge badge-danger badge-pill noti-icon-badge">5</span>--}}
                {{--</a>--}}
                {{--<div class="dropdown-menu dropdown-menu-right dropdown-menu-animated dropdown-menu-lg">--}}
                    {{--<!-- item-->--}}
                    {{--<div class="dropdown-item noti-title">--}}
                        {{--<span class="badge badge-danger float-right">367</span>--}}
                        {{--<h5>Messages</h5>--}}
                    {{--</div>--}}
                    {{--<div class="slimscroll" style="max-height: 230px;">--}}
                        {{--<!-- item-->--}}
                        {{--<a href="javascript:void(0);" class="dropdown-item notify-item">--}}
                            {{--<div class="notify-icon"><img src="assets/images/users/user-2.jpg" alt="user-img" class="img-fluid rounded-circle" /> </div>--}}
                            {{--<p class="notify-details"><b>Charles M. Jones</b><span class="text-muted">Dummy text of the printing and typesetting industry.</span></p>--}}
                        {{--</a>--}}

                        {{--<!-- item-->--}}
                        {{--<a href="javascript:void(0);" class="dropdown-item notify-item">--}}
                            {{--<div class="notify-icon"><img src="assets/images/users/user-3.jpg" alt="user-img" class="img-fluid rounded-circle" /> </div>--}}
                            {{--<p class="notify-details"><b>Thomas J. Mimms</b><span class="text-muted">You have 87 unread messages</span></p>--}}
                        {{--</a>--}}

                        {{--<!-- item-->--}}
                        {{--<a href="javascript:void(0);" class="dropdown-item notify-item">--}}
                            {{--<div class="notify-icon"><img src="assets/images/users/user-4.jpg" alt="user-img" class="img-fluid rounded-circle" /> </div>--}}
                            {{--<p class="notify-details">Luis M. Konrad<span class="text-muted">It is a long established fact that a reader will</span></p>--}}
                        {{--</a>--}}

                        {{--<!-- item-->--}}
                        {{--<a href="javascript:void(0);" class="dropdown-item notify-item">--}}
                            {{--<div class="notify-icon"><img src="assets/images/users/user-5.jpg" alt="user-img" class="img-fluid rounded-circle" /> </div>--}}
                            {{--<p class="notify-details"><b>Kendall E. Walker</b><span class="text-muted">Dummy text of the printing and typesetting industry.</span></p>--}}
                        {{--</a>--}}

                        {{--<!-- item-->--}}
                        {{--<a href="javascript:void(0);" class="dropdown-item notify-item">--}}
                            {{--<div class="notify-icon"><img src="assets/images/users/user-6.jpg" alt="user-img" class="img-fluid rounded-circle" /> </div>--}}
                            {{--<p class="notify-details"><b>David M. Ryan</b><span class="text-muted">You have 87 unread messages</span></p>--}}
                        {{--</a>--}}
                    {{--</div>--}}


                    {{--<!-- All-->--}}
                    {{--<a href="javascript:void(0);" class="dropdown-item notify-all">--}}
                        {{--View All--}}
                    {{--</a>--}}

                {{--</div>--}}
            {{--</li>--}}

            <li class="list-inline-item dropdown notification-list">
                <a class="nav-link dropdown-toggle arrow-none waves-effect" data-toggle="dropdown" href="#" role="button"
                   aria-haspopup="false" aria-expanded="false">
                    <i class="mdi mdi-bell-outline noti-icon"></i>
                    <span class="badge badge-success badge-pill noti-icon-badge">4</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right dropdown-menu-animated dropdown-menu-lg">
                    <!-- item-->
                    <div class="dropdown-item noti-title">
                        <span class="badge badge-danger float-right"></span>
                        <h5>Activity Log</h5>
                    </div>

                    <div class="slimscroll" style="max-height: 230px;">

                        <!-- item-->
                        @foreach(getAdminNotifications() as $notification)
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <div class="notify-icon bg-primary"><i class="{{ getNotificationIcon($notification->description) }}"></i></div>
                                <p class="notify-details">{{ class_basename($notification->subject) }} {{$notification->description}}<span class="text-muted">Date: {{ getNepaliDate($notification->created_at) }}</span></p>
                            </a>
                        @endforeach


                    </div>

                    <!-- All-->
                    <a href="{{ route('admin.log.all') }}" class="dropdown-item notify-all">
                        View All
                    </a>

                </div>
            </li>

            <li class="list-inline-item dropdown notification-list">
                <a class="nav-link dropdown-toggle arrow-none waves-effect nav-user" data-toggle="dropdown" href="#" role="button"
                   aria-haspopup="false" aria-expanded="false">
                    @if(\Auth::user()->image)
                        <img src="{{ asset('thumbnail/'.\Auth::user()->image) }}" alt="{{ \Auth::user()->name }}" class="rounded-circle">
                    @endif

                </a>
                <div class="dropdown-menu dropdown-menu-right dropdown-menu-animated profile-dropdown ">
                    <a class="dropdown-item" href="{{ route('admin.self_profile') }}"><i class="mdi mdi-account-circle m-r-5 text-muted"></i> Profile</a>
                    <form action="/logout" method="post">
                        @csrf
                        <button class="dropdown-item" type="submit"><i class="mdi mdi-logout m-r-5 text-muted"></i> Logout</button>
                    </form>
                </div>
            </li>

        </ul>

        <ul class="list-inline menu-left mb-0">
            <li class="list-inline-item">
                <button type="button" class="button-menu-mobile open-left waves-effect">
                    <i class="ion-navicon"></i>
                </button>
            </li>
        </ul>

        <div class="clearfix"></div>

    </nav>

</div>