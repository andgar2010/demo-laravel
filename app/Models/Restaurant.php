<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Restaurant extends Model
{
    public function restaurant()
    {
        return $this->belongsTo(Category::class);
    }
}
