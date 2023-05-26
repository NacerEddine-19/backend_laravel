<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Report extends Model
{
    use HasFactory;
    protected $table = 'reports';
    protected $primaryKey = 'id';
    protected $fillable = [
        'reportable_id',
        'reportable_type',
        'report_type',
    ];
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    public function reportable()
    {
        return $this->morphTo();
    }
}
