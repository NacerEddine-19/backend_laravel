<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

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
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'user_id', 'id_user');
    }
    public function comments(): HasMany
    {
        return $this->hasMany(Comment::class, 'post_id', 'id_post');
    }
}
