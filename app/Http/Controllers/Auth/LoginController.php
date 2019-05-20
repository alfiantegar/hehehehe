<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use App\d_mem;
use Session;
use DB;
use Auth;
class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */
    // public function index()
    // {
    //   return sha1('halo');
    // }
    use AuthenticatesUsers;
    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    // protected $redirectTo = '/home';

    // *
    //  * Create a new controller instance.
    //  *
    //  * @return void
     
    // public function __construct()
    // {
        // $this->middleware('guest')->except('logout');
    // }
    // public function __construct()
    // {
        // $this->middleware('auth');
    // }
    
    public function login(Request $req)
    {
        $user = u_user::where('u_username',$req->username)->first();
        if ($user == null) {
            return redirect('/login');
        }

        if ($user->u_username == $req->username && $user->u_password == sha1($req->password)) {
            Auth::login($user);
            
            return response()->json(['status'=>'sukses']);
        }else{
            return redirect(url('/login'))->with(['gagal'=>'gagal']);
        }
    }

    public function logout(Request $request)
    {
        $this->guard()->logout();
        Session::flush();
        $request->session()->invalidate();
        Auth::logout();

        return redirect('/login');
    }
}
