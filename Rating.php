<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Rating extends Model
{

	protected $table = 'ratings';
    protected $fillable =['name','subject','email','star','comment'];
}
