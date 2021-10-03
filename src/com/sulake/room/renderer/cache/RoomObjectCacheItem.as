package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_473:RoomObjectLocationCacheItem = null;
      
      private var var_227:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_473 = new RoomObjectLocationCacheItem(param1);
         this.var_227 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_473;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_227;
      }
      
      public function dispose() : void
      {
         if(this.var_473 != null)
         {
            this.var_473.dispose();
            this.var_473 = null;
         }
         if(this.var_227 != null)
         {
            this.var_227.dispose();
            this.var_227 = null;
         }
      }
   }
}
