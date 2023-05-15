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
            $user = User::where('email', $request->email)->first();
            if (!$user) {
                return response()->json('user not found');
            }
            if ($request->password == $user->password) {
                return response()->json([
                    $user
                ]);
            }
        } catch (Exception $ex) {
            return response([
                'message' => $ex->getMessage()
            ], 400);
        }
    }
}

    // return response()->json($users);
    // if (Auth()->attempt($credentials)) {
    //     $user = Auth::user();
    //     $token = $user->createToken('app')->accessToken;

    //     return response()->json([
    //         '_id' => $user->id,
    //         'role' => $user->role,
    //         'username' => $user->nom,
    //         'token' => $token,
    //         // 'profile_image' =>$profilePicture
    //     ]);
    // } else {
    //     return response()->json(['error' => 'Incorrect Email or Password!'], 401);
    // }