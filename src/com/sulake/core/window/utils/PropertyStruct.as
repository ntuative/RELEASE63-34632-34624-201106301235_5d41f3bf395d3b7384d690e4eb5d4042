package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_156:String = "hex";
      
      public static const const_35:String = "int";
      
      public static const const_299:String = "uint";
      
      public static const const_131:String = "Number";
      
      public static const const_38:String = "Boolean";
      
      public static const const_51:String = "String";
      
      public static const const_284:String = "Point";
      
      public static const const_260:String = "Rectangle";
      
      public static const const_153:String = "Array";
      
      public static const const_257:String = "Map";
       
      
      private var var_627:String;
      
      private var var_195:Object;
      
      private var _type:String;
      
      private var var_2369:Boolean;
      
      private var var_3065:Boolean;
      
      private var var_2368:Array;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean, param5:Array = null)
      {
         super();
         this.var_627 = param1;
         this.var_195 = param2;
         this._type = param3;
         this.var_2369 = param4;
         this.var_3065 = param3 == const_257 || param3 == const_153 || param3 == const_284 || param3 == const_260;
         this.var_2368 = param5;
      }
      
      public function get key() : String
      {
         return this.var_627;
      }
      
      public function get value() : Object
      {
         return this.var_195;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get valid() : Boolean
      {
         return this.var_2369;
      }
      
      public function get range() : Array
      {
         return this.var_2368;
      }
      
      public function toString() : String
      {
         switch(this._type)
         {
            case const_156:
               return "0x" + uint(this.var_195).toString(16);
            case const_38:
               return Boolean(this.var_195) == true ? "true" : "HabboFriendBarCom_im_notification_icon_png";
            case const_284:
               return "Point(" + Point(this.var_195).x + ", " + Point(this.var_195).y + ")";
            case const_260:
               return "Rectangle(" + Rectangle(this.var_195).x + ", " + Rectangle(this.var_195).y + ", " + Rectangle(this.var_195).width + ", " + Rectangle(this.var_195).height + ")";
            default:
               return String(this.value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(this._type)
         {
            case const_257:
               _loc3_ = this.var_195 as Map;
               _loc1_ = "<var key=\"" + this.var_627 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_153:
               _loc4_ = this.var_195 as Array;
               _loc1_ = "<var key=\"" + this.var_627 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_284:
               _loc5_ = this.var_195 as Point;
               _loc1_ = "<var key=\"" + this.var_627 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_35 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_35 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_260:
               _loc6_ = this.var_195 as Rectangle;
               _loc1_ = "<var key=\"" + this.var_627 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_35 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_35 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_35 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_35 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_156:
               _loc1_ = "<var key=\"" + this.var_627 + "\" value=\"" + "0x" + uint(this.var_195).toString(16) + "\" type=\"" + this._type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + this.var_627 + "\" value=\"" + this.var_195 + "\" type=\"" + this._type + "\" />";
         }
         return _loc1_;
      }
   }
}
