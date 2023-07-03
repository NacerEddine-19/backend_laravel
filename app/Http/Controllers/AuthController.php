<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Exception;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        try {
            $user = User::with('friendships')->where('email', $request->email)->first();
            if (!$user) {
                return response()->json('user not found');
            }
            if (password_verify($request->password, $user->password)) {
                return response()->json([
                    $user
                ]);
            }else {
                throw new \Exception("Password is incorrect");
            }
        } catch (Exception $ex) {
            return response([
                'message' => $ex->getMessage()
            ], 400);
        }
    }
    public function changePass($id, Request $req)
    {
        try {
            $user = User::findOrFail($id);

            if (!$user) {
                return response()->json('User not found');
            }

            if (password_verify($req->oldPassword, $user->password)) {
                $user->password = bcrypt($req->newPassword);
                $user->first_time = false;
                $user->save();

                return response()->json('success');
            } else {
                return response()->json('Wrong password');
            }
        } catch (\Throwable $th) {
            return response()->json(['An error occurred',$th]);
        }
    }
}
