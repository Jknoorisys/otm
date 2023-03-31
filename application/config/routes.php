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
$route['manager-delete-ot/(:any)'] = 'manager/delete_ot/$1';;

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
$route['manager-delete-leave/(:any)'] = 'Manager_Leave/manager_delete_leave/$1';;
$route['manager-leave-dashboard'] = 'Manager_Leave/manager_leave_dashboard';

// Manage Reports

// Admin
$route['admin-dashboard'] = 'admin/dashboard';