package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1835:IID;
      
      private var var_1152:Boolean;
      
      private var var_1207:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1835 = param1;
         this.var_1207 = new Array();
         this.var_1152 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1835;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1152;
      }
      
      public function get receivers() : Array
      {
         return this.var_1207;
      }
      
      public function dispose() : void
      {
         if(!this.var_1152)
         {
            this.var_1152 = true;
            this.var_1835 = null;
            while(this.var_1207.length > 0)
            {
               this.var_1207.pop();
            }
            this.var_1207 = null;
         }
      }
   }
}
