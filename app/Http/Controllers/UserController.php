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
    //updateUser
    public function updateUser(Request $request, int $id)
    {
        try {
            $user = User::findOrFail($id);
            $user->update($request->all());
            $user->save();
            return response()->json([
                'status' => "201",
                'message' => "updated successfully",
                'data' => $user
            ]);
        } catch (\Exception $e) {
            throw new \Exception("Error in updating the data");
        }
    }

    //delete user by id
    public function deleteUser(int $id)
    {
        try {

            $user = User::find($id);
            if ($user) {
                $user->delete();
                return response()->json(['success', 'User with id : ' . $id . ' was deleted Successfully']);
            } else {
                return response()->json(['error', 'User with id : ' . $id . ' was not Found']);
            }
        } catch (\Throwable $th) {
            return response()->json($th);
        }
    }

    public function banUser(int $id)
    {
        try {
            $user = User::find($id);

            if ($user) {
                $user->is_banned = true;
                $user->save();

                return response()->json([
                    'success',
                    'User with id: ' . $id . ' has been banned successfully',
                    $user
                ]);
            } else {
                return response()->json([
                    'error',
                    'User with id: ' . $id . ' was not found'
                ]);
            }
        } catch (\Throwable $th) {
            return response()->json($th);
        }
    }
    public function unbanUser(int $id)
    {
        try {
            $user = User::find($id);

            if ($user) {
                $user->is_banned = false;
                $user->save();
                return response()->json(['success', 'User with ID: ' . $id . ' was unbanned successfully']);
            } else {
                return response()->json(['error', 'User with ID: ' . $id . ' was not found']);
            }
        } catch (\Throwable $th) {
            return response()->json($th);
        }
    }
}
