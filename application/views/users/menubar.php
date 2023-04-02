<aside class="left-sidebar">
            <div class="scroll-sidebar">
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Personal</span></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('user-dashboard') ?>" aria-expanded="false"><i class="icon-Car-Wheel"></i><span class="hide-menu">Dashboard </span></a></li>

                        <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Add </span></li>
                        <li class="sidebar-item dropdown"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="icon-Duplicate-Window"></i><span class="hide-menu">Add</span></a>
                                <ul aria-expanded="false" class="collapse first-level">
                                    <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Add OT</span></li>
                                    <li class="sidebar-item dropdown"> <a class="sidebar-link two-column waves-effect waves-dark" href="<?= base_url('add-ot') ?>" aria-expanded="false"><i class="icon-Box-withFolders"></i><span class="hide-menu">OT</span></a></li>
                                    <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Add Leave</span></li>
                                    <li class="sidebar-item dropdown"> <a class="sidebar-link two-column waves-effect waves-dark" href="<?= base_url('add-leave') ?>" aria-expanded="false"><i class="icon-Box-withFolders"></i><span class="hide-menu">Leave</span></a></li>
                                </ul>

                        <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Requested</span></li>
                        <li class="sidebar-item dropdown"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="icon-Duplicate-Window"></i><span class="hide-menu">Requested</span></a>
                        <ul aria-expanded="false" class="collapse first-level">
                                <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Requested OT</span></li>
                                <li class="sidebar-item mega-dropdown"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('requested-ot') ?>" aria-expanded="false"><i class="icon-Duplicate-Window"></i><span class="hide-menu">OT</span></a></li>
                                <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Requested Leave</span></li>
                                <li class="sidebar-item mega-dropdown"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('requested-leave') ?>" aria-expanded="false"><i class="icon-Duplicate-Window"></i><span class="hide-menu">Leave</span></a></li>
                        </ul>

                        <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Accepted</span></li>
                        <li class="sidebar-item dropdown"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="icon-Duplicate-Window"></i><span class="hide-menu">Accepted</span></a>
                        <ul aria-expanded="false" class="collapse first-level">
                                <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Accepted OT</span></li>
                                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('accepted-ot') ?>" aria-expanded="false"><i class="icon-File-HorizontalText"></i><span class="hide-menu">OT</span></a></li>
                                <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Accepted Leave</span></li>
                                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('accepted-leave') ?>" aria-expanded="false"><i class="icon-File-HorizontalText"></i><span class="hide-menu">Leave</span></a></li>
                       </ul>

						<li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Rejected OT</span></li>
                        <li class="sidebar-item dropdown"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="icon-Duplicate-Window"></i><span class="hide-menu">Rejected</span></a>
                                <ul aria-expanded="false" class="collapse first-level">
                                <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Rejected OT</span></li>
                                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('rejected-ot') ?>" aria-expanded="false"><i class="icon-File-HorizontalText"></i><span class="hide-menu">OT</span></a></li>
                                <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Rejected OT</span></li>
                                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('rejected-leave') ?>" aria-expanded="false"><i class="icon-File-HorizontalText"></i><span class="hide-menu">Leave</span></a></li>
                        </ul>

                        <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Reports</span></li>
                        <li class="sidebar-item dropdown"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="icon-Duplicate-Window"></i><span class="hide-menu">Reports</span></a>
                                <ul aria-expanded="false" class="collapse first-level">
                                <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Latest Report</span></li>
                                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('latest-report') ?>" aria-expanded="false"><i class="icon-File-HorizontalText"></i><span class="hide-menu">Latest Report</span></a></li>
                                <li class="nav-small-cap"><i class="mdi mdi-dots-horizontal"></i> <span class="hide-menu">Report History</span></li>
                                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark" href="<?= base_url('report-history') ?>" aria-expanded="false"><i class="icon-File-HorizontalText"></i><span class="hide-menu">Report History</span></a></li>
                        </ul>
                    </ul>
                </nav>
            </div>
        </aside>