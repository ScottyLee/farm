/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Field_type.as.
 */

package FarmValueObjects
{
import FarmValueObjects.AreaItem_type;
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
public class _Super_Field_type extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        FarmValueObjects.AreaItem_type.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _Field_typeEntityMetadata;

    /**
     * properties
     */
    private var _internal_AreaItem : ArrayCollection;
    model_internal var _internal_AreaItem_leaf:FarmValueObjects.AreaItem_type;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Field_type()
    {
        _model = new _Field_typeEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "AreaItem", model_internal::setterListenerAreaItem));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get AreaItem() : ArrayCollection
    {
        return _internal_AreaItem;
    }

    /**
     * data property setters
     */

    public function set AreaItem(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_AreaItem;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_AreaItem = value;
            }
            else if (value is Array)
            {
                _internal_AreaItem = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of AreaItem must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "AreaItem", oldValue, _internal_AreaItem));
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

    model_internal function setterListenerAreaItem(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerAreaItem);
            }
        }
        _model.invalidateDependentOnAreaItem();
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
        if (!_model.AreaItemIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_AreaItemValidationFailureMessages);
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
    public function get _model() : _Field_typeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _Field_typeEntityMetadata) : void
    {
        var oldValue : _Field_typeEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfAreaItem : Array = null;
    model_internal var _doValidationLastValOfAreaItem : ArrayCollection;

    model_internal function _doValidationForAreaItem(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfAreaItem != null && model_internal::_doValidationLastValOfAreaItem == value)
           return model_internal::_doValidationCacheOfAreaItem ;

        _model.model_internal::_AreaItemIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAreaItemAvailable && _internal_AreaItem == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "AreaItem is required"));
        }

        model_internal::_doValidationCacheOfAreaItem = validationFailures;
        model_internal::_doValidationLastValOfAreaItem = value;

        return validationFailures;
    }
    

}

}
