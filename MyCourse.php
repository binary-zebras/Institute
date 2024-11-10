<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MyCourse extends Model
{
    protected $table = 'my_courses';
protected $fillable = [ 'name','email','subject_id','contact' ];

}
