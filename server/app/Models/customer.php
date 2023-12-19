<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Tymon\JWTAuth\Contracts\JWTSubject;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Laravel\Sanctum\HasApiTokens;
use \Illuminate\Notifications\Notifiable;

class Customer extends Authenticatable implements JWTSubject
{
    use HasFactory;
    use HasApiTokens, HasFactory, Notifiable;
    protected $table = "customer";
    protected $fillable  = ["fullname", "email", "phone", 'address', "password", "createDay", 'image', "status", "member_id"];
    protected $hidden = ['password'];
    public $timestamps = false;
    protected $primaryKey = 'ID';
    public function getJWTIdentifier()
    {
        return $this->getKey();
    }
    public function getJWTCustomClaims()
    {
        return [];
    }
}
