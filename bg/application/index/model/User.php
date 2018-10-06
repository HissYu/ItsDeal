<?php
namespace app\user\model;

use think\Model;

class User extends Model
{
    public function getUserInfo($userId)
    {
        $map['user_id']=$userId;
        $condition=['dl_seller','dl_seller.seller_id=user_id'];
        $field=[
            'user_id',
            'user_nickname',
            'user_location',
            'seller_history',
            'user_is_seller',
            'user_is_verified',
            '_hide_detail'
        ];
        $data=$this->table('dl_user')->join($condition)->field($field)->where($map)->select();
        return $data;
    }
    public function getUserDetail($userId,$onlyHistory)
    {
        $map['user_id']=$userId;
        if($onlyHistory) $field=['user_history'];
        else $field=['user_realname','user_stu_id','user_history'];
        $data=$this->table('dl_user_detail')->field($field)->where($map)->select();
        return $data;
    }
    public function login($userId,$userPwd)
    {
        $pwd=$this->table('dl_user')->where('user_id',$userId)->value('user_password');
        if($pwd)
        {
            if($pwd==$userPwd)
                return 0;
            else return 1;
        }
        else return 2;
    }
}