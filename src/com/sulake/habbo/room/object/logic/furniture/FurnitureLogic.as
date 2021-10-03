package com.sulake.habbo.room.object.logic.furniture
{
   import com.sulake.habbo.room.events.RoomObjectRoomAdEvent;
   import com.sulake.habbo.room.events.RoomObjectStateChangeEvent;
   import com.sulake.habbo.room.messages.RoomObjectDataUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectItemDataUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectMoveUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.room.object.logic.MovingObjectLogic;
   import com.sulake.room.events.RoomObjectEvent;
   import com.sulake.room.events.RoomObjectMouseEvent;
   import com.sulake.room.events.RoomSpriteMouseEvent;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectController;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   import com.sulake.room.utils.XMLValidator;
   import flash.events.MouseEvent;
   
   public class FurnitureLogic extends MovingObjectLogic
   {
      
      private static const const_467:int = 8;
      
      private static const const_1081:Number = 0.0625;
       
      
      private var var_1215:Boolean = false;
      
      private var var_532:Number = 0.0;
      
      private var var_639:Number = 0.0;
      
      private var var_1516:Number = 0.0;
      
      private var var_2518:Number = 0.0;
      
      private var var_2517:Number = 0.0;
      
      private var var_1859:Number = 0.0;
      
      private var var_1858:Boolean = false;
      
      private var var_375:int = 0;
      
      private var var_1216:RoomObjectUpdateMessage;
      
      private var var_1006:Vector3d;
      
      private var var_290:Array;
      
      public function FurnitureLogic()
      {
         this.var_1006 = new Vector3d();
         this.var_290 = [];
         super();
      }
      
      override public function getEventTypes() : Array
      {
         var _loc1_:Array = [RoomObjectRoomAdEvent.const_365,RoomObjectRoomAdEvent.const_359,RoomObjectRoomAdEvent.const_629,RoomObjectStateChangeEvent.const_67,RoomObjectMouseEvent.const_167,RoomObjectRoomAdEvent.const_207,RoomObjectMouseEvent.const_596];
         return getAllEventTypes(super.getEventTypes(),_loc1_);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_1216 = null;
         this.var_290 = null;
      }
      
      override public function set object(param1:IRoomObjectController) : void
      {
         super.object = param1;
         if(param1 != null && param1.getLocation().length > 0)
         {
            this.var_1858 = true;
         }
      }
      
      override public function initialize(param1:XML) : void
      {
         var _loc7_:* = null;
         var _loc8_:int = 0;
         if(param1 == null)
         {
            return;
         }
         this.var_532 = 0;
         this.var_639 = 0;
         this.var_1516 = 0;
         this.var_290 = [];
         var _loc2_:XMLList = param1.model.dimensions;
         if(_loc2_.length() == 0)
         {
            return;
         }
         var _loc3_:XMLList = _loc2_.@x;
         if(_loc3_.length() == 1)
         {
            this.var_532 = Number(_loc3_);
         }
         _loc3_ = _loc2_.@y;
         if(_loc3_.length() == 1)
         {
            this.var_639 = Number(_loc3_);
         }
         _loc3_ = _loc2_.@z;
         if(_loc3_.length() == 1)
         {
            this.var_1516 = Number(_loc3_);
         }
         this.var_2518 = this.var_532 / 2;
         this.var_2517 = this.var_639 / 2;
         _loc3_ = _loc2_.@centerZ;
         if(_loc3_.length() == 1)
         {
            this.var_1859 = Number(_loc3_);
         }
         else
         {
            this.var_1859 = this.var_1516 / 2;
         }
         var _loc4_:XMLList = param1.model.directions.direction;
         var _loc5_:* = ["id"];
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_.length())
         {
            _loc7_ = _loc4_[_loc6_];
            if(XMLValidator.checkRequiredAttributes(_loc7_,_loc5_))
            {
               _loc8_ = parseInt(_loc7_.@id);
               this.var_290.push(_loc8_);
            }
            _loc6_++;
         }
         this.var_290.sort(Array.NUMERIC);
         if(object == null || object.getModelController() == null)
         {
            return;
         }
         object.getModelController().setNumber(RoomObjectVariableEnum.const_275,this.var_532,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_352,this.var_639,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_550,this.var_1516,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_1919,this.var_2518,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_1932,this.var_2517,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_999,this.var_1859,true);
         object.getModelController().setNumberArray(RoomObjectVariableEnum.const_906,this.var_290,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_374,1);
      }
      
      protected function getAdClickUrl(param1:IRoomObjectModelController) : String
      {
         return param1.getString(RoomObjectVariableEnum.const_408);
      }
      
      protected function handleAdClick(param1:int, param2:String, param3:String) : void
      {
         if(eventDispatcher != null)
         {
            eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_207,param1,param2));
         }
      }
      
      override public function mouseEvent(param1:RoomSpriteMouseEvent, param2:IRoomGeometry) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(param1 == null || param2 == null)
         {
            return;
         }
         if(param1.type == MouseEvent.MOUSE_MOVE)
         {
            return;
         }
         if(object == null)
         {
            return;
         }
         var _loc3_:IRoomObjectModelController = object.getModel() as IRoomObjectModelController;
         if(_loc3_ == null)
         {
            return;
         }
         var _loc7_:String = this.getAdClickUrl(_loc3_);
         switch(param1.type)
         {
            case MouseEvent.ROLL_OVER:
               if(!this.var_1215)
               {
                  if(eventDispatcher != null && _loc7_ != null && _loc7_.indexOf("http") == 0)
                  {
                     _loc4_ = object.getId();
                     _loc5_ = object.getType();
                     eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_365,_loc4_,_loc5_));
                  }
                  this.var_1215 = true;
               }
               break;
            case MouseEvent.ROLL_OUT:
               if(this.var_1215)
               {
                  if(eventDispatcher != null && _loc7_ != null && _loc7_.indexOf("http") == 0)
                  {
                     _loc4_ = object.getId();
                     _loc5_ = object.getType();
                     eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_359,_loc4_,_loc5_));
                  }
                  this.var_1215 = false;
               }
               break;
            case MouseEvent.DOUBLE_CLICK:
               this.useObject();
               break;
            case MouseEvent.CLICK:
               _loc4_ = object.getId();
               _loc5_ = object.getType();
               if(eventDispatcher != null)
               {
                  _loc6_ = new RoomObjectMouseEvent(RoomObjectMouseEvent.const_167,param1.eventId,_loc4_,_loc5_,param1.altKey,param1.ctrlKey,param1.shiftKey,param1.buttonDown);
                  eventDispatcher.dispatchEvent(_loc6_);
               }
               if(eventDispatcher != null && _loc7_ != null && _loc7_.indexOf("http") == 0)
               {
                  this.handleAdClick(_loc4_,_loc5_,_loc7_);
               }
               break;
            case MouseEvent.MOUSE_DOWN:
               if(eventDispatcher != null)
               {
                  _loc4_ = object.getId();
                  _loc5_ = object.getType();
                  _loc6_ = new RoomObjectMouseEvent(RoomObjectMouseEvent.const_596,param1.eventId,_loc4_,_loc5_,param1.altKey,param1.ctrlKey,param1.shiftKey,param1.buttonDown);
                  eventDispatcher.dispatchEvent(_loc6_);
               }
         }
      }
      
      override public function useObject() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(object != null)
         {
            _loc1_ = object.getId();
            _loc2_ = object.getType();
            _loc3_ = object.getModel() as IRoomObjectModelController;
            if(_loc3_ != null)
            {
               _loc4_ = this.getAdClickUrl(_loc3_);
               if(eventDispatcher != null && _loc4_ != null && _loc4_.indexOf("http") == 0)
               {
                  eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_629,_loc1_,_loc2_));
               }
            }
            if(eventDispatcher != null)
            {
               eventDispatcher.dispatchEvent(new RoomObjectStateChangeEvent(RoomObjectStateChangeEvent.const_67,_loc1_,_loc2_));
            }
         }
      }
      
      private function handleDataUpdateMessage(param1:RoomObjectDataUpdateMessage) : void
      {
         var _loc2_:IRoomObjectModelController = object.getModelController();
         object.setState(param1.state,0);
         if(_loc2_ != null)
         {
            _loc2_.setString(RoomObjectVariableEnum.const_102,param1.data);
            if(!isNaN(param1.extra))
            {
               _loc2_.setString(RoomObjectVariableEnum.const_325,String(param1.extra));
            }
            _loc2_.setNumber(RoomObjectVariableEnum.const_954,lastUpdateTime);
         }
      }
      
      private function handleItemDataUpdateMessage(param1:RoomObjectItemDataUpdateMessage) : void
      {
         var _loc2_:IRoomObjectModelController = object.getModelController();
         if(_loc2_ != null)
         {
            _loc2_.setString(RoomObjectVariableEnum.const_1224,param1.itemData);
         }
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:RoomObjectDataUpdateMessage = param1 as RoomObjectDataUpdateMessage;
         if(_loc2_ != null)
         {
            this.handleDataUpdateMessage(_loc2_);
            return;
         }
         var _loc3_:RoomObjectItemDataUpdateMessage = param1 as RoomObjectItemDataUpdateMessage;
         if(_loc3_ != null)
         {
            this.handleItemDataUpdateMessage(_loc3_);
            return;
         }
         this.var_1215 = false;
         if(param1.dir != null && param1.loc != null)
         {
            if(!(param1 is RoomObjectMoveUpdateMessage))
            {
               _loc4_ = object.getDirection();
               _loc5_ = object.getLocation();
               if(_loc4_ != null && _loc4_.x != param1.dir.x && this.var_1858 && _loc5_ != null && _loc5_.x == param1.loc.x && _loc5_.y == param1.loc.y && _loc5_.z == param1.loc.z)
               {
                  this.var_375 = 1;
                  this.var_1216 = new RoomObjectUpdateMessage(param1.loc,param1.dir);
                  param1 = null;
               }
            }
            this.var_1858 = true;
         }
         super.processUpdateMessage(param1);
      }
      
      override protected function getLocationOffset() : IVector3d
      {
         if(this.var_375 > 0)
         {
            this.var_1006.x = 0;
            this.var_1006.y = 0;
            if(this.var_375 <= const_467 / 2)
            {
               this.var_1006.z = const_1081 * this.var_375;
            }
            else if(this.var_375 <= const_467)
            {
               if(this.var_1216)
               {
                  super.processUpdateMessage(this.var_1216);
                  this.var_1216 = null;
               }
               this.var_1006.z = const_1081 * (const_467 - this.var_375);
            }
            return this.var_1006;
         }
         return null;
      }
      
      override public function update(param1:int) : void
      {
         super.update(param1);
         if(this.var_375 > 0)
         {
            ++this.var_375;
            if(this.var_375 > const_467)
            {
               this.var_375 = 0;
            }
         }
      }
   }
}
