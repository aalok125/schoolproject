<div class="footer ">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="img-logo-container ">
                    <img
                            src="{{ asset(isset($settings['logo']) ? $settings['logo'] : 'front/assets/images/school-logo.png') }}"
                            class="img-fluid"
                            alt=""
                    />
                </div>
                <div class="company_name text-center">{{ isset($settings['name']) ? $settings['name'] : "High School" }} </div>
                <div class="company_address">{{ isset($settings['address']) ? $settings['address'] : "Jamal, Kathmandu" }}</div>
            </div>

            <div class="col-lg-3 col-md-6 ">
                <div class="link-container">
                    <div class="link-title">Important Links</div>
                    <ul>
                        <li>
                            <a href="{{ route('front.home') }}">Home</a>
                        </li>
                        <li>
                            <a href="{{ route('front.about') }}">About Us</a>
                        </li>
                        <li>
                            <a href="{{ route('front.contact') }}">Contact</a>
                        </li>
                        <li>
                            <a href="{{ route('front.gallery') }}">Gallery</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 ">
                <div class="link-container">
                    <div class="link-title">Similar Sites</div>
                    <ul>
                        <li>
                            <a href=""
                            >Similar sites like Durbar High School will be here</a
                            >
                        </li>
                        <li>
                            <a href=""
                            >Similar sites like Durbar High School will be here</a
                            >
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 ">
                <div class="link-container">
                    <div class="link-title">Downloads</div>
                    <ul>
                        <li>
                            <a href="">Here Comes Link 1</a>
                        </li>
                        <li>
                            <a href="">Here Comes Link 2</a>
                        </li>
                        <li>
                            <a href="">Here Comes Link 3</a>
                        </li>
                        <li>
                            <a href="">Here Comes Link 4</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="top-footer">
            <form action="">
                <input
                        type="email"
                        class="form-control"
                        placeholder="Your Email Address"
                />
                <input
                        type="submit"
                        class="btn btn-primary form-control"
                        value="Subscribe"
                />
            </form>
            <div class="social-icon">
                <ul>
                    <li>
                        <a href="" style=" background: #3b5a9b">
                            <i class="fab fa-facebook"></i>
                        </a>
                    </li>
                    <li>
                        <a href="" style="background: #2a98ef">
                            <i class="fab fa-twitter"></i>
                        </a>
                    </li>
                    <li>
                        <a href="" style="background: #db2814">
                            <i class="fab fa-google-plus"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <hr style="background: #dbdbdb" />
        <div class="bottom-footer d-flex justify-content-between">
            <div class="copywrite">
                Copyright &copy; 2020 {{ isset($settings['name']) ? $settings['name'] : "High School" }}. All Rights Reserved.
            </div>
            <ul class="privacy-link d-flex justify-content-between">
                <li>
                    <a href=""> Privacy |</a>
                </li>
                <li>
                    <a href=""> Disclaimer |</a>
                </li>
                <li>
                    <a href=""> Copyright </a>
                </li>
            </ul>
        </div>
    </div>
</div>
