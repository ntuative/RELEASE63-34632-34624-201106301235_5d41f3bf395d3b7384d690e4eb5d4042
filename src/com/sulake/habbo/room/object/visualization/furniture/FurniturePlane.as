package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.core.utils.Map;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class FurniturePlane
   {
       
      
      private var var_1890:int = -1;
      
      private var var_1686:Number = 0.0;
      
      private var var_2546:Number = 0.0;
      
      private var var_2550:Number = 0.0;
      
      private var var_1891:Number = 0.0;
      
      private var var_1318:Vector3d = null;
      
      private var var_106:Vector3d = null;
      
      private var var_352:Vector3d = null;
      
      private var var_353:Vector3d = null;
      
      private var var_914:Vector3d = null;
      
      private var var_913:Vector3d = null;
      
      private var _normal:Vector3d = null;
      
      private var _isVisible:Boolean = true;
      
      private var _bitmapData:BitmapData = null;
      
      private var var_222:Map = null;
      
      private var _offset:Point = null;
      
      private var var_2768:Number = 0;
      
      private var _color:uint = 0;
      
      private var var_3026:Boolean = false;
      
      private var _id:String = null;
      
      private var var_181:Vector3d = null;
      
      private var var_137:Vector3d = null;
      
      private var var_100:Vector3d = null;
      
      private var var_136:Vector3d = null;
      
      private var var_211:Number = 0.0;
      
      private var _height:Number = 0.0;
      
      public function FurniturePlane(param1:IVector3d, param2:IVector3d, param3:IVector3d)
      {
         super();
         this.var_1318 = new Vector3d();
         this.var_106 = new Vector3d();
         this.var_106.assign(param1);
         this.var_352 = new Vector3d();
         this.var_352.assign(param2);
         this.var_353 = new Vector3d();
         this.var_353.assign(param3);
         this.var_914 = new Vector3d();
         this.var_914.assign(param2);
         this.var_913 = new Vector3d();
         this.var_913.assign(param3);
         this._normal = Vector3d.crossProduct(this.var_352,this.var_353);
         if(this._normal.length > 0)
         {
            this._normal.mul(1 / this._normal.length);
         }
         this._offset = new Point();
         this.var_181 = new Vector3d();
         this.var_137 = new Vector3d();
         this.var_100 = new Vector3d();
         this.var_136 = new Vector3d();
         this.var_222 = new Map();
      }
      
      public function get bitmapData() : BitmapData
      {
         if(this._isVisible)
         {
            if(this._bitmapData != null)
            {
               return this._bitmapData.clone();
            }
         }
         return null;
      }
      
      public function get visible() : Boolean
      {
         return this._isVisible;
      }
      
      public function get offset() : Point
      {
         return this._offset;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_2768;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function set color(param1:uint) : void
      {
         this._color = param1;
      }
      
      public function get leftSide() : IVector3d
      {
         return this.var_352;
      }
      
      public function get rightSide() : IVector3d
      {
         return this.var_353;
      }
      
      public function get location() : IVector3d
      {
         return this.var_106;
      }
      
      public function get normal() : IVector3d
      {
         return this._normal;
      }
      
      public function dispose() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(this._bitmapData != null)
         {
            this._bitmapData.dispose();
            this._bitmapData = null;
         }
         if(this.var_222 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this.var_222.length)
            {
               _loc2_ = this.var_222.getWithIndex(_loc1_) as BitmapData;
               if(_loc2_ != null)
               {
                  _loc2_.dispose();
               }
               _loc1_++;
            }
            this.var_222.dispose();
            this.var_222 = null;
         }
         this.var_1318 = null;
         this.var_106 = null;
         this.var_352 = null;
         this.var_353 = null;
         this.var_914 = null;
         this.var_913 = null;
         this._normal = null;
         this.var_181 = null;
         this.var_137 = null;
         this.var_100 = null;
         this.var_136 = null;
      }
      
      public function setRotation(param1:Boolean) : void
      {
         if(param1 != this.var_3026)
         {
            if(!param1)
            {
               this.var_352.assign(this.var_914);
               this.var_353.assign(this.var_913);
            }
            else
            {
               this.var_352.assign(this.var_914);
               this.var_352.mul(this.var_913.length / this.var_914.length);
               this.var_353.assign(this.var_913);
               this.var_353.mul(this.var_914.length / this.var_913.length);
            }
            this.var_1890 = -1;
            this.var_1686 = this.var_1686 - 1;
            this.var_3026 = param1;
            this.resetTextureCache();
         }
      }
      
      private function cacheTexture(param1:String, param2:BitmapData) : Boolean
      {
         var _loc3_:BitmapData = this.var_222.remove(param1) as BitmapData;
         if(_loc3_ != null && param2 != _loc3_)
         {
            _loc3_.dispose();
         }
         this.var_222.add(param1,param2);
         return true;
      }
      
      private function resetTextureCache() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(this.var_222 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this.var_222.length)
            {
               _loc2_ = this.var_222.getWithIndex(_loc1_) as BitmapData;
               if(_loc2_ != null)
               {
                  _loc2_.dispose();
               }
               _loc1_++;
            }
            this.var_222.reset();
         }
      }
      
      private function getTextureIdentifier(param1:IRoomGeometry) : String
      {
         if(param1 == null)
         {
            return null;
         }
         return String(param1.scale);
      }
      
      private function needsNewTexture(param1:IRoomGeometry) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:String = this.getTextureIdentifier(param1);
         var _loc3_:BitmapData = this.var_222.getValue(_loc2_) as BitmapData;
         if(this.var_211 > 0 && this._height > 0)
         {
            if(_loc3_ == null)
            {
               return true;
            }
         }
         return false;
      }
      
      private function getTexture(param1:IRoomGeometry, param2:int) : BitmapData
      {
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc3_:String = this.getTextureIdentifier(param1);
         var _loc4_:* = null;
         if(this.needsNewTexture(param1))
         {
            _loc5_ = Number(this.var_352.length * param1.scale);
            _loc6_ = Number(this.var_353.length * param1.scale);
            if(_loc5_ < 1)
            {
               _loc5_ = 1;
            }
            if(_loc6_ < 1)
            {
               _loc6_ = 1;
            }
            _loc7_ = param1.getCoordinatePosition(this._normal);
            _loc4_ = this.var_222.getValue(_loc3_) as BitmapData;
            if(_loc4_ == null)
            {
               _loc4_ = new BitmapData(_loc5_,_loc6_,true,4278190080 | this._color);
               if(_loc4_ != null)
               {
                  this.cacheTexture(_loc3_,_loc4_);
               }
            }
         }
         else
         {
            _loc4_ = this.var_222.getValue(_loc3_) as BitmapData;
         }
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         return null;
      }
      
      public function update(param1:IRoomGeometry, param2:int) : Boolean
      {
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = null;
         if(param1 == null || this.var_106 == null && this.var_1318 != null || this.var_352 == null || this.var_353 == null || this._normal == null)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.updateId != this.var_1890)
         {
            this.var_1890 = param1.updateId;
            _loc4_ = param1.direction;
            if(_loc4_ != null && (_loc4_.x != this.var_1686 || _loc4_.y != this.var_2546 || _loc4_.z != this.var_2550 || param1.scale != this.var_1891))
            {
               this.var_1686 = _loc4_.x;
               this.var_2546 = _loc4_.y;
               this.var_2550 = _loc4_.z;
               this.var_1891 = param1.scale;
               _loc3_ = true;
               _loc5_ = 0;
               _loc5_ = Number(Vector3d.cosAngle(param1.directionAxis,this.normal));
               if(_loc5_ > -0.001)
               {
                  if(this._isVisible)
                  {
                     this._isVisible = false;
                     return true;
                  }
                  return false;
               }
               this.updateCorners(param1);
               _loc6_ = param1.getScreenPosition(this.var_1318);
               _loc7_ = _loc6_.z;
               _loc8_ = Math.max(this.var_181.z - _loc7_,this.var_137.z - _loc7_,this.var_100.z - _loc7_,this.var_136.z - _loc7_);
               this.var_2768 = _loc8_;
               this._isVisible = true;
            }
         }
         if(this.needsNewTexture(param1) || _loc3_)
         {
            if(this._bitmapData == null || this.var_211 != this._bitmapData.width || this._height != this._bitmapData.height)
            {
               if(this._bitmapData != null)
               {
                  this._bitmapData.dispose();
                  this._bitmapData = null;
                  if(this.var_211 < 1 || this._height < 1)
                  {
                     return true;
                  }
               }
               else if(this.var_211 < 1 || this._height < 1)
               {
                  return false;
               }
               this._bitmapData = new BitmapData(this.var_211,this._height,true,16777215);
               this._bitmapData.lock();
            }
            else
            {
               this._bitmapData.lock();
               this._bitmapData.fillRect(this._bitmapData.rect,16777215);
            }
            _loc9_ = this.getTexture(param1,param2);
            if(_loc9_ != null)
            {
               this.renderTexture(param1,_loc9_);
            }
            this._bitmapData.unlock();
            return true;
         }
         return false;
      }
      
      private function updateCorners(param1:IRoomGeometry) : void
      {
         this.var_181.assign(param1.getScreenPosition(this.var_106));
         this.var_137.assign(param1.getScreenPosition(Vector3d.sum(this.var_106,this.var_353)));
         this.var_100.assign(param1.getScreenPosition(Vector3d.sum(Vector3d.sum(this.var_106,this.var_352),this.var_353)));
         this.var_136.assign(param1.getScreenPosition(Vector3d.sum(this.var_106,this.var_352)));
         this._offset = param1.getScreenPoint(this.var_1318);
         this.var_181.x = Math.round(this.var_181.x);
         this.var_181.y = Math.round(this.var_181.y);
         this.var_137.x = Math.round(this.var_137.x);
         this.var_137.y = Math.round(this.var_137.y);
         this.var_100.x = Math.round(this.var_100.x);
         this.var_100.y = Math.round(this.var_100.y);
         this.var_136.x = Math.round(this.var_136.x);
         this.var_136.y = Math.round(this.var_136.y);
         this._offset.x = Math.round(this._offset.x);
         this._offset.y = Math.round(this._offset.y);
         var _loc2_:Number = Math.min(this.var_181.x,this.var_137.x,this.var_100.x,this.var_136.x);
         var _loc3_:Number = Math.max(this.var_181.x,this.var_137.x,this.var_100.x,this.var_136.x);
         var _loc4_:Number = Math.min(this.var_181.y,this.var_137.y,this.var_100.y,this.var_136.y);
         var _loc5_:Number = Math.max(this.var_181.y,this.var_137.y,this.var_100.y,this.var_136.y);
         _loc3_ -= _loc2_;
         this._offset.x -= _loc2_;
         this.var_181.x -= _loc2_;
         this.var_137.x -= _loc2_;
         this.var_100.x -= _loc2_;
         this.var_136.x -= _loc2_;
         _loc5_ -= _loc4_;
         this._offset.y -= _loc4_;
         this.var_181.y -= _loc4_;
         this.var_137.y -= _loc4_;
         this.var_100.y -= _loc4_;
         this.var_136.y -= _loc4_;
         this.var_211 = _loc3_;
         this._height = _loc5_;
      }
      
      private function renderTexture(param1:IRoomGeometry, param2:BitmapData) : void
      {
         if(this.var_181 == null || this.var_137 == null || this.var_100 == null || this.var_136 == null || param2 == null || this._bitmapData == null)
         {
            return;
         }
         var _loc3_:Number = this.var_136.x - this.var_100.x;
         var _loc4_:Number = this.var_136.y - this.var_100.y;
         var _loc5_:Number = this.var_137.x - this.var_100.x;
         var _loc6_:Number = this.var_137.y - this.var_100.y;
         if(Math.abs(_loc5_ - param2.width) <= 1)
         {
            _loc5_ = param2.width;
         }
         if(Math.abs(_loc6_ - param2.width) <= 1)
         {
            _loc6_ = param2.width;
         }
         if(Math.abs(_loc3_ - param2.height) <= 1)
         {
            _loc3_ = param2.height;
         }
         if(Math.abs(_loc4_ - param2.height) <= 1)
         {
            _loc4_ = param2.height;
         }
         var _loc7_:Number = _loc5_ / param2.width;
         var _loc8_:Number = _loc6_ / param2.width;
         var _loc9_:Number = _loc3_ / param2.height;
         var _loc10_:Number = _loc4_ / param2.height;
         var _loc11_:Matrix = new Matrix();
         _loc11_.a = _loc7_;
         _loc11_.b = _loc8_;
         _loc11_.c = _loc9_;
         _loc11_.d = _loc10_;
         _loc11_.translate(this.var_100.x,this.var_100.y);
         this.draw(param2,_loc11_);
      }
      
      private function draw(param1:BitmapData, param2:Matrix) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(this._bitmapData != null)
         {
            if(param2.a == 1 && param2.d == 1 && param2.c == 0 && param2.b != 0 && Math.abs(param2.b) <= 1)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               _loc5_ = 0;
               _loc6_ = 0;
               if(param2.b > 0)
               {
                  ++param2.ty;
               }
               _loc7_ = 0;
               while(_loc3_ < param1.width)
               {
                  _loc3_++;
                  _loc5_ += Math.abs(param2.b);
                  if(_loc5_ >= 1)
                  {
                     this._bitmapData.copyPixels(param1,new Rectangle(_loc4_ + _loc6_,0,_loc3_ - _loc4_,param1.height),new Point(param2.tx + _loc4_,param2.ty + _loc7_),null,null,true);
                     _loc4_ = _loc3_;
                     if(param2.b > 0)
                     {
                        _loc7_++;
                     }
                     else
                     {
                        _loc7_--;
                     }
                     _loc5_ = 0;
                  }
               }
               if(_loc5_ > 0)
               {
                  this._bitmapData.copyPixels(param1,new Rectangle(_loc4_,0,_loc3_ - _loc4_,param1.height),new Point(param2.tx + _loc4_,param2.ty + _loc7_),null,null,true);
               }
               return;
            }
            this._bitmapData.draw(param1,param2,null,null,null,false);
         }
      }
   }
}
