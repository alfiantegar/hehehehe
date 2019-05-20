<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;
use DB;
class u_user extends Authenticatable
{
    protected $guarded = []; 
    protected $table = 'd_user';
    protected $primaryKey = 'u_id';
    public $incrementing = false;
    public $remember_token = false;
    const CREATED_AT = 'u_created_at';
    const UPDATED_AT = 'u_updated_at';

    protected $fillable = ['u_id','u_name','u_nim','u_prodi','u_jk','u_date','u_tempat','u_image',
                           'u_alamat','u_email','u_notelp','u_namawali',
                           'u_role','u_username',
    					   'u_password',
    					   'u_created_at', 'u_updated_at' 
                          ];
}