package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1210:int = 0;
       
      
      private var var_446:BitmapData = null;
      
      private var var_2403:String = "";
      
      private var var_341:Boolean = true;
      
      private var var_2275:String = "";
      
      private var var_2498:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_2493:String = "normal";
      
      private var var_1685:Boolean = false;
      
      private var var_1684:Boolean = false;
      
      private var _offset:Point;
      
      private var var_211:int = 0;
      
      private var _height:int = 0;
      
      private var var_1290:Number = 0;
      
      private var var_2496:Boolean = false;
      
      private var var_2495:Boolean = true;
      
      private var var_2494:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var _instanceId:int = 0;
      
      private var var_2497:Array = null;
      
      public function RoomObjectSprite()
      {
         this._offset = new Point(0,0);
         super();
         this._instanceId = var_1210++;
      }
      
      public function dispose() : void
      {
         this.var_446 = null;
         this.var_211 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_446;
      }
      
      public function get assetName() : String
      {
         return this.var_2403;
      }
      
      public function get visible() : Boolean
      {
         return this.var_341;
      }
      
      public function get tag() : String
      {
         return this.var_2275;
      }
      
      public function get alpha() : int
      {
         return this.var_2498;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_2493;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1684;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1685;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_211;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1290;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2496;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2495;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2494;
      }
      
      public function get instanceId() : int
      {
         return this._instanceId;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_2497;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_211 = param1.width;
            this._height = param1.height;
         }
         this.var_446 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_2403 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_341 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2275 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2498 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_2493 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_2497 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1685 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1684 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1290 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2496 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2495 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2494 = param1;
         ++this._updateID;
      }
   }
}
