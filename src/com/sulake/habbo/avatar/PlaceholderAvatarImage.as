package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_897:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1152)
         {
            _structure = null;
            _assets = null;
            var_270 = null;
            var_315 = null;
            _figure = null;
            var_610 = null;
            var_360 = null;
            if(!var_1426 && var_47)
            {
               var_47.dispose();
            }
            var_47 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_801 = null;
            var_1152 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_897[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_897[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_435:
               switch(_loc3_)
               {
                  case AvatarAction.const_731:
                  case AvatarAction.const_610:
                  case AvatarAction.const_417:
                  case AvatarAction.const_837:
                  case AvatarAction.const_396:
                  case AvatarAction.const_858:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_323:
            case AvatarAction.const_165:
            case AvatarAction.const_301:
            case AvatarAction.const_950:
            case AvatarAction.const_915:
            case AvatarAction.const_987:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
