/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - ItemType_type.as.
 */

package FarmValueObjects
{
import FarmValueObjects.TypePic_type;
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.collections.ArrayCollection;
import mx.events.CollectionEvent;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_ItemType_type extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        FarmValueObjects.TypePic_type.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _ItemType_typeEntityMetadata;

    /**
     * properties
     */
    private var _internal_name : String;
    private var _internal_maxstate : String;
    private var _internal_item_type_id : String;
    private var _internal_TypePic : ArrayCollection;
    model_internal var _internal_TypePic_leaf:FarmValueObjects.TypePic_type;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_ItemType_type()
    {
        _model = new _ItemType_typeEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "name", model_internal::setterListenerName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "maxstate", model_internal::setterListenerMaxstate));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "item_type_id", model_internal::setterListenerItem_type_id));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "TypePic", model_internal::setterListenerTypePic));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get maxstate() : String
    {
        return _internal_maxstate;
    }

    [Bindable(event="propertyChange")]
    public function get item_type_id() : String
    {
        return _internal_item_type_id;
    }

    [Bindable(event="propertyChange")]
    public function get TypePic() : ArrayCollection
    {
        return _internal_TypePic;
    }

    /**
     * data property setters
     */

    public function set name(value:String) : void
    {
        var oldValue:String = _internal_name;
        if (oldValue !== value)
        {
            _internal_name = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "name", oldValue, _internal_name));
        }
    }

    public function set maxstate(value:String) : void
    {
        var oldValue:String = _internal_maxstate;
        if (oldValue !== value)
        {
            _internal_maxstate = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "maxstate", oldValue, _internal_maxstate));
        }
    }

    public function set item_type_id(value:String) : void
    {
        var oldValue:String = _internal_item_type_id;
        if (oldValue !== value)
        {
            _internal_item_type_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "item_type_id", oldValue, _internal_item_type_id));
        }
    }

    public function set TypePic(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_TypePic;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_TypePic = value;
            }
            else if (value is Array)
            {
                _internal_TypePic = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of TypePic must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TypePic", oldValue, _internal_TypePic));
        }
    }

    /**
     * Data property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */

    model_internal function setterListenerName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnName();
    }

    model_internal function setterListenerMaxstate(value:flash.events.Event):void
    {
        _model.invalidateDependentOnMaxstate();
    }

    model_internal function setterListenerItem_type_id(value:flash.events.Event):void
    {
        _model.invalidateDependentOnItem_type_id();
    }

    model_internal function setterListenerTypePic(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerTypePic);
            }
        }
        _model.invalidateDependentOnTypePic();
    }


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;
        if (!_model.nameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nameValidationFailureMessages);
        }
        if (!_model.maxstateIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_maxstateValidationFailureMessages);
        }
        if (!_model.item_type_idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_item_type_idValidationFailureMessages);
        }
        if (!_model.TypePicIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_TypePicValidationFailureMessages);
        }

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _ItemType_typeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _ItemType_typeEntityMetadata) : void
    {
        var oldValue : _ItemType_typeEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }

    model_internal var _doValidationCacheOfName : Array = null;
    model_internal var _doValidationLastValOfName : String;

    model_internal function _doValidationForName(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfName != null && model_internal::_doValidationLastValOfName == value)
           return model_internal::_doValidationCacheOfName ;

        _model.model_internal::_nameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNameAvailable && _internal_name == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "name is required"));
        }

        model_internal::_doValidationCacheOfName = validationFailures;
        model_internal::_doValidationLastValOfName = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfMaxstate : Array = null;
    model_internal var _doValidationLastValOfMaxstate : String;

    model_internal function _doValidationForMaxstate(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfMaxstate != null && model_internal::_doValidationLastValOfMaxstate == value)
           return model_internal::_doValidationCacheOfMaxstate ;

        _model.model_internal::_maxstateIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isMaxstateAvailable && _internal_maxstate == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "maxstate is required"));
        }

        model_internal::_doValidationCacheOfMaxstate = validationFailures;
        model_internal::_doValidationLastValOfMaxstate = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfItem_type_id : Array = null;
    model_internal var _doValidationLastValOfItem_type_id : String;

    model_internal function _doValidationForItem_type_id(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfItem_type_id != null && model_internal::_doValidationLastValOfItem_type_id == value)
           return model_internal::_doValidationCacheOfItem_type_id ;

        _model.model_internal::_item_type_idIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isItem_type_idAvailable && _internal_item_type_id == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "item_type_id is required"));
        }

        model_internal::_doValidationCacheOfItem_type_id = validationFailures;
        model_internal::_doValidationLastValOfItem_type_id = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTypePic : Array = null;
    model_internal var _doValidationLastValOfTypePic : ArrayCollection;

    model_internal function _doValidationForTypePic(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfTypePic != null && model_internal::_doValidationLastValOfTypePic == value)
           return model_internal::_doValidationCacheOfTypePic ;

        _model.model_internal::_TypePicIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTypePicAvailable && _internal_TypePic == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "TypePic is required"));
        }

        model_internal::_doValidationCacheOfTypePic = validationFailures;
        model_internal::_doValidationLastValOfTypePic = value;

        return validationFailures;
    }
    

}

}
