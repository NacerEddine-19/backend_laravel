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