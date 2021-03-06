@include('admin.layout.header')
<!-- if new message toggle title  -->
<span id="page_name" style="display:none">Add Plans</span>
<title id="title">Add Plans</title>

<!-- Custom CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.css" />
  <link href="{{ asset('adminfolder/assets/extra-libs/calendar/calendar.css') }}" rel="stylesheet" />
<div class="container-fluid">
    <!-- ============================================================== -->
    <!-- Start Page Content -->
    <!-- ============================================================== -->
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="">
                    <div class="row">
                        <div class="col-lg-3 border-right p-r-0">
                            <div class="card-body border-bottom">
                                <h4 class="card-title m-t-10">Add Plans  &  Events</h4>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div id="calendar-events" class="" >
                                          <div class="todo-widget scrollable" style="height:501px;">
                                              <ul class="list-task todo-list list-group m-b-0" data-role="tasklist">

                                    @if ($Events )
                                        @foreach ($Events  as $ev)

                         <li class="list-group-item todo-item" data-role="task" id="Checked{{$ev->id}}">
                             <div class="custom-control custom-checkbox">
                               <i class="fa fa-circle text-info"></i> <span class=" todo-desc" >{{$ev->title}}</span>
                                        <!-- today-->
                                   @if ($ev->start->toDateString() == today()->toDateString())
                                    <span class=" badge badge-pill badge-danger float-right">today</span>
                                         <!-- tomorrow-->
                                    @elseif ($ev->start->toDateString() == now()->tomorrow()->toDateString())
                                     <span class=" badge badge-pill badge-primary float-right">Tomorrow</span>
                                         <!-- yesterday-->
                                     @elseif ($ev->start->toDateString() == now()->yesterday()->toDateString())
                                      <span class=" badge badge-pill badge-info float-right">Yesterday</span>
                                        <!-- date with ago-->
                                     @elseif ($ev->start->toDateString() < now()->toDateString())
                                     <span class=" badge badge-pill badge-danger float-right">{{$ev->start->diffForHumans()}}</span>
                                     @else
                                      <!-- date without ago-->
                                     <span class=" badge badge-pill badge-warning float-right">{{$ev->start->diffForHumans(null,true)}}</span>
                                     @endif

                                       </label>
                                      </div>
                                <div class=" item-date"> Start In: {{$ev->start->format('dD  m, Y')}}.<br>End In: {{$ev->end->format('dD  m, Y')}}.</div>

                                  </li>

                                @endforeach
                            @endif
                               </ul>
                               </div>

                          </div>
                              </div>
                          </div>
                      </div>
                  </div>
                        <div class="col-lg-9">
                            <div class="card-body b-l calender-sidebar">
                              <div class="response"></div>
                              <div id='calendar'></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>




    <!-- ============================================================== -->
    <!-- End PAge Content -->
    <!-- ============================================================== -->
</div>
@include('admin.layout.footer')


<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js" integrity="sha256-4iQZ6BVL4qNKlQ27TExEhBN1HFPvAvAMbFavKKosSWQ=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.js"></script>
<script src="{{asset('js/bootpopup.js')}}"></script>

<script>
  $(document).ready(function () {
  var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
      //  var SITEURL = "{{url('/admin/')}}";
        $.ajaxSetup({
          headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
          }
        });



          // initialize the calendar
          // -----------------------------------------------------------------

        var calendar = $('#calendar').fullCalendar({
            editable: true,
            events: <?php echo json_encode($Events); ?>,
            displayEventTime: true,
            editable: true,
            //eventColor: '#378006',
            eventRender: function (event, element, view) {
                if (event.allDay === 'true') {
                    event.allDay = true;
                } else {
                    event.allDay = false;
                }
            },
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },

            selectable: true,
            selectHelper: true,
            Boolean, default: true,
          /*  eventDrop: function(info) {
              alert(info.event.title + " was dropped on " + info.event.start.toISOString());

              if (!confirm("Are you sure about this change?")) {
                info.revert();
              }
            },*/
            select: function (start, end, allDay) {

              var title = prompt('Event Title:');//bootpopup.prompt("Text", null, "Event Title:");

                if (title) {
                    var start = $.fullCalendar.formatDate(start, "Y-MM-DD HH:mm:ss");
                    var end = $.fullCalendar.formatDate(end, "Y-MM-DD HH:mm:ss");

                    $.ajax({
                        url: "{{ route('admin.fullcalendar_create') }}",
                        data:  {title:title, start:start ,end:end ,_token: CSRF_TOKEN},
                        method: "POST",
                        success: function (data) {
                          //console.log(data);
                            //displayMessage("Added Successfully");

                            //reload after create
                            location.reload();
                            //$('$calendar-events').append(Events);
                            //alert('asdas');

                        }
                    });
                    calendar.fullCalendar('renderEvent',
                            {
                                title: title,
                                start: start,
                                end: end,
                                allDay: allDay
                            },true

                            );

                }

                calendar.fullCalendar('unselect');

            },

          eventDrop: function (event, delta) {
                        var start = $.fullCalendar.formatDate(event.start, "Y-MM-DD HH:mm:ss");
                        var end = $.fullCalendar.formatDate(event.end, "Y-MM-DD HH:mm:ss");
                        $.ajax({
                            url: "{{ route('admin.fullcalendar_update') }}",
                            data: {id:event.id ,title:event.title, start:start ,end:end},
                            method: "post",
                            success: function (response) {
                                //displayMessage("Updated Successfully");
                                //reload after Updated
                                  location.reload();
                                  alert("Updated Successfully");
                            }
                        });

                    },
            eventClick: function (Events) {
                var deleteMsg = confirm("Do you really want to delete?");
                if (deleteMsg) {
                    $.ajax({
                        method: "post",
                        url: "{{ route('admin.fullcalendar_destroy') }}",
                        data: {id:Events.id},
                        success: function (response) {
                            if(parseInt(response) > 0) {
                                $('#calendar').fullCalendar('removeEvents', Events.id);
                                //displayMessage("Deleted Successfully");

                                //reload after Deleted
                                  location.reload();
                                  //alert("Deleted Successfully");
                            }
                        }
                    });

                }
            }

        });
  });

  function displayMessage(message) {
    $(".response").html("<div class='success'>"+message+"</div>");
    setInterval(function() { $(".success").fadeOut(); }, 1000);
  }
</script>
