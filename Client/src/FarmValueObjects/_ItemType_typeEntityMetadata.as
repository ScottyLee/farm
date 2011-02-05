
/**
 * This is a generated class and is not intended for modification.  
 */
package FarmValueObjects
{
import FarmValueObjects.TypePic_type;
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
internal class _ItemType_typeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("name", "maxstate", "item_type_id", "TypePic");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("name", "maxstate", "item_type_id", "TypePic");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("name", "maxstate", "item_type_id", "TypePic");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("name", "maxstate", "item_type_id", "TypePic");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("TypePic");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "ItemType_type";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _nameIsValid:Boolean;
    model_internal var _nameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nameIsValidCacheInitialized:Boolean = false;
    model_internal var _nameValidationFailureMessages:Array;
    
    model_internal var _maxstateIsValid:Boolean;
    model_internal var _maxstateValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _maxstateIsValidCacheInitialized:Boolean = false;
    model_internal var _maxstateValidationFailureMessages:Array;
    
    model_internal var _item_type_idIsValid:Boolean;
    model_internal var _item_type_idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _item_type_idIsValidCacheInitialized:Boolean = false;
    model_internal var _item_type_idValidationFailureMessages:Array;
    
    model_internal var _TypePicIsValid:Boolean;
    model_internal var _TypePicValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _TypePicIsValidCacheInitialized:Boolean = false;
    model_internal var _TypePicValidationFailureMessages:Array;

    model_internal var _instance:_Super_ItemType_type;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _ItemType_typeEntityMetadata(value : _Super_ItemType_type)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["name"] = new Array();
            model_internal::dependentsOnMap["maxstate"] = new Array();
            model_internal::dependentsOnMap["item_type_id"] = new Array();
            model_internal::dependentsOnMap["TypePic"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
            model_internal::collectionBaseMap["TypePic"] = "FarmValueObjects.TypePic_type";
        }

        model_internal::_instance = value;
        model_internal::_nameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForName);
        model_internal::_nameValidator.required = true;
        model_internal::_nameValidator.requiredFieldError = "name is required";
        //model_internal::_nameValidator.source = model_internal::_instance;
        //model_internal::_nameValidator.property = "name";
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
        model_internal::_TypePicValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTypePic);
        model_internal::_TypePicValidator.required = true;
        model_internal::_TypePicValidator.requiredFieldError = "TypePic is required";
        //model_internal::_TypePicValidator.source = model_internal::_instance;
        //model_internal::_TypePicValidator.property = "TypePic";
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
            throw new Error(propertyName + " is not a data property of entity ItemType_type");  
            
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
            throw new Error(propertyName + " is not a collection property of entity ItemType_type");  

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
            throw new Error(propertyName + " does not exist for entity ItemType_type");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity ItemType_type");
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
            throw new Error(propertyName + " does not exist for entity ItemType_type");
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
    public function get isNameAvailable():Boolean
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
    public function get isTypePicAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnName():void
    {
        if (model_internal::_nameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfName = null;
            model_internal::calculateNameIsValid();
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
    public function invalidateDependentOnTypePic():void
    {
        if (model_internal::_TypePicIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTypePic = null;
            model_internal::calculateTypePicIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get nameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get nameValidator() : StyleValidator
    {
        return model_internal::_nameValidator;
    }

    model_internal function set _nameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_nameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_nameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get nameIsValid():Boolean
    {
        if (!model_internal::_nameIsValidCacheInitialized)
        {
            model_internal::calculateNameIsValid();
        }

        return model_internal::_nameIsValid;
    }

    model_internal function calculateNameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_nameValidator.validate(model_internal::_instance.name)
        model_internal::_nameIsValid_der = (valRes.results == null);
        model_internal::_nameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::nameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::nameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get nameValidationFailureMessages():Array
    {
        if (model_internal::_nameValidationFailureMessages == null)
            model_internal::calculateNameIsValid();

        return _nameValidationFailureMessages;
    }

    model_internal function set nameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_nameValidationFailureMessages;

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
            model_internal::_nameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nameValidationFailureMessages", oldValue, value));
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
    public function get TypePicStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get TypePicValidator() : StyleValidator
    {
        return model_internal::_TypePicValidator;
    }

    model_internal function set _TypePicIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_TypePicIsValid;         
        if (oldValue !== value)
        {
            model_internal::_TypePicIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TypePicIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get TypePicIsValid():Boolean
    {
        if (!model_internal::_TypePicIsValidCacheInitialized)
        {
            model_internal::calculateTypePicIsValid();
        }

        return model_internal::_TypePicIsValid;
    }

    model_internal function calculateTypePicIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_TypePicValidator.validate(model_internal::_instance.TypePic)
        model_internal::_TypePicIsValid_der = (valRes.results == null);
        model_internal::_TypePicIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::TypePicValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::TypePicValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get TypePicValidationFailureMessages():Array
    {
        if (model_internal::_TypePicValidationFailureMessages == null)
            model_internal::calculateTypePicIsValid();

        return _TypePicValidationFailureMessages;
    }

    model_internal function set TypePicValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_TypePicValidationFailureMessages;

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
            model_internal::_TypePicValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TypePicValidationFailureMessages", oldValue, value));
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
            case("name"):
            {
                return nameValidationFailureMessages;
            }
            case("maxstate"):
            {
                return maxstateValidationFailureMessages;
            }
            case("item_type_id"):
            {
                return item_type_idValidationFailureMessages;
            }
            case("TypePic"):
            {
                return TypePicValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
