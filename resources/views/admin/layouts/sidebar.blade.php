<!-- ========== Left Sidebar Start ========== -->
<div class="left side-menu">
    <button type="button" class="button-menu-mobile button-menu-mobile-topbar open-left waves-effect">
        <i class="ion-close"></i>
    </button>

    <div class="left-side-logo d-block d-lg-none">
        <div class="text-center">

            <a href="index.html" class="logo"><img src="assets/images/logo-dark.png" height="20" alt="logo"></a>
        </div>
    </div>

    <div class="sidebar-inner slimscrollleft">
                    
                    <div id="sidebar-menu">
                        <ul>
                            <li class="menu-title">Main</li>

                            <li>
                                <a href="index.html" class="waves-effect">
                                    <i class="dripicons-meter"></i>
                                    <span> Dashboard <span class="badge badge-success badge-pill float-right">3</span></span>
                                </a>
                            </li>

                            <li>
                                <a href="{{ route('admin.students') }}" class="waves-effect">
                                    <i class="dripicons-user-group"></i>
                                    <span> Students <span class="badge badge-success badge-pill float-right">3</span></span>
                                </a>
                            </li>



                            <li>
                                <a href="{{ route('admin.sliders') }}" class="waves-effect">
                                    <i class="dripicons-meter"></i>
                                    <span> Slider <span class="badge badge-success badge-pill float-right">3</span></span>
                                </a>
                            </li>


                            <li>
                                <a href="{{ route('admin.occupations') }}" class="waves-effect">
                                    <i class="dripicons-meter"></i>
                                    <span> Occupation <span class="badge badge-success badge-pill float-right">3</span></span>
                                </a>
                            </li>
                            <li>
                                <a href="{{ route('admin.ethnicitys') }}" class="waves-effect">
                                    <i class="dripicons-meter"></i>
                                    <span> Ethnicity <span class="badge badge-success badge-pill float-right">3</span></span>
                                </a>
                            </li>
                            <li>
                                <a href="{{ route('admin.assets') }}" class="waves-effect">
                                    <i class="dripicons-meter"></i>
                                    <span> Asset <span class="badge badge-success badge-pill float-right">3</span></span>
                                </a>
                            </li>


                            <li>
                                <a href="{{ route('admin.album.all') }}" class="waves-effect">
                                    <i class="dripicons-meter"></i>
                                    <span> Album <span class="badge badge-success badge-pill float-right">3</span></span>
                                </a>
                            </li>

                            <li>
                                <a href="{{ route('admin.grade.all') }}" class="waves-effect">
                                    <i class="dripicons-meter"></i>
                                    <span> Grade <span class="badge badge-success badge-pill float-right">3</span></span>
                                </a>
                            </li>

                            <li>
                                <a href="{{ route('admin.exams') }}" class="waves-effect">
                                    <i class="dripicons-meter"></i>
                                    <span> Exam <span class="badge badge-success badge-pill float-right">3</span></span>
                                </a>
                            </li>

                            <li>
                                <a href="{{ route('admin.subject.all') }}" class="waves-effect">
                                    <i class="dripicons-meter"></i>
                                    <span> Subject <span class="badge badge-success badge-pill float-right">3</span></span>
                                </a>
                            </li>

                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="dripicons-user-id"></i> <span> Staff Setup </span> <span class="menu-arrow float-right"><i class="mdi mdi-chevron-right"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="{{ route('admin.staff_type.all') }}">Staff Types</a></li>
                                    <li><a href="{{ route('admin.staff.all') }}">Staffs</a></li>
                                    <li><a href="{{ route('admin.staffbygrade.all') }}">Staff-Class-Subject</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="{{ route('admin.committees') }}" class="waves-effect">
                                    <i class="dripicons-meter"></i>
                                    <span> Committee <span class="badge badge-success badge-pill float-right">3</span></span>
                                </a>
                            </li>

                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="dripicons-article"></i> <span>Bulletin</span> <span class="menu-arrow float-right"><i class="mdi mdi-chevron-right"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="{{ route('admin.event.all') }}">Events</a></li>
                                    <li><a href="{{ route('admin.staff.all') }}">News</a></li>
                                    <li><a href="{{ route('admin.notice.all') }}">Notice</a></li>
                                    <li><a href="{{ route('admin.tender.all') }}">Tender</a></li>
                                </ul>
                            </li>

                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="dripicons-article"></i> <span>About</span> <span class="menu-arrow float-right"><i class="mdi mdi-chevron-right"></i></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="{{ route('admin.basic.info') }}">Basic Info</a></li>
                                    <li><a href="{{ route('admin.about') }}">About</a></li>
                                    <li><a href="{{ route('admin.history') }}">History</a></li>
                                    <li><a href="{{ route('admin.welcome.message') }}">Welcome Message</a></li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div> <!-- end sidebarinner -->
</div>
<!-- Left Sidebar End -->
