<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    protected $fillable = [
        'city',  'txnid', 'mihpayid', 'firstname', 'lastname', 'email', 'phone', 'amount',
        'discount', 'net_amount_debit', 'state', 'status', 'unmappedstatus', 'mode', 'bank_ref_num',
        'bankcode', 'cardnum', 'name_on_card',  'card_type','productinfo','city','country','zipcode','address1','address2','phone','email','payuMoneyId','subject_id',
    ];
}
