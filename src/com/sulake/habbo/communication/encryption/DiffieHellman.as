package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_988:BigInteger;
      
      private var var_2664:BigInteger;
      
      private var var_1970:BigInteger;
      
      private var var_2665:BigInteger;
      
      private var var_1569:BigInteger;
      
      private var var_1971:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1569 = param1;
         this.var_1971 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1569.toString() + ",generator: " + this.var_1971.toString() + ",secret: " + param1);
         this.var_988 = new BigInteger();
         this.var_988.fromRadix(param1,param2);
         this.var_2664 = this.var_1971.modPow(this.var_988,this.var_1569);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1970 = new BigInteger();
         this.var_1970.fromRadix(param1,param2);
         this.var_2665 = this.var_1970.modPow(this.var_988,this.var_1569);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2664.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2665.toRadix(param1);
      }
   }
}
