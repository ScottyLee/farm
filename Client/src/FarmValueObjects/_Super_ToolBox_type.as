/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - ToolBox_type.as.
 */

package FarmValueObjects
{
import FarmValueObjects.CollectButton_type;
import FarmValueObjects.DecButton_type;
import FarmValueObjects.IncButton_type;
import FarmValueObjects.StorageButton_type;
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
public class _Super_ToolBox_type extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        FarmValueObjects.IncButton_type.initRemoteClassAliasSingleChild();
        FarmValueObjects.DecButton_type.initRemoteClassAliasSingleChild();
        FarmValueObjects.CollectButton_type.initRemoteClassAliasSingleChild();
        FarmValueObjects.StorageButton_type.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _ToolBox_typeEntityMetadata;

    /**
     * properties
     */
    private var _internal_IncButton : FarmValueObjects.IncButton_type;
    private var _internal_DecButton : FarmValueObjects.DecButton_type;
    private var _internal_CollectButton : FarmValueObjects.CollectButton_type;
    private var _internal_StorageButton : FarmValueObjects.StorageButton_type;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_ToolBox_type()
    {
        _model = new _ToolBox_typeEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "IncButton", model_internal::setterListenerIncButton));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "DecButton", model_internal::setterListenerDecButton));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "CollectButton", model_internal::setterListenerCollectButton));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "StorageButton", model_internal::setterListenerStorageButton));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get IncButton() : FarmValueObjects.IncButton_type
    {
        return _internal_IncButton;
    }

    [Bindable(event="propertyChange")]
    public function get DecButton() : FarmValueObjects.DecButton_type
    {
        return _internal_DecButton;
    }

    [Bindable(event="propertyChange")]
    public function get CollectButton() : FarmValueObjects.CollectButton_type
    {
        return _internal_CollectButton;
    }

    [Bindable(event="propertyChange")]
    public function get StorageButton() : FarmValueObjects.StorageButton_type
    {
        return _internal_StorageButton;
    }

    /**
     * data property setters
     */

    public function set IncButton(value:FarmValueObjects.IncButton_type) : void
    {
        var oldValue:FarmValueObjects.IncButton_type = _internal_IncButton;
        if (oldValue !== value)
        {
            _internal_IncButton = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "IncButton", oldValue, _internal_IncButton));
        }
    }

    public function set DecButton(value:FarmValueObjects.DecButton_type) : void
    {
        var oldValue:FarmValueObjects.DecButton_type = _internal_DecButton;
        if (oldValue !== value)
        {
            _internal_DecButton = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "DecButton", oldValue, _internal_DecButton));
        }
    }

    public function set CollectButton(value:FarmValueObjects.CollectButton_type) : void
    {
        var oldValue:FarmValueObjects.CollectButton_type = _internal_CollectButton;
        if (oldValue !== value)
        {
            _internal_CollectButton = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "CollectButton", oldValue, _internal_CollectButton));
        }
    }

    public function set StorageButton(value:FarmValueObjects.StorageButton_type) : void
    {
        var oldValue:FarmValueObjects.StorageButton_type = _internal_StorageButton;
        if (oldValue !== value)
        {
            _internal_StorageButton = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "StorageButton", oldValue, _internal_StorageButton));
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

    model_internal function setterListenerIncButton(value:flash.events.Event):void
    {
        _model.invalidateDependentOnIncButton();
    }

    model_internal function setterListenerDecButton(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDecButton();
    }

    model_internal function setterListenerCollectButton(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCollectButton();
    }

    model_internal function setterListenerStorageButton(value:flash.events.Event):void
    {
        _model.invalidateDependentOnStorageButton();
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
        if (!_model.IncButtonIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_IncButtonValidationFailureMessages);
        }
        if (!_model.DecButtonIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_DecButtonValidationFailureMessages);
        }
        if (!_model.CollectButtonIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_CollectButtonValidationFailureMessages);
        }
        if (!_model.StorageButtonIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_StorageButtonValidationFailureMessages);
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
    public function get _model() : _ToolBox_typeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _ToolBox_typeEntityMetadata) : void
    {
        var oldValue : _ToolBox_typeEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfIncButton : Array = null;
    model_internal var _doValidationLastValOfIncButton : FarmValueObjects.IncButton_type;

    model_internal function _doValidationForIncButton(valueIn:Object):Array
    {
        var value : FarmValueObjects.IncButton_type = valueIn as FarmValueObjects.IncButton_type;

        if (model_internal::_doValidationCacheOfIncButton != null && model_internal::_doValidationLastValOfIncButton == value)
           return model_internal::_doValidationCacheOfIncButton ;

        _model.model_internal::_IncButtonIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIncButtonAvailable && _internal_IncButton == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "IncButton is required"));
        }

        model_internal::_doValidationCacheOfIncButton = validationFailures;
        model_internal::_doValidationLastValOfIncButton = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDecButton : Array = null;
    model_internal var _doValidationLastValOfDecButton : FarmValueObjects.DecButton_type;

    model_internal function _doValidationForDecButton(valueIn:Object):Array
    {
        var value : FarmValueObjects.DecButton_type = valueIn as FarmValueObjects.DecButton_type;

        if (model_internal::_doValidationCacheOfDecButton != null && model_internal::_doValidationLastValOfDecButton == value)
           return model_internal::_doValidationCacheOfDecButton ;

        _model.model_internal::_DecButtonIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDecButtonAvailable && _internal_DecButton == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "DecButton is required"));
        }

        model_internal::_doValidationCacheOfDecButton = validationFailures;
        model_internal::_doValidationLastValOfDecButton = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCollectButton : Array = null;
    model_internal var _doValidationLastValOfCollectButton : FarmValueObjects.CollectButton_type;

    model_internal function _doValidationForCollectButton(valueIn:Object):Array
    {
        var value : FarmValueObjects.CollectButton_type = valueIn as FarmValueObjects.CollectButton_type;

        if (model_internal::_doValidationCacheOfCollectButton != null && model_internal::_doValidationLastValOfCollectButton == value)
           return model_internal::_doValidationCacheOfCollectButton ;

        _model.model_internal::_CollectButtonIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCollectButtonAvailable && _internal_CollectButton == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "CollectButton is required"));
        }

        model_internal::_doValidationCacheOfCollectButton = validationFailures;
        model_internal::_doValidationLastValOfCollectButton = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfStorageButton : Array = null;
    model_internal var _doValidationLastValOfStorageButton : FarmValueObjects.StorageButton_type;

    model_internal function _doValidationForStorageButton(valueIn:Object):Array
    {
        var value : FarmValueObjects.StorageButton_type = valueIn as FarmValueObjects.StorageButton_type;

        if (model_internal::_doValidationCacheOfStorageButton != null && model_internal::_doValidationLastValOfStorageButton == value)
           return model_internal::_doValidationCacheOfStorageButton ;

        _model.model_internal::_StorageButtonIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isStorageButtonAvailable && _internal_StorageButton == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "StorageButton is required"));
        }

        model_internal::_doValidationCacheOfStorageButton = validationFailures;
        model_internal::_doValidationLastValOfStorageButton = value;

        return validationFailures;
    }
    

}

}
