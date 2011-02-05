
/**
 * This is a generated class and is not intended for modification.  
 */
package FarmValueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.styles.StyleValidator;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _ToolBox_typeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("IncButton", "DecButton", "CollectButton", "StorageButton");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("IncButton", "DecButton", "CollectButton", "StorageButton");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("IncButton", "DecButton", "CollectButton", "StorageButton");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("IncButton", "DecButton", "CollectButton", "StorageButton");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "ToolBox_type";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _IncButtonIsValid:Boolean;
    model_internal var _IncButtonValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _IncButtonIsValidCacheInitialized:Boolean = false;
    model_internal var _IncButtonValidationFailureMessages:Array;
    
    model_internal var _DecButtonIsValid:Boolean;
    model_internal var _DecButtonValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _DecButtonIsValidCacheInitialized:Boolean = false;
    model_internal var _DecButtonValidationFailureMessages:Array;
    
    model_internal var _CollectButtonIsValid:Boolean;
    model_internal var _CollectButtonValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _CollectButtonIsValidCacheInitialized:Boolean = false;
    model_internal var _CollectButtonValidationFailureMessages:Array;
    
    model_internal var _StorageButtonIsValid:Boolean;
    model_internal var _StorageButtonValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _StorageButtonIsValidCacheInitialized:Boolean = false;
    model_internal var _StorageButtonValidationFailureMessages:Array;

    model_internal var _instance:_Super_ToolBox_type;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _ToolBox_typeEntityMetadata(value : _Super_ToolBox_type)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["IncButton"] = new Array();
            model_internal::dependentsOnMap["DecButton"] = new Array();
            model_internal::dependentsOnMap["CollectButton"] = new Array();
            model_internal::dependentsOnMap["StorageButton"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
        }

        model_internal::_instance = value;
        model_internal::_IncButtonValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForIncButton);
        model_internal::_IncButtonValidator.required = true;
        model_internal::_IncButtonValidator.requiredFieldError = "IncButton is required";
        //model_internal::_IncButtonValidator.source = model_internal::_instance;
        //model_internal::_IncButtonValidator.property = "IncButton";
        model_internal::_DecButtonValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDecButton);
        model_internal::_DecButtonValidator.required = true;
        model_internal::_DecButtonValidator.requiredFieldError = "DecButton is required";
        //model_internal::_DecButtonValidator.source = model_internal::_instance;
        //model_internal::_DecButtonValidator.property = "DecButton";
        model_internal::_CollectButtonValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCollectButton);
        model_internal::_CollectButtonValidator.required = true;
        model_internal::_CollectButtonValidator.requiredFieldError = "CollectButton is required";
        //model_internal::_CollectButtonValidator.source = model_internal::_instance;
        //model_internal::_CollectButtonValidator.property = "CollectButton";
        model_internal::_StorageButtonValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForStorageButton);
        model_internal::_StorageButtonValidator.required = true;
        model_internal::_StorageButtonValidator.requiredFieldError = "StorageButton is required";
        //model_internal::_StorageButtonValidator.source = model_internal::_instance;
        //model_internal::_StorageButtonValidator.property = "StorageButton";
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::dataProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity ToolBox_type");  
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity ToolBox_type");  

        return model_internal::collectionBaseMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity ToolBox_type");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity ToolBox_type");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity ToolBox_type");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isIncButtonAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDecButtonAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCollectButtonAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isStorageButtonAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnIncButton():void
    {
        if (model_internal::_IncButtonIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfIncButton = null;
            model_internal::calculateIncButtonIsValid();
        }
    }
    public function invalidateDependentOnDecButton():void
    {
        if (model_internal::_DecButtonIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDecButton = null;
            model_internal::calculateDecButtonIsValid();
        }
    }
    public function invalidateDependentOnCollectButton():void
    {
        if (model_internal::_CollectButtonIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCollectButton = null;
            model_internal::calculateCollectButtonIsValid();
        }
    }
    public function invalidateDependentOnStorageButton():void
    {
        if (model_internal::_StorageButtonIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfStorageButton = null;
            model_internal::calculateStorageButtonIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get IncButtonStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get IncButtonValidator() : StyleValidator
    {
        return model_internal::_IncButtonValidator;
    }

    model_internal function set _IncButtonIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_IncButtonIsValid;         
        if (oldValue !== value)
        {
            model_internal::_IncButtonIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "IncButtonIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get IncButtonIsValid():Boolean
    {
        if (!model_internal::_IncButtonIsValidCacheInitialized)
        {
            model_internal::calculateIncButtonIsValid();
        }

        return model_internal::_IncButtonIsValid;
    }

    model_internal function calculateIncButtonIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_IncButtonValidator.validate(model_internal::_instance.IncButton)
        model_internal::_IncButtonIsValid_der = (valRes.results == null);
        model_internal::_IncButtonIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::IncButtonValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::IncButtonValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get IncButtonValidationFailureMessages():Array
    {
        if (model_internal::_IncButtonValidationFailureMessages == null)
            model_internal::calculateIncButtonIsValid();

        return _IncButtonValidationFailureMessages;
    }

    model_internal function set IncButtonValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_IncButtonValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_IncButtonValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "IncButtonValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get DecButtonStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get DecButtonValidator() : StyleValidator
    {
        return model_internal::_DecButtonValidator;
    }

    model_internal function set _DecButtonIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_DecButtonIsValid;         
        if (oldValue !== value)
        {
            model_internal::_DecButtonIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "DecButtonIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get DecButtonIsValid():Boolean
    {
        if (!model_internal::_DecButtonIsValidCacheInitialized)
        {
            model_internal::calculateDecButtonIsValid();
        }

        return model_internal::_DecButtonIsValid;
    }

    model_internal function calculateDecButtonIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_DecButtonValidator.validate(model_internal::_instance.DecButton)
        model_internal::_DecButtonIsValid_der = (valRes.results == null);
        model_internal::_DecButtonIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::DecButtonValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::DecButtonValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get DecButtonValidationFailureMessages():Array
    {
        if (model_internal::_DecButtonValidationFailureMessages == null)
            model_internal::calculateDecButtonIsValid();

        return _DecButtonValidationFailureMessages;
    }

    model_internal function set DecButtonValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_DecButtonValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_DecButtonValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "DecButtonValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get CollectButtonStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get CollectButtonValidator() : StyleValidator
    {
        return model_internal::_CollectButtonValidator;
    }

    model_internal function set _CollectButtonIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_CollectButtonIsValid;         
        if (oldValue !== value)
        {
            model_internal::_CollectButtonIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "CollectButtonIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get CollectButtonIsValid():Boolean
    {
        if (!model_internal::_CollectButtonIsValidCacheInitialized)
        {
            model_internal::calculateCollectButtonIsValid();
        }

        return model_internal::_CollectButtonIsValid;
    }

    model_internal function calculateCollectButtonIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_CollectButtonValidator.validate(model_internal::_instance.CollectButton)
        model_internal::_CollectButtonIsValid_der = (valRes.results == null);
        model_internal::_CollectButtonIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::CollectButtonValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::CollectButtonValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get CollectButtonValidationFailureMessages():Array
    {
        if (model_internal::_CollectButtonValidationFailureMessages == null)
            model_internal::calculateCollectButtonIsValid();

        return _CollectButtonValidationFailureMessages;
    }

    model_internal function set CollectButtonValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_CollectButtonValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_CollectButtonValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "CollectButtonValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get StorageButtonStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get StorageButtonValidator() : StyleValidator
    {
        return model_internal::_StorageButtonValidator;
    }

    model_internal function set _StorageButtonIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_StorageButtonIsValid;         
        if (oldValue !== value)
        {
            model_internal::_StorageButtonIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "StorageButtonIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get StorageButtonIsValid():Boolean
    {
        if (!model_internal::_StorageButtonIsValidCacheInitialized)
        {
            model_internal::calculateStorageButtonIsValid();
        }

        return model_internal::_StorageButtonIsValid;
    }

    model_internal function calculateStorageButtonIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_StorageButtonValidator.validate(model_internal::_instance.StorageButton)
        model_internal::_StorageButtonIsValid_der = (valRes.results == null);
        model_internal::_StorageButtonIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::StorageButtonValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::StorageButtonValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get StorageButtonValidationFailureMessages():Array
    {
        if (model_internal::_StorageButtonValidationFailureMessages == null)
            model_internal::calculateStorageButtonIsValid();

        return _StorageButtonValidationFailureMessages;
    }

    model_internal function set StorageButtonValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_StorageButtonValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_StorageButtonValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "StorageButtonValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            case("IncButton"):
            {
                return IncButtonValidationFailureMessages;
            }
            case("DecButton"):
            {
                return DecButtonValidationFailureMessages;
            }
            case("CollectButton"):
            {
                return CollectButtonValidationFailureMessages;
            }
            case("StorageButton"):
            {
                return StorageButtonValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
