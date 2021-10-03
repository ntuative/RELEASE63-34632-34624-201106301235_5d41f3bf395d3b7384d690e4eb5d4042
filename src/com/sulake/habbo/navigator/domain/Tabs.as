package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_363:int = 1;
      
      public static const const_231:int = 2;
      
      public static const const_285:int = 3;
      
      public static const const_378:int = 4;
      
      public static const const_262:int = 5;
      
      public static const const_444:int = 1;
      
      public static const const_901:int = 2;
      
      public static const const_816:int = 3;
      
      public static const const_813:int = 4;
      
      public static const const_289:int = 5;
      
      public static const const_739:int = 6;
      
      public static const const_795:int = 7;
      
      public static const const_400:int = 8;
      
      public static const const_584:int = 9;
      
      public static const const_2199:int = 10;
      
      public static const const_807:int = 11;
      
      public static const const_670:int = 12;
       
      
      private var var_488:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_488 = new Array();
         this.var_488.push(new Tab(this._navigator,const_363,const_670,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_647));
         this.var_488.push(new Tab(this._navigator,const_231,const_444,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_647));
         this.var_488.push(new Tab(this._navigator,const_378,const_807,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1333));
         this.var_488.push(new Tab(this._navigator,const_285,const_289,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_647));
         this.var_488.push(new Tab(this._navigator,const_262,const_400,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_1394));
         this.setSelectedTab(const_363);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_378;
      }
      
      public function get tabs() : Array
      {
         return this.var_488;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_488)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_488)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_488)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
