<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use Illuminate\Http\Request;

class CommentsController extends Controller
{
    public function addComment(Request $request)
    {
        $comment = new Comment;
        $comment->user_id = $request->user_id;
        $comment->post_id = $request->post_id;
        $comment->content = $request->content;
        $comment->save();
        $user = $comment->user;
        return response()->json([
            $comment,
            $user,
            'message' => 'Comment added successfully'
        ]);
    }
    public function deleteComment(Request $request)
    {
        $comment = Comment::find($request->id);
        $comment->delete();
        return response()->json([
            $comment,
            'message' => 'Comment deleted successfully'
        ]);
    }
    public function editComment(Request $request)
    {
        $comment = Comment::find($request->id);
        $comment->content = $request->content;
        $comment->save();
        return response()->json([
            $comment,
            'message' => 'Comment edited successfully'
        ]);
    }
    // GetAllComments
    public function getAllComments()
    {
        $comments = Comment::all();
        return response()->json([
            $comments,
            'message' => 'All comments'
        ]);
    }
    //getCommentsByPost
    public function getCommentsByPost($id)
    {
        $comments = Comment::where('post_id', $id)->get();
        return response()->json([
            $comments,
            'message' => 'All comments'
        ]);
    }
}
