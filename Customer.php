<?php
namespace App\Http\Middleware;

use Closure;

class Customer
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {


$data =$request->session()->all();

/*dd($data);*/

           if($request->session()->get('name') == null){
            return redirect('customer/login');
            
           }
       return $next($request);
        
    }
}

