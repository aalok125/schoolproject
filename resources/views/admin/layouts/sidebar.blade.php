<!-- ========== Left Sidebar Start ========== -->
<div class="left side-menu">
    <button type="button" class="button-menu-mobile button-menu-mobile-topbar open-left waves-effect">
        <i class="ion-close"></i>
    </button>

    <div class="left-side-logo d-block d-lg-none">
        <div class="text-center">

            <a href="{{ url('admins/dashboard') }}" class="logo">
                @if(getAbout('logo'))
                    <img src="{{ asset('thumbnail/'.getAbout('logo')) }}" style="width: 70px;" alt="logo">
                @endif
            </a>
        </div>
    </div>

    <div class="sidebar-inner slimscrollleft">

        <div id="sidebar-menu">
            <ul>

                <li>
                    <a href="{{ url('admins/dashboard') }}" class="waves-effect">
                        <i class="dripicons-meter"></i>
                        <span> {{ getLanguage('dashboard') }} </span>
                    </a>
                </li>

                <li>
                    <a href="{{ route('admin.grade.students') }}" class="waves-effect">
                        <i class="dripicons-user-group"></i>
                        <span> {{ getLanguage('students') }} </span>
                    </a>
                </li>



                <li>
                    <a href="{{ route('admin.sliders') }}" class="waves-effect">
                        <i class="dripicons-meter"></i>
                        <span> {{ getLanguage('slider') }} </span>
                    </a>
                </li>


                <li>
                    <a href="{{ route('admin.occupations') }}" class="waves-effect">
                        <i class="dripicons-meter"></i>
                        <span> {{ getLanguage('occupation') }} </span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('admin.ethnicitys') }}" class="waves-effect">
                        <i class="dripicons-meter"></i>
                        <span> {{ getLanguage('ethnicity') }} </span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('admin.assets') }}" class="waves-effect">
                        <i class="dripicons-meter"></i>
                        <span> {{ getLanguage('asset') }} </span>
                    </a>
                </li>


                <li>
                    <a href="{{ route('admin.album.all') }}" class="waves-effect">
                        <i class="dripicons-meter"></i>
                        <span> {{ getLanguage('album') }} </span>
                    </a>
                </li>

                <li>
                    <a href="{{ route('admin.grade.all') }}" class="waves-effect">
                        <i class="dripicons-meter"></i>
                        <span> {{ getLanguage('grade') }} </span>
                    </a>
                </li>

                <li>
                    <a href="{{ route('admin.exams') }}" class="waves-effect">
                        <i class="dripicons-meter"></i>
                        <span> {{ getLanguage('exam') }} </span>
                    </a>
                </li>

                <li>
                    <a href="{{ route('admin.subject.all') }}" class="waves-effect">
                        <i class="dripicons-meter"></i>
                        <span> {{ getLanguage('subject') }} </span>
                    </a>
                </li>

                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="dripicons-user-id"></i> <span> {{ getLanguage('staff-setup') }} </span> <span class="menu-arrow float-right"><i class="mdi mdi-chevron-right"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('admin.staff_type.all') }}">{{ getLanguage('stafftype') }}</a></li>
                        <li><a href="{{ route('admin.staff.all') }}">{{ getLanguage('staff') }}</a></li>
                        <li><a href="{{ route('admin.staffbygrade.all') }}">{{ getLanguage('staffclasssubject') }}</a></li>
                    </ul>
                </li>
                <li>
                    <a href="{{ route('admin.committees') }}" class="waves-effect">
                        <i class="dripicons-meter"></i>
                        <span> {{ getLanguage('committee') }} </span>
                    </a>
                </li>

                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="dripicons-article"></i> <span>{{ getLanguage('cms') }}</span> <span class="menu-arrow float-right"><i class="mdi mdi-chevron-right"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('admin.event.all') }}">{{ getLanguage('events') }}</a></li>
                        <li><a href="{{ route('admin.news.all') }}">{{ getLanguage('news') }}</a></li>
                        <li><a href="{{ route('admin.notice.all') }}">{{ getLanguage('notice') }}</a></li>
                        <li><a href="{{ route('admin.tender.all') }}">{{ getLanguage('tender') }}</a></li>
                        <li><a href="{{ route('admin.scholarship.all') }}">{{ getLanguage('scholarship') }}</a></li>
                    </ul>
                </li>

                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="dripicons-article"></i> <span>{{ getLanguage('about') }}</span> <span class="menu-arrow float-right"><i class="mdi mdi-chevron-right"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('admin.basic.info') }}">{{ getLanguage('basic-info') }}</a></li>
                        <li><a href="{{ route('admin.about') }}">{{ getLanguage('about') }}</a></li>
                        <li><a href="{{ route('admin.history') }}">{{ getLanguage('history') }}</a></li>
                        <li><a href="{{ route('admin.welcome.message') }}">{{ getLanguage('message') }}</a></li>
                        <li><a href="{{ route('admin.testimonials') }}">{{ getLanguage('testimonial') }}</a></li>
                        <li><a href="{{ route('admin.about.student') }}">{{ getLanguage('student') }}</a></li>
                    </ul>
                </li>


                <li>
                    <a href="{{ route('admin.users') }}" class="waves-effect">
                        <i class="dripicons-meter"></i>
                        <span> {{ getLanguage('user') }} </span>
                    </a>
                </li>


                <li>
                    <a href="{{ route('admin.languages') }}" class="waves-effect">
                        <i class="dripicons-meter"></i>
                        <span> {{ getLanguage('language') }} </span>
                    </a>
                </li>

            </ul>
        </div>
        <div class="clearfix"></div>
    </div> <!-- end sidebarinner -->
</div>
<!-- Left Sidebar End -->
