/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - FarmService.as.
 */
package services.farmservice
{
import com.adobe.fiber.core.model_internal;
import FarmValueObjects.AreaData;
import FarmValueObjects.AreaItem_type;
import FarmValueObjects.Message;
import FarmValueObjects.Storage;
import com.adobe.fiber.services.wrapper.HTTPServiceWrapper;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.http.HTTPMultiService;
import mx.rpc.http.Operation;

import com.adobe.serializers.xml.XMLSerializationFilter;

[ExcludeClass]
internal class _Super_FarmService extends com.adobe.fiber.services.wrapper.HTTPServiceWrapper
{
    private static var serializer0:XMLSerializationFilter = new XMLSerializationFilter();

    // Constructor
    public function _Super_FarmService()
    {
        // initialize service control
        _serviceControl = new mx.rpc.http.HTTPMultiService("http://localhost:3000/area/");
         var operations:Array = new Array();
         var operation:mx.rpc.http.Operation;
         var argsArray:Array;

         operation = new mx.rpc.http.Operation(null, "decrementAll");
         operation.url = "decall";
         operation.method = "GET";
         argsArray = new Array("id");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/";
         operation.resultType = FarmValueObjects.Message;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "getArea");
         operation.url = "getarea";
         operation.method = "GET";
         argsArray = new Array("id");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/";
         operation.resultType = FarmValueObjects.AreaData;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "incrementAll");
         operation.url = "incall";
         operation.method = "GET";
         argsArray = new Array("id");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/";
         operation.resultType = FarmValueObjects.Message;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "instalArea");
         operation.url = "inst";
         operation.method = "GET";
         operation.serializationFilter = serializer0;
         operation.resultType = FarmValueObjects.Message;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "setItem");
         operation.url = "plant";
         operation.method = "GET";
         argsArray = new Array("area","type","x","y","state");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/";
         operation.resultType = FarmValueObjects.AreaItem_type;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "collect");
         operation.url = "collect";
         operation.method = "GET";
         argsArray = new Array("area","item");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/";
         operation.resultType = FarmValueObjects.Storage;
         operations.push(operation);

         _serviceControl.operationList = operations;  



         model_internal::initialize();
    }

    /**
      * This method is a generated wrapper used to call the 'decrementAll' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function decrementAll(id:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("decrementAll");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(id) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getArea' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getArea(id:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getArea");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(id) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'incrementAll' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function incrementAll(id:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("incrementAll");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(id) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'instalArea' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function instalArea() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("instalArea");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'setItem' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function setItem(area:String, type:String, x:String, y:String, state:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("setItem");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(area,type,x,y,state) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'collect' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function collect(area:String, item:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("collect");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(area,item) ;

        return _internal_token;
    }
     
}

}
