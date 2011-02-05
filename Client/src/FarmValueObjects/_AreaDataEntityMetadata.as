
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
internal class _AreaDataEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("Field", "AreaType", "ToolBox");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("Field", "AreaType", "ToolBox");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("Field", "AreaType", "ToolBox");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("Field", "AreaType", "ToolBox");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "AreaData";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _FieldIsValid:Boolean;
    model_internal var _FieldValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _FieldIsValidCacheInitialized:Boolean = false;
    model_internal var _FieldValidationFailureMessages:Array;
    
    model_internal var _AreaTypeIsValid:Boolean;
    model_internal var _AreaTypeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _AreaTypeIsValidCacheInitialized:Boolean = false;
    model_internal var _AreaTypeValidationFailureMessages:Array;
    
    model_internal var _ToolBoxIsValid:Boolean;
    model_internal var _ToolBoxValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _ToolBoxIsValidCacheInitialized:Boolean = false;
    model_internal var _ToolBoxValidationFailureMessages:Array;

    model_internal var _instance:_Super_AreaData;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _AreaDataEntityMetadata(value : _Super_AreaData)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["Field"] = new Array();
            model_internal::dependentsOnMap["AreaType"] = new Array();
            model_internal::dependentsOnMap["ToolBox"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
        }

        model_internal::_instance = value;
        model_internal::_FieldValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForField);
        model_internal::_FieldValidator.required = true;
        model_internal::_FieldValidator.requiredFieldError = "Field is required";
        //model_internal::_FieldValidator.source = model_internal::_instance;
        //model_internal::_FieldValidator.property = "Field";
        model_internal::_AreaTypeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAreaType);
        model_internal::_AreaTypeValidator.required = true;
        model_internal::_AreaTypeValidator.requiredFieldError = "AreaType is required";
        //model_internal::_AreaTypeValidator.source = model_internal::_instance;
        //model_internal::_AreaTypeValidator.property = "AreaType";
        model_internal::_ToolBoxValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForToolBox);
        model_internal::_ToolBoxValidator.required = true;
        model_internal::_ToolBoxValidator.requiredFieldError = "ToolBox is required";
        //model_internal::_ToolBoxValidator.source = model_internal::_instance;
        //model_internal::_ToolBoxValidator.property = "ToolBox";
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
            throw new Error(propertyName + " is not a data property of entity AreaData");  
            
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
            throw new Error(propertyName + " is not a collection property of entity AreaData");  

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
            throw new Error(propertyName + " does not exist for entity AreaData");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity AreaData");
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
            throw new Error(propertyName + " does not exist for entity AreaData");
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
    public function get isFieldAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAreaTypeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isToolBoxAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnField():void
    {
        if (model_internal::_FieldIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfField = null;
            model_internal::calculateFieldIsValid();
        }
    }
    public function invalidateDependentOnAreaType():void
    {
        if (model_internal::_AreaTypeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAreaType = null;
            model_internal::calculateAreaTypeIsValid();
        }
    }
    public function invalidateDependentOnToolBox():void
    {
        if (model_internal::_ToolBoxIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfToolBox = null;
            model_internal::calculateToolBoxIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get FieldStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get FieldValidator() : StyleValidator
    {
        return model_internal::_FieldValidator;
    }

    model_internal function set _FieldIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_FieldIsValid;         
        if (oldValue !== value)
        {
            model_internal::_FieldIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "FieldIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get FieldIsValid():Boolean
    {
        if (!model_internal::_FieldIsValidCacheInitialized)
        {
            model_internal::calculateFieldIsValid();
        }

        return model_internal::_FieldIsValid;
    }

    model_internal function calculateFieldIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_FieldValidator.validate(model_internal::_instance.Field)
        model_internal::_FieldIsValid_der = (valRes.results == null);
        model_internal::_FieldIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::FieldValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::FieldValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get FieldValidationFailureMessages():Array
    {
        if (model_internal::_FieldValidationFailureMessages == null)
            model_internal::calculateFieldIsValid();

        return _FieldValidationFailureMessages;
    }

    model_internal function set FieldValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_FieldValidationFailureMessages;

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
            model_internal::_FieldValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "FieldValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get AreaTypeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get AreaTypeValidator() : StyleValidator
    {
        return model_internal::_AreaTypeValidator;
    }

    model_internal function set _AreaTypeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_AreaTypeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_AreaTypeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "AreaTypeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get AreaTypeIsValid():Boolean
    {
        if (!model_internal::_AreaTypeIsValidCacheInitialized)
        {
            model_internal::calculateAreaTypeIsValid();
        }

        return model_internal::_AreaTypeIsValid;
    }

    model_internal function calculateAreaTypeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_AreaTypeValidator.validate(model_internal::_instance.AreaType)
        model_internal::_AreaTypeIsValid_der = (valRes.results == null);
        model_internal::_AreaTypeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::AreaTypeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::AreaTypeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get AreaTypeValidationFailureMessages():Array
    {
        if (model_internal::_AreaTypeValidationFailureMessages == null)
            model_internal::calculateAreaTypeIsValid();

        return _AreaTypeValidationFailureMessages;
    }

    model_internal function set AreaTypeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_AreaTypeValidationFailureMessages;

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
            model_internal::_AreaTypeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "AreaTypeValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get ToolBoxStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get ToolBoxValidator() : StyleValidator
    {
        return model_internal::_ToolBoxValidator;
    }

    model_internal function set _ToolBoxIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_ToolBoxIsValid;         
        if (oldValue !== value)
        {
            model_internal::_ToolBoxIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ToolBoxIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get ToolBoxIsValid():Boolean
    {
        if (!model_internal::_ToolBoxIsValidCacheInitialized)
        {
            model_internal::calculateToolBoxIsValid();
        }

        return model_internal::_ToolBoxIsValid;
    }

    model_internal function calculateToolBoxIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_ToolBoxValidator.validate(model_internal::_instance.ToolBox)
        model_internal::_ToolBoxIsValid_der = (valRes.results == null);
        model_internal::_ToolBoxIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::ToolBoxValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::ToolBoxValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get ToolBoxValidationFailureMessages():Array
    {
        if (model_internal::_ToolBoxValidationFailureMessages == null)
            model_internal::calculateToolBoxIsValid();

        return _ToolBoxValidationFailureMessages;
    }

    model_internal function set ToolBoxValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_ToolBoxValidationFailureMessages;

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
            model_internal::_ToolBoxValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ToolBoxValidationFailureMessages", oldValue, value));
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
            case("Field"):
            {
                return FieldValidationFailureMessages;
            }
            case("AreaType"):
            {
                return AreaTypeValidationFailureMessages;
            }
            case("ToolBox"):
            {
                return ToolBoxValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
