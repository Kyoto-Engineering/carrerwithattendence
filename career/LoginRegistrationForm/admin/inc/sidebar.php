 <ul class="sidebar-menu" data-widget="tree">
        <?php 
                $access = Session::get('adminRole');
                if ($access == '0') { ?>
        <li class="header">MAIN NAVIGATION</li>
        <li class="active treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Manage Job Portal</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="createjob_title.php"><i class="fa fa-circle-o"></i> Create A New Job Title</a></li>
            <li><a href="createjob.php"><i class="fa fa-circle-o"></i>Create New Job Advert</a></li>
            
            <li><a href="joblist.php"><i class="fa fa-circle-o"></i>Post A Job</a></li>
            
             <li><a href="applied_job.php"><i class="fa fa-circle-o"></i>Shortlist a Candidate</a></li>
            <li><a href="interview_schedule.php"><i class="fa fa-circle-o"></i>Select An Interview Schedule</a></li>
            <li><a href="reschedule.php"><i class="fa fa-circle-o"></i>Re-Schedule Request</a></li>
            <li><a href="attendence_sheet.php"><i class="fa fa-circle-o"></i>Attendence Sheet</a></li>
            <li><a href="mark_attendance.php"><i class="fa fa-circle-o"></i>Mark Attendence</a></li>
             <li><a href="absent_attendance.php"><i class="fa fa-circle-o"></i>Interview Defiants</a></li>
            <!--<li><a href="create_specialization.php"><i class="fa fa-circle-o"></i>Select For Attatchment</a></li>-->
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-eye" aria-hidden="true"></i>
            <span>Peripheral Management</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="view_job_list.php"><i class="fa fa-circle-o"></i>Edit Job Title</a></li>
            <li class=""><a href="degree_list.php"><i class="fa fa-circle-o"></i>Degree's</a></li>
            <li><a href="depertment_list.php"><i class="fa fa-circle-o"></i> Depertments</a></li>
            <li><a href="specialization_list.php"><i class="fa fa-circle-o"></i> Specializations</a></li>
          </ul>
        </li>
       
        <li class="treeview">
          <a href="#">
            <i class="fa fa-book" aria-hidden="true"></i>
            <span>Manage</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          <li class="active"><a href="schedule_create.php"><i class="fa fa-circle-o"></i> Create Schedule</a></li>
            <li class="active"><a href="create_degree.php"><i class="fa fa-circle-o"></i> Create Degree</a></li>
            <li><a href="create_department.php"><i class="fa fa-circle-o"></i>Create Depertment</a></li>
            <li><a href="create_specialization.php"><i class="fa fa-circle-o"></i>Create Specialization</a></li>
          </ul>
        </li>

        <!--<li class="treeview">
          <a href="#">
            <i class="fa fa-users" aria-hidden="true"></i>
            <span>Applicant List</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="applied_job.php"><i class="fa fa-circle-o"></i>Applied Jobs</a></li>
            <li><a href="pages/charts/#"><i class="fa fa-circle-o"></i> Depertments</a></li>
            <li><a href="pages/charts/#"><i class="fa fa-circle-o"></i> Job List</a></li>
            <li><a href="pages/charts/#"><i class="fa fa-circle-o"></i> Specializations</a></li>
          </ul>
        </li>-->
         <li class="treeview">
          <a href="#">
            <i class="fa fa-eye" aria-hidden="true"></i>
            <span>All Registerd People</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="registerd_list.php"><i class="fa fa-circle-o"></i>People List</a></li>
            

            
          </ul>
        </li>
       
       <li class="treeview">
          <a href="#">
            <i class="fa fa-eye" aria-hidden="true"></i>
            <span>Steps</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="step0.php"><i class="fa fa-circle-o"></i>Step 0( Just Registered )</a></li>
            <li><a href="applied_job.php"><i class="fa fa-circle-o"></i>Step 1( Just Applied )</a></li>
            <li><a href="step_2.php"><i class="fa fa-circle-o"></i>Step 2( Resume Status )</a></li>
            <li><a href="step_3.php"><i class="fa fa-circle-o"></i>Step 3( Interview Status )</a></li>
            <li><a href="step_4.php"><i class="fa fa-circle-o"></i>Step 4( Perticipation Status )</a></li>
            <li><a href="step_5.php"><i class="fa fa-circle-o"></i>Step 5( Rescheduled Status )</a></li>
           <li><a href="step_6.php"><i class="fa fa-circle-o"></i>Step 6( Atendence Status )</a></li>
           <li><a href="step_7.php"><i class="fa fa-circle-o"></i>Step 7(Only Participated<br/> Candidate List)</a></li>
           <li><a href="step_8.php"><i class="fa fa-circle-o"></i>Step 8(Only Pre-Selected<br/> Candidate List)</a></li>
           <li><a href="step_9.php"><i class="fa fa-circle-o"></i>Step 9(Only Selected<br/> Candidate List)</a></li>
           <li><a href="step_10.php"><i class="fa fa-circle-o"></i>Step 10(Only Joined<br/> Candidate List)</a></li>

            
          </ul>
        </li>
        
        
       <li class="treeview">
          <a href="#">
            <i class="fa fa-eye" aria-hidden="true"></i>
            <span>Log Record</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="signup_record.php"><i class="fa fa-circle-o"></i>Sign up Record</a></li>
            <li><a href="signin_record.php"><i class="fa fa-circle-o"></i>Sign in Record</a></li>
            


            
          </ul>
        </li>
         <!---interview management start-->
         <li class="treeview">
          <a href="#">
            <i class="fa fa-eye" aria-hidden="true"></i>
            <span>Interview Management</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          <li><a href="create_boardname.php"><i class="fa fa-circle-o"></i>Create Board Name</a></li>
            <li><a href="create_User.php"><i class="fa fa-circle-o"></i>Create Interviewer</a></li>
             <li><a href="create_criteria.php"><i class="fa fa-circle-o"></i>Create Criteria</a></li>
            <li><a href="interview_list.php"><i class="fa fa-circle-o"></i>Create Board</a></li>
            <li><a href="view_board.php"><i class="fa fa-circle-o"></i>Show Board</a></li>
            <li><a href="applicant_list.php"><i class="fa fa-circle-o"></i>Applicant List</a></li>
            
          </ul>
        </li> <!---interview management end-->

      <!---interview panel start-->
        
        <li class="treeview">
          <a href="#">
            <i class="fa fa-eye" aria-hidden="true"></i>
            <span>Interview Panel</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
         <ul class="treeview-menu">
            <li><a href="create_User.php"><i class="fa fa-circle-o"></i>Create Interviewer</a></li>
            <li><a href="interview_list.php"><i class="fa fa-circle-o"></i>Create Board</a></li>
            <li><a href="view_board.php"><i class="fa fa-circle-o"></i>Show Board</a></li>
            <!--<li><a href="applicant_list.php"><i class="fa fa-circle-o"></i>Applicant List</a></li>-->
            
          </ul>
        </li>
         <li class="treeview">
          <a href="#">
            <i class="fa fa-eye" aria-hidden="true"></i>
            <span>Gap Analysis</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
           
            <li><a href="gap_analysis.php"><i class="fa fa-circle-o"></i>See Gap analysis</a></li>
             <li><a href="gap_insert.php"><i class="fa fa-circle-o"></i>Insert Gap </a></li>
             <li><a href="admin_gap.php"><i class="fa fa-circle-o"></i>Insert Gap for All </a></li>
            

            
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-eye" aria-hidden="true"></i>
            <span>Dailly Attendance</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          <li><a href="sheet.php"><i class="fa fa-circle-o"></i>Attendence Sheet</a></li>
          <li><a href="latecome.php"><i class="fa fa-circle-o"></i>Latecoming Sheet</a></li>
            <li><a href="create_User.php"><i class="fa fa-circle-o"></i>User Activation</a></li>
            <li><a href="employeelist.php"><i class="fa fa-circle-o"></i>Employee List</a></li>
            <li><a href="insertph.php"><i class="fa fa-circle-o"></i>Create PH Calender</a></li>
            <li><a href="insertip.php"><i class="fa fa-circle-o"></i>Insert IP</a></li>
            <li><a href="gradesheet.php"><i class="fa fa-circle-o"></i>View GradeSheet</a></li>
            <li><a href=""><i class="fa fa-circle-o"></i>Time Panel</a></li>
            <li><a href="latereason.php"><i class="fa fa-circle-o"></i>Insert late Reason</a></li>
            <li><a href="addestat.php"><i class="fa fa-circle-o"></i>Add Employee Status</a></li>
<!--             <li><a href="view_board.php"><i class="fa fa-circle-o"></i>Show Board</a></li>
            <li><a href="applicant_list.php"><i class="fa fa-circle-o"></i>Applicant List</a></li> -->
            
          </ul>
        </li>


        
        <!---interview panel start-->

        <?php }else{?>
      
       <!---interview panel start-->
        
        <li class="treeview">
          <a href="#">
            <i class="fa fa-eye" aria-hidden="true"></i>
            <span>Interview Panel</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="applicant_list.php"><i class="fa fa-circle-o"></i>Applicant List</a></li>
            
          </ul>
        </li>
        
        <!---interview panel start-->
 <!---interview management end-->

     <?php } ?>
        
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>