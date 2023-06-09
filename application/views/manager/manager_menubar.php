<aside class="left-sidebar">
            <div class="scroll-sidebar">
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                          <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Personal</span></li>
                          <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('manager-dashboard') ?>" aria-expanded="false"><i class="fa-solid fa-house"></i><span class="hide-menu">Dashboard </span></a></li>
                        
                          <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Today's Report</span></li>
												  <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('manager-leave-dashboard') ?>" aria-expanded="false"><i class="fa-solid fa-gauge"></i><span class="hide-menu">Today's Report</span></a></li>                          
                           
                          <?php if ($this->session->userdata('email') == 'hr@noorisys.com') { ?>

                          <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Leave History</span></li>
												  <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('manager-leave-history') ?>" aria-expanded="false"><i class="m-r-10 mdi mdi-restore"></i><span class="hide-menu">Leave History</span></a></li>
                          <?php } ?>
                          
                          <?php if ($this->session->userdata('email') != 'hr@noorisys.com') { ?>
                              <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Reports</span></li>
                              <li class="sidebar-item dropdown"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="fa-solid fa-file"></i><span class="hide-menu">Reports</span></a>
                                  <ul aria-expanded="false" class="collapse first-level">
                                    <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Latest Reports</span></li>
                                    <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('manager-latest-report') ?>" aria-expanded="false"><i class="icon-File-HorizontalText"></i><span class="hide-menu">Latest Reports</span></a></li>

                                    <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">My Reports</span></li>
                                    <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('manager-report-history') ?>" aria-expanded="false"><i class="icon-File-HorizontalText"></i><span class="hide-menu">My Reports</span></a></li>
                                    
                                    <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Developer Reports</span></li>
                                    <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('manager-developer-report') ?>" aria-expanded="false"><i class="icon-File-HorizontalText"></i><span class="hide-menu">Developer Reports</span></a></li>
                                  
                                    <?php if ($this->session->userdata('users_group_id') != '13') { ?>
                                      <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">TL Reports</span></li>
                                      <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('manager-tl-report') ?>" aria-expanded="false"><i class="icon-File-HorizontalText"></i><span class="hide-menu">TL Reports</span></a></li>
                                    <?php } ?>
                                  </ul>
                           <?php } ?>

                          <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Requested</span></li>
                          <li class="sidebar-item dropdown"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="fa-solid fa-list"></i><span class="hide-menu">Requested</span></a>
                            <ul aria-expanded="false" class="collapse first-level">
                                <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Requested OT</span></li>
                                <li class="sidebar-item mega-dropdown"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('manager-requested-ot') ?>" aria-expanded="false"><i class="fa-solid fa-list"></i><span class="hide-menu">OT</span></a></li>
                                  <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Requested Leave</span></li>
                                  <li class="sidebar-item mega-dropdown"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('manager-requested-leave') ?>" aria-expanded="false"><i class="fa-solid fa-list"></i><span class="hide-menu">Leave</span></a></li>
                            </ul>

                         <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Accepted</span></li>
                         <li class="sidebar-item dropdown"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="fa-solid fa-list"></i><span class="hide-menu">Accepted</span></a>
                           <ul aria-expanded="false" class="collapse first-level">
                                <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Accepted OT</span></li>
                                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('manager-accepted-ot') ?>" aria-expanded="false"><i class="icon-File-HorizontalText"></i><span class="hide-menu">OT</span></a></li>
                                <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Accepted Leave</span></li>
                                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('manager-accepted-leave') ?>" aria-expanded="false"><i class="icon-File-HorizontalText"></i><span class="hide-menu">Leave</span></a></li>
                           </ul>
                        
                         <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Rejected</span></li>
                         <li class="sidebar-item dropdown"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="fa-solid fa-list"></i><span class="hide-menu">Rejected</span></a>
                           <ul aria-expanded="false" class="collapse first-level">
                               <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">OT</span></li>
                               <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('manager-rejected-ot') ?>" aria-expanded="false"><i class="icon-File-HorizontalText"></i><span class="hide-menu">OT</span></a></li>
						                   <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Leave</span></li>
                               <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('manager-rejected-leave') ?>" aria-expanded="false"><i class="icon-File-HorizontalText"></i><span class="hide-menu">Leave</span></a></li>
                           </ul> 
                          
                    </ul>
                </nav>
            </div>
        </aside>