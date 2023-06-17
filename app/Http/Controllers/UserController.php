<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public function user()
    {
        return Auth::user();
    }
    public function users()
    {
        $users = User::all();
        return response()->json($users);
    }
    //delete user by id
    public function deleteUser(int $id)
    {
        try {

            $user = User::find($id);
            if ($user) {
                $user->delete();
                return response()->json(['success', 'User with id : ' . $id . ' was deleted Successfully']);
            }else {
                return response()->json(['error', 'User with id : ' . $id . ' was not Found']);
            }
        } catch (\Throwable $th) {
            return response()->json($th);
        }
    }
}
