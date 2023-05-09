<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Exception;
use Laravel\Passport\Passport;
use Laravel\Sanctum\HasApiTokens;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        try {
            $credentials = $request->only('email', 'password');
            return $credentials;
            // if (Auth::attempt($credentials)) {
            //     $user = Auth::user();
            //     $token = $user->createToken('authToken')->accessToken;
            //     return response()->json(['_id' => $user->id, "isAdmin" => $user->isAdmin, "username" => $user->name, "token" => $token]);
            // } else {
            //     return response()->json(['error' => 'Unauthorized'], 401);
            // }
        } catch (Exception $ex) {
            return response([
                'message' => $ex->getMessage()
            ], 400);
        }
    }
}
