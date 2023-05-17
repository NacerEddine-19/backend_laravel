<?php

namespace App\Http\Controllers;

use App\Models\Friendship;
use App\Models\User;
use Illuminate\Http\Request;

class FriendshipController extends Controller
{
    public function addFriendship(Request $request)
    {
        $user_id = $request->user_id;
        $friend_id = $request->friend_id;
        $friendship = new Friendship();
        $friendship->user_id = $user_id;
        $friendship->friend_id = $friend_id;
        $friendship->save();
        return response()->json($friendship);
    }

    public function removeFriendship(Request $request)
    {
        $user_id = $request->user_id;
        $friend_id = $request->friend_id;
        $friendship = Friendship::where('user_id', $user_id)->where('friend_id', $friend_id)->get();
        $friendship->delete();
        return response()->json($friendship);
    }

    public function getFriends(Request $request)
    {
        $user_id = $request->user_id;
        $friends_id = Friendship::where('user_id', $user_id)->pluck('friend_id')->toArray();
        $friends = User::whereIn('id', $friends_id)->get();
        return ($friends);
    }

    public function getFriendById(Request $request)
    {
        $user_id = $request->user_id;
        $friend_id = $request->friend_id;
        $friendship = Friendship::where('user_id', $user_id)->where('friend_id', $friend_id)->get();
        return response()->json($friendship);
    }
}
