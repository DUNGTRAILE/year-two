<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Role;
class RoleController extends Controller
{
    //
    function show(){
        $users = Role::find(1)->users;
        return $users;
        // echo "hello";
    }
    // function show() {
    //     $role = Role::find(1);
        
    //     if ($role) {
    //         $users = $role->users; // Lấy danh sách người dùng
    //         return response()->json($users); // Trả về dữ liệu dưới dạng JSON
    //     } else {
    //         return response()->json(['error' => 'Role not found'], 404); // Trả về lỗi nếu không tìm thấy Role
    //     }
    // }
}
