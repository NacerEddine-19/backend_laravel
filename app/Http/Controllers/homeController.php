<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class homeController extends Controller
{
    public function userHome()
    {
        return view('home', ["msg" => "I am User"]);
    }
    public function adminHome()
    {
        return view('home', ["msg" => "I am admin"]);
    }
    public function superAdminHome()
    {
        return view('home', ["msg" => "I am superAdmin"]);
    }
}
