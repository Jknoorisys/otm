<?php
defined('BASEPATH') OR exit('No direct script access allowed');


$route['default_controller'] = 'welcome/login_user';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

// Login Page Routing
$route['login'] = 'welcome/login_user';
$route['confirm-login'] = 'welcome/confirm_login';
$route['logout'] = 'welcome/logout';

// User OT Routing
$route['user-dashboard'] = 'user/dashboard';
$route['add-ot'] = 'user/add_ot';
$route['requested-ot'] = 'user/requested_ot';
$route['accepted-ot'] = 'user/accepted_ot';
$route['rejected-ot'] = 'user/rejected_ot';
$route['change-password'] = 'user/change_password';
$route['delete-ot/(:any)'] = 'user/delete/$1';

// Manager OT Routing
$route['manager-dashboard'] = 'manager/dashboard';
$route['manager-add-ot'] = 'manager/add_ot';
$route['manager-requested-ot'] = 'manager/requested_ot';
$route['manager-accepted-ot'] = 'manager/accepted_ot';
$route['manager-rejected-ot'] = 'manager/rejected_ot';
$route['accept-user-ot/(:any)'] = 'Manager/accept_user_ot/$1';
$route['reject-user-ot/(:any)'] = 'manager/reject_user_ot/$1';
$route['manager-change-password'] = 'manager/change_password';
$route['manager-delete-ot/(:any)'] = 'manager/delete_ot/$1';

// User Leave Routing
$route['get-days'] = 'User_Leave/get_days';
$route['add-leave-func'] = 'User_Leave/add_leave_func';
$route['add-leave'] = 'User_Leave/add_leave';
$route['requested-leave'] = 'User_Leave/requested_leave';
$route['accepted-leave'] = 'User_Leave/accepted_leave';
$route['rejected-leave'] = 'User_Leave/rejected_leave';
$route['delete-leave/(:any)'] = 'User_Leave/delete_leave/$1';

// Manager Leave Routing
$route['manager-get-days'] = 'Manager_Leave/get_days';
$route['manager-add-leave'] = 'Manager_Leave/add_leave';
$route['manager-requested-leave'] = 'Manager_Leave/requested_leave';
$route['manager-accepted-leave'] = 'Manager_Leave/accepted_leave';
$route['manager-rejected-leave'] = 'Manager_Leave/rejected_leave';
$route['accept-user-leave/(:any)'] = 'Manager_Leave/accept_user_leave/$1';
$route['reject-user-leave/(:any)'] = 'Manager_Leave/reject_user_leave/$1';
$route['manager-delete-leave/(:any)'] = 'Manager_Leave/manager_delete_leave/$1';
$route['manager-leave-dashboard'] = 'Manager_Leave/manager_leave_dashboard';
$route['get-user-balance-leave'] = 'Manager_Leave/getuserbalanceleave';

// User Manage Reports
$route['latest-report'] = 'User_Report/latestReport';
$route['add-review'] = 'User_Report/AddReview';
$route['report-history'] = 'User_Report/reportHistory';
$route['review-details'] = 'User_Report/reviewDetails';

// Manager Manage Reports
$route['manager-latest-report'] = 'Manager_Report/latestReport';
$route['manager-add-review'] = 'Manager_Report/AddReview';
$route['manager-report-history'] = 'Manager_Report/reportHistory';
$route['manager-review-details'] = 'Manager_Report/reviewDetails';

$route['manager-add-developer-review'] = 'Manager_Report/AddDeveloperReview';
$route['manager-add-tl-review'] = 'Manager_Report/AddTlReview';

$route['manager-developer-report'] = 'Manager_Report/developerReport';
$route['manager-developer-review-details'] = 'Manager_Report/developerReviewDetails';

$route['manager-tl-report'] = 'Manager_Report/tlReport';
$route['manager-tl-review-details'] = 'Manager_Report/tlReviewDetails';

$route['manager-leave-history'] = 'Manager/leaveHistory';


// Admin panel
$route['admin-add-quest'] = 'Admin_Report/add_questions';
$route['add_que_func'] = 'Admin_Report/add_que_func';
$route['admin-weightage'] = 'Admin_Report/add_weightage';
$route['admin-question_list'] = 'Admin_Report/question_list';
$route['admin-edit_question'] = 'Admin_Report/edit_question';
$route['admin-update_question/(:any)'] = 'Admin_Report/update_question/$1';
$route['admin-change-status'] = 'Admin_Report/change_status';
$route['admin-report-list'] = 'Admin_Report/report_list';
$route['admin-review-details'] = 'Admin_Report/reportDetails';
$route['admin-add-quarter'] = 'Admin_Report/add_quarter';
$route['admin-save-quarter'] = 'Admin_Report/save_quarter';
$route['admin-list-quarter'] = 'Admin_Report/list_quarter';
$route['admin-change-quarter-status'] = 'Admin_Report/change_quarter_status';
$route['admin-report-publish'] = 'Admin_Report/report_publish';
$route['admin-add-user'] = 'Admin/Add_User';

// Admin Manage OT
$route['admin-dashboard'] = 'admin/dashboard';
$route['admin-add-ot'] = 'admin/add_ot';
$route['admin-requested-ot'] = 'admin/requested_ot';
$route['admin-accepted-ot'] = 'admin/accepted_ot';
$route['admin-rejected-ot'] = 'admin/rejected_ot';
$route['admin-accept-user-ot/(:any)'] = 'admin/accept_user_ot/$1';
$route['admin-reject-user-ot/(:any)'] = 'admin/reject_user_ot/$1';
$route['admin-change-password'] = 'admin/change_password';
$route['admin-delete-ot/(:any)'] = 'admin/delete_ot/$1';

// Admin Leave Routing
$route['admin-get-days'] = 'Admin_Leave/get_days';
$route['admin-add-leave'] = 'Admin_Leave/add_leave';
$route['admin-requested-leave'] = 'Admin_Leave/requested_leave';
$route['admin-accepted-leave'] = 'Admin_Leave/accepted_leave';
$route['admin-rejected-leave'] = 'Admin_Leave/rejected_leave';
$route['admin-accept-user-leave/(:any)'] = 'Admin_Leave/accept_user_leave/$1';
$route['admin-reject-user-leave/(:any)'] = 'Admin_Leave/reject_user_leave/$1';
$route['admin-delete-leave/(:any)'] = 'Admin_Leave/admin_delete_leave/$1';;
$route['admin-leave-dashboard'] = 'Admin_Leave/admin_leave_dashboard';
$route['admin-get-user-balance-leave'] = 'Admin_Leave/getuserbalanceleave';

// Admin panel
$route['admin-question'] = 'Admin_Report/add_questions';
$route['add_que_func'] = 'Admin_Report/add_que_func';

$route['admin-add-manager-review'] = 'Admin_Report/AddManagerReview';
$route['admin-add-tl-review'] = 'Admin_Report/AddTlReview';

$route['admin-manager-report'] = 'Admin_Report/managerReport';
$route['admin-manager-review-details'] = 'Admin_Report/managerReviewDetails';

$route['admin-tl-report'] = 'Admin_Report/tlReport';
$route['admin-tl-review-details'] = 'Admin_Report/tlReviewDetails';

// TL Add User
$route['tl-add-user'] = 'Manager/tl_add_user';

