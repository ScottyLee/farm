/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Status_type.as.
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
public class _Super_Status_type extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _Status_typeEntityMetadata;

    /**
     * properties
     */
    private var _internal_Message : String;
    private var _internal_Type : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Status_type()
    {
        _model = new _Status_typeEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Message", model_internal::setterListenerMessage));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Type", model_internal::setterListenerType));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get Message() : String
    {
        return _internal_Message;
    }

    [Bindable(event="propertyChange")]
    public function get Type() : String
    {
        return _internal_Type;
    }

    /**
     * data property setters
     */

    public function set Message(value:String) : void
    {
        var oldValue:String = _internal_Message;
        if (oldValue !== value)
        {
            _internal_Message = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Message", oldValue, _internal_Message));
        }
    }

    public function set Type(value:String) : void
    {
        var oldValue:String = _internal_Type;
        if (oldValue !== value)
        {
            _internal_Type = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Type", oldValue, _internal_Type));
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

    model_internal function setterListenerMessage(value:flash.events.Event):void
    {
        _model.invalidateDependentOnMessage();
    }

    model_internal function setterListenerType(value:flash.events.Event):void
    {
        _model.invalidateDependentOnType();
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
        if (!_model.MessageIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_MessageValidationFailureMessages);
        }
        if (!_model.TypeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_TypeValidationFailureMessages);
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
    public function get _model() : _Status_typeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _Status_typeEntityMetadata) : void
    {
        var oldValue : _Status_typeEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfMessage : Array = null;
    model_internal var _doValidationLastValOfMessage : String;

    model_internal function _doValidationForMessage(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfMessage != null && model_internal::_doValidationLastValOfMessage == value)
           return model_internal::_doValidationCacheOfMessage ;

        _model.model_internal::_MessageIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isMessageAvailable && _internal_Message == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Message is required"));
        }

        model_internal::_doValidationCacheOfMessage = validationFailures;
        model_internal::_doValidationLastValOfMessage = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfType : Array = null;
    model_internal var _doValidationLastValOfType : String;

    model_internal function _doValidationForType(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfType != null && model_internal::_doValidationLastValOfType == value)
           return model_internal::_doValidationCacheOfType ;

        _model.model_internal::_TypeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTypeAvailable && _internal_Type == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Type is required"));
        }

        model_internal::_doValidationCacheOfType = validationFailures;
        model_internal::_doValidationLastValOfType = value;

        return validationFailures;
    }
    

}

}
