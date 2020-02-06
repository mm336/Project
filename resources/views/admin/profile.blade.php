@include('admin.layout.header')
<!-- if new message toggle title  -->
<span id="page_name" style="display:none">{{$profile_data->name}}-Profile</span>
<title id="title">{{$profile_data->name}}-Profile</title>
<!-- VENDOR CSS -->
<link rel="stylesheet" href="{{ asset('adminfolder/profile/vendor/font-awesome/css/font-awesome.min.css') }}">
<link rel="stylesheet" href="{{ asset('adminfolder/profile/vendor/linearicons/style.css') }}">
<!-- MAIN CSS -->
<link rel="stylesheet" href="{{ asset('adminfolder/profile/css/main.css') }}">
<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
<link rel="stylesheet" href="{{ asset('adminfolder/profile/css/demo.css') }}">
<!-- GOOGLE FONTS -->

<style media="screen">
#navimg{
  height:51px;
  width:51px;
}
#m{

  position: relative;bottom: 65px;
}
</style>

<div class="container-fluid">
  <div class="main">
    <!-- MAIN CONTENT -->
    <div class="main-content">
      <div class="container-fluid">
        <div class="panel panel-profile">
          <div class="clearfix">
            <!-- LEFT COLUMN -->
            <div class="profile-left">
              <!-- PROFILE HEADER -->
              <div class="profile-header">

                <div>
                  <div class="avatar z-depth-1-half mb-4">
                    @if ( file_exists('img/admin_img/'.Auth::guard('admin')->user()->img))
                    <img id="m"  src="{{asset('img/admin_img/'.$profile_data->profile_admins_id()->first()->img)}}" class="rounded-circle" alt="admin avatar image" width="50%">
                     @else
                     <img id="m"  src="{{$profile_data->profile_admins_id()->first()->img}}" class="rounded-circle" alt="admin avatar image" width="35%">
                     @endif
              </div>
              <div class="text-center" style="position:relative;bottom:70px;">

                <h3 class="mb-3 font-weight-bold text-dark"><strong>{{$profile_data->name}}</strong></h3>
                           <!-- check if email blocked -->
                @if ($profile_data->profile_admins_id()->first()->blocked_date)
              <h6 class="font-weight-bold blue-text mb-4"> <i class="fas fa-circle text-danger"> blocked by Admin available at: {{$profile_data->profile_admins_id()->first()->blocked_date->diffForHumans()}}</i></h6>
              <!-- check if email online in Illuminate\Foundation\Auth\AuthenticatesUsers attempt function
              give in admin/auth/logincontroller in logout the now()time to know when admin loggedOut
              and if hi login updata the column will back to null -->
              @elseif ( !$profile_data->profile_admins_id()->first()->online_at)
                <h6 class=" online-status status-available font-weight-bold blue-text mb-4 text-primary">online</h6>
                @else
                <i class="fas fa-circle text-danger"> Last login at: {{$profile_data->profile_admins_id()->first()->online_at->diffForHumans(null,true)}}</i>
                  @endif

              </div>

                </div>

                <div class="profile-stat" style="position:relative;bottom:70px;">
                  <div class="row">
                    <div class="col-md-4 stat-item">
                <!-- every time admin created posts or videos increment projects_count by 1-->
            <h3>{{$profile_data->profile_admins_id()->first()->projects_count}}</h3> <span>Projects</span>
                    </div>
                      <!-- Awards-->
                    <div class="col-md-4 stat-item">
              @if ($profile_data->profile_admins_id()->first()->superadmin || $profile_data->profile_admins_id()->first()->points > 70)
                    <h3>  ∞ </h3> <span>Awards</span>
                    @elseif ($profile_data->profile_admins_id()->first()->points < 40 and $profile_data->profile_admins_id()->first()->points >= 20)
                   <h3>  1 </h3> <span>Awards</span>
                   @elseif ($profile_data->profile_admins_id()->first()->points < 55 and $profile_data->profile_admins_id()->first()->points >= 40 )
                   <h3>  2 </h3> <span>Awards</span>
                   @elseif ($profile_data->profile_admins_id()->first()->points < 70 and $profile_data->profile_admins_id()->first()->points >= 55)
                   <h3>  3 </h3> <span>Awards</span>
                   @elseif ($profile_data->profile_admins_id()->first()->points < 20)
                   <h3> 0 </h3> <span>Awards</span>
               @endif
                    </div>
                    <div class="col-md-4 stat-item">
              <!-- Every  admins activity , he will get points, whether created posts or video or else-->
          <h3>{{$profile_data->profile_admins_id()->first()->points}}</h3> <span>Points</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- END PROFILE HEADER -->
              <!-- PROFILE DETAIL -->
              <div class="profile-detail" style="position:relative;bottom:70px;">
                <div class="profile-info">
                  <h4 class="heading"> Info</h4>
                  <ul class="list-unstyled list-justify">
                    @if ($profile_data->birth_at)
                    <li>Birth Date <span>{{$profile_data->birth_at->format('d M , Y')}}</span></li>
                    @else
                    <li>Birth Date <span></span></li>
                    @endif
                    <li>Mobile <span>{{$profile_data->profile_phone}}</span></li>
                    <li>Job <span>{{$profile_data->job}}</span></li>
                    <li>Website <span><a href="{{$profile_data->Website}}">{{$profile_data->Website}}</a></span></li>
                    <li>Facebook <span><a href="{{$profile_data->facebook}}">{{$profile_data->facebook}}</a></span></li>
                  </ul>
                </div>

          <!--  never show this btn to any one-->
               @if ($profile_data->admins_id == auth()->guard('admin')->user()->id)
                <div class="text-center"><a href="{{route('admin.setting')}}" class="btn btn-primary">Edit Profile</a></div>
              @endif
              </div>
              <!-- END PROFILE DETAIL -->
            </div>
            <!-- END LEFT COLUMN -->
            <!-- RIGHT COLUMN -->
            <div class="profile-right">
              <h4 class="heading">{{$profile_data->name}} Awards</h4>
              <!-- AWARDS -->
              <div class="awards">
                <div class="row">
                  @if ($profile_data->profile_admins_id()->first()->superadmin || $profile_data->profile_admins_id()->first()->points > 70 )
                  <div class="col-md-3 col-sm-6">
                    <div class="award-item">
                      <div class="hexagon">
                        <span class="lnr lnr-sun award-icon"></span>
                      </div>
                      <span>Most Bright Idea</span>
                    </div>
                  </div>

                  <div class="col-md-3 col-sm-6">
                    <div class="award-item">
                      <div class="hexagon">
                        <span class="lnr lnr-clock award-icon"></span>
                      </div>
                      <span>Most On-Time</span>
                    </div>
                  </div>

                  <div class="col-md-3 col-sm-6">
                    <div class="award-item">
                      <div class="hexagon">
                        <span class="lnr lnr-magic-wand award-icon"></span>
                      </div>
                      <span>Problem Solver</span>
                    </div>
                  </div>

                  <div class="col-md-3 col-sm-6">
                    <div class="award-item">
                      <div class="hexagon">
                        <span class="lnr lnr-heart award-icon"></span>
                      </div>
                      <span>Most Loved</span>
                    </div>
                  </div>

                  @elseif ($profile_data->profile_admins_id()->first()->points < 40 and $profile_data->profile_admins_id()->first()->points >= 20)
                  <div class="col-md-3 col-sm-6">
                    <div class="award-item">
                      <div class="hexagon">
                        <span class="lnr lnr-sun award-icon"></span>
                      </div>
                      <span>Most Bright Idea</span>
                    </div>
                  </div>
                 @elseif ($profile_data->profile_admins_id()->first()->points < 55 and $profile_data->profile_admins_id()->first()->points >= 40 )
                 <div class="col-md-3 col-sm-6">
                   <div class="award-item">
                     <div class="hexagon">
                       <span class="lnr lnr-sun award-icon"></span>
                     </div>
                     <span>Most Bright Idea</span>
                   </div>
                 </div>
                 <div class="col-md-3 col-sm-6">
                   <div class="award-item">
                     <div class="hexagon">
                       <span class="lnr lnr-clock award-icon"></span>
                     </div>
                     <span>Most On-Time</span>
                   </div>
                 </div>
                 @elseif ($profile_data->profile_admins_id()->first()->points < 70 and $profile_data->profile_admins_id()->first()->points >= 55)
                 <div class="col-md-3 col-sm-6">
                   <div class="award-item">
                     <div class="hexagon">
                       <span class="lnr lnr-sun award-icon"></span>
                     </div>
                     <span>Most Bright Idea</span>
                   </div>
                 </div>
                 <div class="col-md-3 col-sm-6">
                   <div class="award-item">
                     <div class="hexagon">
                       <span class="lnr lnr-clock award-icon"></span>
                     </div>
                     <span>Most On-Time</span>
                   </div>
                 </div>
                 <div class="col-md-3 col-sm-6">
                   <div class="award-item">
                     <div class="hexagon">
                       <span class="lnr lnr-magic-wand award-icon"></span>
                     </div>
                     <span>Problem Solver</span>
                   </div>
                 </div>
          @elseif ($profile_data->profile_admins_id()->first()->points < 20)
          <div class="col-md-3 col-sm-6">
            <div class="award-item">
              <div class="hexagon">
                <span></span>
              </div>
              <span>No Awards Yet</span>
            </div>
          </div>
             @endif
                </div>
                <div class="profile-info">
                  <h4 class="heading">About</h4>
                  <p>{{$profile_data->about}}</p>
                </div>
              </div>

              <!-- END AWARDS -->
              <!-- TABBED CONTENT -->
              <div class="custom-tabs-line tabs-line-bottom left-aligned">
                <ul class="nav" role="tablist">
                  <li class="active "><a href="#tab-bottom-left1" role="tab" data-toggle="tab" >Recent Activity</a></li>
                </ul>
              </div>
              <div class="tab-content">
                <div class="tab-pane fade in active" id="tab-bottom-left1">
                  <ul class="list-unstyled activity-timeline">
                    <!--<li>
                      <i class="fa fa-comment activity-icon"></i>
                      <p>Commented on post <a href="#">Prototyping</a> <span class="timestamp">2 minutes ago</span></p>
                    </li>-->
                    <li>
                      <i class="fa fa-cloud-upload activity-icon"></i>
                      <p>Uploaded new file <a href="#">Proposal.docx</a> to project <a href="#">New Year Campaign</a> <span class="timestamp">7 hours ago</span></p>
                    </li>
                    <li>
                      <i class="fa fa-plus activity-icon"></i>

                      <p>Added  <a href="#">{{$add_admin_by}} colleagues</a> to project repository.
                    </li>
                    <li>
                      <i class="fa fa-check activity-icon"></i>
                      <p>Finished 80% of all <a href="#">assigned tasks</a> <span class="timestamp">1 day ago</span></p>
                    </li>
                  </ul>
                  <div class="margin-top-30 text-center"><a href="#" class="btn btn-primary">See all activity</a></div>
                </div>


              </div>
              <!-- END TABBED CONTENT -->
            </div>
            <!-- END RIGHT COLUMN -->
          </div>
        </div>
      </div>
    </div>
    <!-- END MAIN CONTENT -->
  </div>
  </div>
  @include('admin.layout.footer')
  <script src="{{ asset('adminfolder/profile/scripts/klorofil-common.js') }}"></script>
