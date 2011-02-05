
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
internal class _AreaItem_typeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("x", "y", "id", "maxstate", "item_type_id", "state");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("x", "y", "id", "maxstate", "item_type_id", "state");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("x", "y", "id", "maxstate", "item_type_id", "state");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("x", "y", "id", "maxstate", "item_type_id", "state");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "AreaItem_type";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _xIsValid:Boolean;
    model_internal var _xValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _xIsValidCacheInitialized:Boolean = false;
    model_internal var _xValidationFailureMessages:Array;
    
    model_internal var _yIsValid:Boolean;
    model_internal var _yValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _yIsValidCacheInitialized:Boolean = false;
    model_internal var _yValidationFailureMessages:Array;
    
    model_internal var _idIsValid:Boolean;
    model_internal var _idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _idIsValidCacheInitialized:Boolean = false;
    model_internal var _idValidationFailureMessages:Array;
    
    model_internal var _maxstateIsValid:Boolean;
    model_internal var _maxstateValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _maxstateIsValidCacheInitialized:Boolean = false;
    model_internal var _maxstateValidationFailureMessages:Array;
    
    model_internal var _item_type_idIsValid:Boolean;
    model_internal var _item_type_idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _item_type_idIsValidCacheInitialized:Boolean = false;
    model_internal var _item_type_idValidationFailureMessages:Array;
    
    model_internal var _stateIsValid:Boolean;
    model_internal var _stateValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _stateIsValidCacheInitialized:Boolean = false;
    model_internal var _stateValidationFailureMessages:Array;

    model_internal var _instance:_Super_AreaItem_type;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _AreaItem_typeEntityMetadata(value : _Super_AreaItem_type)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["x"] = new Array();
            model_internal::dependentsOnMap["y"] = new Array();
            model_internal::dependentsOnMap["id"] = new Array();
            model_internal::dependentsOnMap["maxstate"] = new Array();
            model_internal::dependentsOnMap["item_type_id"] = new Array();
            model_internal::dependentsOnMap["state"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
        }

        model_internal::_instance = value;
        model_internal::_xValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForX);
        model_internal::_xValidator.required = true;
        model_internal::_xValidator.requiredFieldError = "x is required";
        //model_internal::_xValidator.source = model_internal::_instance;
        //model_internal::_xValidator.property = "x";
        model_internal::_yValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForY);
        model_internal::_yValidator.required = true;
        model_internal::_yValidator.requiredFieldError = "y is required";
        //model_internal::_yValidator.source = model_internal::_instance;
        //model_internal::_yValidator.property = "y";
        model_internal::_idValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForId);
        model_internal::_idValidator.required = true;
        model_internal::_idValidator.requiredFieldError = "id is required";
        //model_internal::_idValidator.source = model_internal::_instance;
        //model_internal::_idValidator.property = "id";
        model_internal::_maxstateValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForMaxstate);
        model_internal::_maxstateValidator.required = true;
        model_internal::_maxstateValidator.requiredFieldError = "maxstate is required";
        //model_internal::_maxstateValidator.source = model_internal::_instance;
        //model_internal::_maxstateValidator.property = "maxstate";
        model_internal::_item_type_idValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForItem_type_id);
        model_internal::_item_type_idValidator.required = true;
        model_internal::_item_type_idValidator.requiredFieldError = "item_type_id is required";
        //model_internal::_item_type_idValidator.source = model_internal::_instance;
        //model_internal::_item_type_idValidator.property = "item_type_id";
        model_internal::_stateValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForState);
        model_internal::_stateValidator.required = true;
        model_internal::_stateValidator.requiredFieldError = "state is required";
        //model_internal::_stateValidator.source = model_internal::_instance;
        //model_internal::_stateValidator.property = "state";
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
            throw new Error(propertyName + " is not a data property of entity AreaItem_type");  
            
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
            throw new Error(propertyName + " is not a collection property of entity AreaItem_type");  

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
            throw new Error(propertyName + " does not exist for entity AreaItem_type");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity AreaItem_type");
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
            throw new Error(propertyName + " does not exist for entity AreaItem_type");
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
    public function get isXAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isYAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isMaxstateAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isItem_type_idAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isStateAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnX():void
    {
        if (model_internal::_xIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfX = null;
            model_internal::calculateXIsValid();
        }
    }
    public function invalidateDependentOnY():void
    {
        if (model_internal::_yIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfY = null;
            model_internal::calculateYIsValid();
        }
    }
    public function invalidateDependentOnId():void
    {
        if (model_internal::_idIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfId = null;
            model_internal::calculateIdIsValid();
        }
    }
    public function invalidateDependentOnMaxstate():void
    {
        if (model_internal::_maxstateIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfMaxstate = null;
            model_internal::calculateMaxstateIsValid();
        }
    }
    public function invalidateDependentOnItem_type_id():void
    {
        if (model_internal::_item_type_idIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfItem_type_id = null;
            model_internal::calculateItem_type_idIsValid();
        }
    }
    public function invalidateDependentOnState():void
    {
        if (model_internal::_stateIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfState = null;
            model_internal::calculateStateIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get xStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get xValidator() : StyleValidator
    {
        return model_internal::_xValidator;
    }

    model_internal function set _xIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_xIsValid;         
        if (oldValue !== value)
        {
            model_internal::_xIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "xIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get xIsValid():Boolean
    {
        if (!model_internal::_xIsValidCacheInitialized)
        {
            model_internal::calculateXIsValid();
        }

        return model_internal::_xIsValid;
    }

    model_internal function calculateXIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_xValidator.validate(model_internal::_instance.x)
        model_internal::_xIsValid_der = (valRes.results == null);
        model_internal::_xIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::xValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::xValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get xValidationFailureMessages():Array
    {
        if (model_internal::_xValidationFailureMessages == null)
            model_internal::calculateXIsValid();

        return _xValidationFailureMessages;
    }

    model_internal function set xValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_xValidationFailureMessages;

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
            model_internal::_xValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "xValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get yStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get yValidator() : StyleValidator
    {
        return model_internal::_yValidator;
    }

    model_internal function set _yIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_yIsValid;         
        if (oldValue !== value)
        {
            model_internal::_yIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "yIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get yIsValid():Boolean
    {
        if (!model_internal::_yIsValidCacheInitialized)
        {
            model_internal::calculateYIsValid();
        }

        return model_internal::_yIsValid;
    }

    model_internal function calculateYIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_yValidator.validate(model_internal::_instance.y)
        model_internal::_yIsValid_der = (valRes.results == null);
        model_internal::_yIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::yValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::yValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get yValidationFailureMessages():Array
    {
        if (model_internal::_yValidationFailureMessages == null)
            model_internal::calculateYIsValid();

        return _yValidationFailureMessages;
    }

    model_internal function set yValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_yValidationFailureMessages;

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
            model_internal::_yValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "yValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get idStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get idValidator() : StyleValidator
    {
        return model_internal::_idValidator;
    }

    model_internal function set _idIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_idIsValid;         
        if (oldValue !== value)
        {
            model_internal::_idIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get idIsValid():Boolean
    {
        if (!model_internal::_idIsValidCacheInitialized)
        {
            model_internal::calculateIdIsValid();
        }

        return model_internal::_idIsValid;
    }

    model_internal function calculateIdIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_idValidator.validate(model_internal::_instance.id)
        model_internal::_idIsValid_der = (valRes.results == null);
        model_internal::_idIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::idValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::idValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get idValidationFailureMessages():Array
    {
        if (model_internal::_idValidationFailureMessages == null)
            model_internal::calculateIdIsValid();

        return _idValidationFailureMessages;
    }

    model_internal function set idValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_idValidationFailureMessages;

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
            model_internal::_idValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get maxstateStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get maxstateValidator() : StyleValidator
    {
        return model_internal::_maxstateValidator;
    }

    model_internal function set _maxstateIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_maxstateIsValid;         
        if (oldValue !== value)
        {
            model_internal::_maxstateIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "maxstateIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get maxstateIsValid():Boolean
    {
        if (!model_internal::_maxstateIsValidCacheInitialized)
        {
            model_internal::calculateMaxstateIsValid();
        }

        return model_internal::_maxstateIsValid;
    }

    model_internal function calculateMaxstateIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_maxstateValidator.validate(model_internal::_instance.maxstate)
        model_internal::_maxstateIsValid_der = (valRes.results == null);
        model_internal::_maxstateIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::maxstateValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::maxstateValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get maxstateValidationFailureMessages():Array
    {
        if (model_internal::_maxstateValidationFailureMessages == null)
            model_internal::calculateMaxstateIsValid();

        return _maxstateValidationFailureMessages;
    }

    model_internal function set maxstateValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_maxstateValidationFailureMessages;

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
            model_internal::_maxstateValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "maxstateValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get item_type_idStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get item_type_idValidator() : StyleValidator
    {
        return model_internal::_item_type_idValidator;
    }

    model_internal function set _item_type_idIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_item_type_idIsValid;         
        if (oldValue !== value)
        {
            model_internal::_item_type_idIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "item_type_idIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get item_type_idIsValid():Boolean
    {
        if (!model_internal::_item_type_idIsValidCacheInitialized)
        {
            model_internal::calculateItem_type_idIsValid();
        }

        return model_internal::_item_type_idIsValid;
    }

    model_internal function calculateItem_type_idIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_item_type_idValidator.validate(model_internal::_instance.item_type_id)
        model_internal::_item_type_idIsValid_der = (valRes.results == null);
        model_internal::_item_type_idIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::item_type_idValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::item_type_idValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get item_type_idValidationFailureMessages():Array
    {
        if (model_internal::_item_type_idValidationFailureMessages == null)
            model_internal::calculateItem_type_idIsValid();

        return _item_type_idValidationFailureMessages;
    }

    model_internal function set item_type_idValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_item_type_idValidationFailureMessages;

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
            model_internal::_item_type_idValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "item_type_idValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get stateStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get stateValidator() : StyleValidator
    {
        return model_internal::_stateValidator;
    }

    model_internal function set _stateIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_stateIsValid;         
        if (oldValue !== value)
        {
            model_internal::_stateIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "stateIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get stateIsValid():Boolean
    {
        if (!model_internal::_stateIsValidCacheInitialized)
        {
            model_internal::calculateStateIsValid();
        }

        return model_internal::_stateIsValid;
    }

    model_internal function calculateStateIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_stateValidator.validate(model_internal::_instance.state)
        model_internal::_stateIsValid_der = (valRes.results == null);
        model_internal::_stateIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::stateValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::stateValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get stateValidationFailureMessages():Array
    {
        if (model_internal::_stateValidationFailureMessages == null)
            model_internal::calculateStateIsValid();

        return _stateValidationFailureMessages;
    }

    model_internal function set stateValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_stateValidationFailureMessages;

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
            model_internal::_stateValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "stateValidationFailureMessages", oldValue, value));
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
            case("x"):
            {
                return xValidationFailureMessages;
            }
            case("y"):
            {
                return yValidationFailureMessages;
            }
            case("id"):
            {
                return idValidationFailureMessages;
            }
            case("maxstate"):
            {
                return maxstateValidationFailureMessages;
            }
            case("item_type_id"):
            {
                return item_type_idValidationFailureMessages;
            }
            case("state"):
            {
                return stateValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
