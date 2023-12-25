<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class member extends Model
{
    use HasFactory;
    public $table = "memberc";
    const MEMBER = [
        0 => 'Thành viên thường',
        1 => 'Thành viên thâm niên',
        2 => 'Hội viên',
        3 => 'Thành viên Vjp'
    ];
}
