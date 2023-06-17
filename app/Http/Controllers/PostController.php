<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class PostController extends Controller
{
    public function AddPost(Request $req)
    {
        $post = new Post();
        $post->file = $req->file;
        $post->post_desc = $req->post_desc;
        $post->user_id = $req->user_id;
        $post->save();
        return response()->json($post);
    }

    public function DeletePost(Request $req)
    {
        $post = Post::find($req->id);
        $post->delete();
        return response()->json($post);
    }
    // public function UpdatePost(Request $req)
    // {
    //     $post = Post::find($req->id);
    //     $post->file = $req->file;
    //     $post->post_desc = $req->post_desc;
    //     $post->user_id = $req->user_id;
    //     $post->is_reported = $req->is_reported;
    //     $post->created_at = $req->created_at;
    //     $post->likes = $req->likes;
    //     $post->save();
    //     return response()->json($post);
    // }
    public function GetPost(Request $req)
    {
        $post = Post::find($req->id);
        $comments = $post->comments()->with('user')->get();
        $user = $post->user;
        return response()->json([
            $post,
            $comments,
            $user
        ]);
    }
    public function GetAllPosts(Request $request)
    {
        $total = Post::all()->count();

        $limit = $request->input('limit', $total);
        $offset = $request->input('offset', 0);

        $posts = Post::with('comments', 'user', 'likingUsers')
            ->orderBy('created_at', 'desc')
            ->limit($limit)
            ->offset($offset)
            ->get();
        return response()->json([
            'posts' => $posts,
            'total' => $total
        ]);
        // $posts = Post::paginate(10);
        // return view('test', compact('posts'));
    }
    public function GetAllPostByUser(Request $req)
    {
        $posts = Post::where('user_id', $req->id)->with('comments', 'user', 'likingUsers')->get();
        $total = $posts->count();

        return response()->json([
            'posts' => $posts,
            'total' => $total
        ]);
    }
    public function LikePost(Request $req)
    {
        $post = Post::find($req->id);
        $post->likes = $post->likes + 1;
        $post->save();
        return response()->json($post);
    }
    public function UnlikePost(Request $req)
    {
        $post = Post::find($req->id);
        $post->likes = $post->likes - 1;
        $post->save();
        return response()->json($post);
    }
    public function GetPostsByGroup($group_id)
    {
        $posts = Post::whereHas('user', function ($query) use ($group_id) {
            $query->where('group', $group_id);
        })
            ->with('comments', 'user', 'likingUsers')
            ->orderBy('created_at', 'desc')
            ->get();

        $total = $posts->count();

        return response()->json([
            'posts' => $posts,
            'total' => $total
        ]);
    }
}
