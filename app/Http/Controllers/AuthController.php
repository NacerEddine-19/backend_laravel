<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Exception;
use Laravel\Passport\Passport;
use Laravel\Sanctum\HasApiTokens;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $users = User::all();
        try {
            $credentials = ['email' => $request->email, 'password' => $request->password];
            foreach ($users as $user) {
                $email = $user->email;
                $password = $user->password;

                // Perform your desired checks on the email and password
                //TODO: For example, you can check if the email is valid and the password meets certain criteria

                if ($email === $credentials['email'] && $password === $credentials['password']) {
                    // Email and password are correct

                    // $token = $user->createToken('app')->accessToken;
                    return response()->json([
                        'user'=>$user,
                        '_id' => $user->id,
                        'role' => $user->role,
                        'username' => $user->nom,
                        // 'token' => $token,
                        'profile_image' =>$user->pdp
                    ]);
                } else {
                    return response()->json(['error' => 'Incorrect Email or Password!'], 401);
                }
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