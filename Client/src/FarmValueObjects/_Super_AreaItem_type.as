/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - AreaItem_type.as.
 */

package FarmValueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_AreaItem_type extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _AreaItem_typeEntityMetadata;

    /**
     * properties
     */
    private var _internal_x : String;
    private var _internal_y : String;
    private var _internal_id : String;
    private var _internal_maxstate : String;
    private var _internal_item_type_id : String;
    private var _internal_state : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_AreaItem_type()
    {
        _model = new _AreaItem_typeEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "x", model_internal::setterListenerX));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "y", model_internal::setterListenerY));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "id", model_internal::setterListenerId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "maxstate", model_internal::setterListenerMaxstate));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "item_type_id", model_internal::setterListenerItem_type_id));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "state", model_internal::setterListenerState));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get x() : String
    {
        return _internal_x;
    }

    [Bindable(event="propertyChange")]
    public function get y() : String
    {
        return _internal_y;
    }

    [Bindable(event="propertyChange")]
    public function get id() : String
    {
        return _internal_id;
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
    public function get state() : String
    {
        return _internal_state;
    }

    /**
     * data property setters
     */

    public function set x(value:String) : void
    {
        var oldValue:String = _internal_x;
        if (oldValue !== value)
        {
            _internal_x = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "x", oldValue, _internal_x));
        }
    }

    public function set y(value:String) : void
    {
        var oldValue:String = _internal_y;
        if (oldValue !== value)
        {
            _internal_y = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "y", oldValue, _internal_y));
        }
    }

    public function set id(value:String) : void
    {
        var oldValue:String = _internal_id;
        if (oldValue !== value)
        {
            _internal_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id", oldValue, _internal_id));
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

    public function set state(value:String) : void
    {
        var oldValue:String = _internal_state;
        if (oldValue !== value)
        {
            _internal_state = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "state", oldValue, _internal_state));
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

    model_internal function setterListenerX(value:flash.events.Event):void
    {
        _model.invalidateDependentOnX();
    }

    model_internal function setterListenerY(value:flash.events.Event):void
    {
        _model.invalidateDependentOnY();
    }

    model_internal function setterListenerId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnId();
    }

    model_internal function setterListenerMaxstate(value:flash.events.Event):void
    {
        _model.invalidateDependentOnMaxstate();
    }

    model_internal function setterListenerItem_type_id(value:flash.events.Event):void
    {
        _model.invalidateDependentOnItem_type_id();
    }

    model_internal function setterListenerState(value:flash.events.Event):void
    {
        _model.invalidateDependentOnState();
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
        if (!_model.xIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_xValidationFailureMessages);
        }
        if (!_model.yIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_yValidationFailureMessages);
        }
        if (!_model.idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_idValidationFailureMessages);
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
        if (!_model.stateIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_stateValidationFailureMessages);
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
    public function get _model() : _AreaItem_typeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _AreaItem_typeEntityMetadata) : void
    {
        var oldValue : _AreaItem_typeEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfX : Array = null;
    model_internal var _doValidationLastValOfX : String;

    model_internal function _doValidationForX(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfX != null && model_internal::_doValidationLastValOfX == value)
           return model_internal::_doValidationCacheOfX ;

        _model.model_internal::_xIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isXAvailable && _internal_x == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "x is required"));
        }

        model_internal::_doValidationCacheOfX = validationFailures;
        model_internal::_doValidationLastValOfX = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfY : Array = null;
    model_internal var _doValidationLastValOfY : String;

    model_internal function _doValidationForY(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfY != null && model_internal::_doValidationLastValOfY == value)
           return model_internal::_doValidationCacheOfY ;

        _model.model_internal::_yIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isYAvailable && _internal_y == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "y is required"));
        }

        model_internal::_doValidationCacheOfY = validationFailures;
        model_internal::_doValidationLastValOfY = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfId : Array = null;
    model_internal var _doValidationLastValOfId : String;

    model_internal function _doValidationForId(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfId != null && model_internal::_doValidationLastValOfId == value)
           return model_internal::_doValidationCacheOfId ;

        _model.model_internal::_idIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIdAvailable && _internal_id == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "id is required"));
        }

        model_internal::_doValidationCacheOfId = validationFailures;
        model_internal::_doValidationLastValOfId = value;

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
    
    model_internal var _doValidationCacheOfState : Array = null;
    model_internal var _doValidationLastValOfState : String;

    model_internal function _doValidationForState(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfState != null && model_internal::_doValidationLastValOfState == value)
           return model_internal::_doValidationCacheOfState ;

        _model.model_internal::_stateIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isStateAvailable && _internal_state == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "state is required"));
        }

        model_internal::_doValidationCacheOfState = validationFailures;
        model_internal::_doValidationLastValOfState = value;

        return validationFailures;
    }
    

}

}
