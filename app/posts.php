<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\softDeletes;

class posts extends Model
{
  use softDeletes;

    protected $fillable = [
        'header', 'img', 'p1','p2','p3','tag','cat','type','view_count',
          'admins_id','author','videos_id',

    ];


    protected $dates = [
        'delete_at','created_at'
    ];

    public function videos_id()
    {
      return $this->hasOne('App\videos', 'id', 'videos_id');

      //{{$data->videos_id()->first()->name}}

    }

    public function admins_id()
    {
      return $this->hasOne('App\Admin', 'id', 'admins_id');

      //{{$data->admins_id()->first()->name}}

    }

    public function comments()
    {
      return $this->hasMany('App\comments', 'posts_id', 'id');

      //{{$data->comments()->first()->text}}


    }


  }
