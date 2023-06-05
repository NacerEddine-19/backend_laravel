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
    public $timestamps = true;
    // relationship with Project model
    public function projects()
    {
        return $this->hasMany(Project::class, 'language_id', 'id');
    }
    
}
