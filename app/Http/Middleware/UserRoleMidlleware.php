<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class UserRoleMiddleware
{
    public function handle($request, Closure $next, $role)
    {
        if (Auth::check()) {
            $user = Auth::user();

            // Check the user's role and redirect accordingly
            if ($user->role === 'admin' || $user->role === 'user') {
                return redirect('http://localhost:3000/home');
            } elseif ($user->role === 'superAdmin') {
                return redirect('http://localhost:3000/adminDash');
            }
        } else {
            // User is not authenticated, redirect to the login page or handle as needed
            return redirect('http://localhost:3000/login');
        }

        // User's role is not handled, proceed with the request
        return $next($request);
    }
}
