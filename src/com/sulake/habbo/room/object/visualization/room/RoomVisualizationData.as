package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_536:WallRasterizer;
      
      private var var_535:FloorRasterizer;
      
      private var var_796:WallAdRasterizer;
      
      private var var_537:LandscapeRasterizer;
      
      private var var_797:PlaneMaskManager;
      
      private var var_906:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_536 = new WallRasterizer();
         this.var_535 = new FloorRasterizer();
         this.var_796 = new WallAdRasterizer();
         this.var_537 = new LandscapeRasterizer();
         this.var_797 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_906;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_535;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_536;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_796;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_537;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_797;
      }
      
      public function dispose() : void
      {
         if(this.var_536 != null)
         {
            this.var_536.dispose();
            this.var_536 = null;
         }
         if(this.var_535 != null)
         {
            this.var_535.dispose();
            this.var_535 = null;
         }
         if(this.var_796 != null)
         {
            this.var_796.dispose();
            this.var_796 = null;
         }
         if(this.var_537 != null)
         {
            this.var_537.dispose();
            this.var_537 = null;
         }
         if(this.var_797 != null)
         {
            this.var_797.dispose();
            this.var_797 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_536 != null)
         {
            this.var_536.clearCache();
         }
         if(this.var_535 != null)
         {
            this.var_535.clearCache();
         }
         if(this.var_537 != null)
         {
            this.var_537.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_536.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_535.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_796.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_537.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_797.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_906)
         {
            return;
         }
         this.var_536.initializeAssetCollection(param1);
         this.var_535.initializeAssetCollection(param1);
         this.var_796.initializeAssetCollection(param1);
         this.var_537.initializeAssetCollection(param1);
         this.var_797.initializeAssetCollection(param1);
         this.var_906 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
