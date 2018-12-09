<?php
namespace app\index\model;
use think\Model;

class Item extends Model
{
    /**
     * this return all item on sale
     * @author ORIGIN
     * @param int page number
     * @param string in['newest'|'hottest'|'cheapest'] determine the order to show
     * @param boolean if reverse all results
     * @return array array of items
     */
    public function getList($page,$order="newest",$reverse=false)
    {
        $field=[
            'item_id',
            'item_name',
            'item_image',
            'item_price',
            'item_tag',
            'item_puttime',
            'item_views'
        ];
        $perPageNum=15;
        $srchorder;
        switch ($order) {
            case 'newest':
                if(!$reverse) $srchorder['item_puttime']='desc';
                else $srchorder['item_puttime']='asc';
                break;
            case 'hottest':
                if(!$reverse) $srchorder['item_views']='desc';
                else $srchorder['item_views']='asc';
                break;
            case 'cheapest':
                if(!$reverse) $srchorder['item_price']='asc';
                else $srchorder['item_price']='desc';
                break;
            default:
                
                break;
        }
        $list=$this
            ->table('dl_item')
            ->field($field)
            ->page($page,$perPageNum)
            ->order($srchorder)
            ->select();
        return $list;
    }
    /**
     * this return specific item's information
     * @author ORIGIN
     * @param int item's ID
     * @return array KV pair of item information
     */
    public function getItem($itemId)
    {
        $map['item_id']=$itemId;

        $data=
        $this->table('dl_item')
            ->where($map)
            ->find();
        return $data;
    }
    /**
     * this add item in database
     * @author ORIGIN
     * @param array item's information
     * @return int|string (success)item id | (fail)'ERR'
     */
    public function putItem($infos)
    {
        $d=[
            'item_name'=>$infos['itemName'],
            'item_discription'=>$infos['itemDiscription'],
            'item_seller_id'=>$infos['sellerId'],
            'item_image'=>$infos['imageCollects'],
            'item_tag'=>$infos['tagId'],
            'item_price'=>$infos['price']
        ];

        $r=$this->table('dl_item')
            ->insert($d);
        if($r)
            return $this->table('dl_item')->getLastInsID();
        else
            return 'ERR';
    }
    /**
     * this update item's information
     * @author ORIGIN
     * @param array item's new information(this could be incomplete)
     * @return string (success)'OK' | (fail)'ERR'
     */
    public function updateItem($infos)
    {
        $d;
        foreach ($infos as $key => $value) {
            switch($key)
            {
                case'itemId':
                    $d['item_id']=$value;
                case'itemName':
                    $d['item_name']=$value;
                case'itemDiscription':
                    $d['item_discription']=$value;
                case'imageCollects':
                    $d['item_image']=$value;
                case'tagId':
                    $d['item_tag']=$value;
                case'price':
                    $d['item_price']=$value;
            }
        }
        $r=$this->table('dl_item')
            ->update($d);

        if($r)
            return 'OK';
        else
            return 'ERR';
    }
}