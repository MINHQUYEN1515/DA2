<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Category extends Model
{
    use HasFactory;
    protected $table = "category";
    protected $fillable = ['name'];
    public $timestamps = false;
    protected $primaryKey = 'ID';
    public function products(): BelongsToMany
    {
        return $this->BelongsToMany(Product::class);
    }
}
