
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
internal class _StorageEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("lastitem", "volume");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("lastitem", "volume");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("lastitem", "volume");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("lastitem", "volume");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Storage";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _lastitemIsValid:Boolean;
    model_internal var _lastitemValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _lastitemIsValidCacheInitialized:Boolean = false;
    model_internal var _lastitemValidationFailureMessages:Array;

    model_internal var _instance:_Super_Storage;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _StorageEntityMetadata(value : _Super_Storage)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["lastitem"] = new Array();
            model_internal::dependentsOnMap["volume"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
        }

        model_internal::_instance = value;
        model_internal::_lastitemValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLastitem);
        model_internal::_lastitemValidator.required = true;
        model_internal::_lastitemValidator.requiredFieldError = "lastitem is required";
        //model_internal::_lastitemValidator.source = model_internal::_instance;
        //model_internal::_lastitemValidator.property = "lastitem";
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
            throw new Error(propertyName + " is not a data property of entity Storage");  
            
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
            throw new Error(propertyName + " is not a collection property of entity Storage");  

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
            throw new Error(propertyName + " does not exist for entity Storage");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity Storage");
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
            throw new Error(propertyName + " does not exist for entity Storage");
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
    public function get isLastitemAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isVolumeAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnLastitem():void
    {
        if (model_internal::_lastitemIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLastitem = null;
            model_internal::calculateLastitemIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get lastitemStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get lastitemValidator() : StyleValidator
    {
        return model_internal::_lastitemValidator;
    }

    model_internal function set _lastitemIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_lastitemIsValid;         
        if (oldValue !== value)
        {
            model_internal::_lastitemIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lastitemIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get lastitemIsValid():Boolean
    {
        if (!model_internal::_lastitemIsValidCacheInitialized)
        {
            model_internal::calculateLastitemIsValid();
        }

        return model_internal::_lastitemIsValid;
    }

    model_internal function calculateLastitemIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_lastitemValidator.validate(model_internal::_instance.lastitem)
        model_internal::_lastitemIsValid_der = (valRes.results == null);
        model_internal::_lastitemIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::lastitemValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::lastitemValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get lastitemValidationFailureMessages():Array
    {
        if (model_internal::_lastitemValidationFailureMessages == null)
            model_internal::calculateLastitemIsValid();

        return _lastitemValidationFailureMessages;
    }

    model_internal function set lastitemValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_lastitemValidationFailureMessages;

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
            model_internal::_lastitemValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lastitemValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get volumeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
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
            case("lastitem"):
            {
                return lastitemValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
