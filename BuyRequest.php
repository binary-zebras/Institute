<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BuyRequest extends Model
{
     protected $table = 'buy_requests';
protected $fillable = [ 'name','email','subject_id','contact' ];
}
