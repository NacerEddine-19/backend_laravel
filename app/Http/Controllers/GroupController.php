<?php

namespace App\Http\Controllers;

use App\Models\Group;
use Illuminate\Http\Request;

class GroupController extends Controller
{
    public function GetGroupById($id)
    {
        $group = Group::find($id);
        return response()->json($group);
    }
}
