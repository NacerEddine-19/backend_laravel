<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

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
        return response()->json($post);
    }
    public function GetAllPost()
    {
        $post = Post::all();
        return response()->json($post);
    }
    public function GetAllPostByUser(Request $req)
    {
        $post = Post::where('user_id', $req->id)->get();
        return response()->json($post);
    }

}