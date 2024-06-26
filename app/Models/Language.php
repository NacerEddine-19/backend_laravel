<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Language extends Model
{
    use HasFactory;
    protected $table = 'languages';
    protected $primaryKey = 'id';
    protected $fillable = ['name'];
    public $timestamps = false;
    public function projects()
    {
        return $this->belongsToMany(Project::class);
    }
    
}
