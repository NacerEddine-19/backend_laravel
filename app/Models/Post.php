<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $primaryKey = "id_post";
    protected $table = "posts";

    protected $fillable = [
        'file',
        'post_desc',
        'user_id',
        'is_reported',
        'created_at',
        'likes'
    ];
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
    public function comments()
    {
        return $this->hasMany(Comment::class, 'post_id', 'id_post');
    }
    public function reports()
    {
        return $this->morphMany(Report::class, 'reportable');
    }
    public function likingUsers()
    {
        return $this->belongsToMany(User::class, 'likes', 'post_id', 'user_id');
    }
}
