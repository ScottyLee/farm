/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - AreaData.as.
 */

package FarmValueObjects
{
import FarmValueObjects.AreaType_type;
import FarmValueObjects.Field_type;
import FarmValueObjects.ToolBox_type;
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
public class _Super_AreaData extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        FarmValueObjects.Field_type.initRemoteClassAliasSingleChild();
        FarmValueObjects.AreaItem_type.initRemoteClassAliasSingleChild();
        FarmValueObjects.AreaType_type.initRemoteClassAliasSingleChild();
        FarmValueObjects.ItemType_type.initRemoteClassAliasSingleChild();
        FarmValueObjects.TypePic_type.initRemoteClassAliasSingleChild();
        FarmValueObjects.ToolBox_type.initRemoteClassAliasSingleChild();
        FarmValueObjects.IncButton_type.initRemoteClassAliasSingleChild();
        FarmValueObjects.DecButton_type.initRemoteClassAliasSingleChild();
        FarmValueObjects.CollectButton_type.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _AreaDataEntityMetadata;

    /**
     * properties
     */
    private var _internal_Field : FarmValueObjects.Field_type;
    private var _internal_AreaType : FarmValueObjects.AreaType_type;
    private var _internal_ToolBox : FarmValueObjects.ToolBox_type;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_AreaData()
    {
        _model = new _AreaDataEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Field", model_internal::setterListenerField));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "AreaType", model_internal::setterListenerAreaType));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "ToolBox", model_internal::setterListenerToolBox));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get Field() : FarmValueObjects.Field_type
    {
        return _internal_Field;
    }

    [Bindable(event="propertyChange")]
    public function get AreaType() : FarmValueObjects.AreaType_type
    {
        return _internal_AreaType;
    }

    [Bindable(event="propertyChange")]
    public function get ToolBox() : FarmValueObjects.ToolBox_type
    {
        return _internal_ToolBox;
    }

    /**
     * data property setters
     */

    public function set Field(value:FarmValueObjects.Field_type) : void
    {
        var oldValue:FarmValueObjects.Field_type = _internal_Field;
        if (oldValue !== value)
        {
            _internal_Field = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Field", oldValue, _internal_Field));
        }
    }

    public function set AreaType(value:FarmValueObjects.AreaType_type) : void
    {
        var oldValue:FarmValueObjects.AreaType_type = _internal_AreaType;
        if (oldValue !== value)
        {
            _internal_AreaType = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "AreaType", oldValue, _internal_AreaType));
        }
    }

    public function set ToolBox(value:FarmValueObjects.ToolBox_type) : void
    {
        var oldValue:FarmValueObjects.ToolBox_type = _internal_ToolBox;
        if (oldValue !== value)
        {
            _internal_ToolBox = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ToolBox", oldValue, _internal_ToolBox));
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

    model_internal function setterListenerField(value:flash.events.Event):void
    {
        _model.invalidateDependentOnField();
    }

    model_internal function setterListenerAreaType(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAreaType();
    }

    model_internal function setterListenerToolBox(value:flash.events.Event):void
    {
        _model.invalidateDependentOnToolBox();
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
        if (!_model.FieldIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_FieldValidationFailureMessages);
        }
        if (!_model.AreaTypeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_AreaTypeValidationFailureMessages);
        }
        if (!_model.ToolBoxIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_ToolBoxValidationFailureMessages);
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
    public function get _model() : _AreaDataEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _AreaDataEntityMetadata) : void
    {
        var oldValue : _AreaDataEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfField : Array = null;
    model_internal var _doValidationLastValOfField : FarmValueObjects.Field_type;

    model_internal function _doValidationForField(valueIn:Object):Array
    {
        var value : FarmValueObjects.Field_type = valueIn as FarmValueObjects.Field_type;

        if (model_internal::_doValidationCacheOfField != null && model_internal::_doValidationLastValOfField == value)
           return model_internal::_doValidationCacheOfField ;

        _model.model_internal::_FieldIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFieldAvailable && _internal_Field == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Field is required"));
        }

        model_internal::_doValidationCacheOfField = validationFailures;
        model_internal::_doValidationLastValOfField = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfAreaType : Array = null;
    model_internal var _doValidationLastValOfAreaType : FarmValueObjects.AreaType_type;

    model_internal function _doValidationForAreaType(valueIn:Object):Array
    {
        var value : FarmValueObjects.AreaType_type = valueIn as FarmValueObjects.AreaType_type;

        if (model_internal::_doValidationCacheOfAreaType != null && model_internal::_doValidationLastValOfAreaType == value)
           return model_internal::_doValidationCacheOfAreaType ;

        _model.model_internal::_AreaTypeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAreaTypeAvailable && _internal_AreaType == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "AreaType is required"));
        }

        model_internal::_doValidationCacheOfAreaType = validationFailures;
        model_internal::_doValidationLastValOfAreaType = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfToolBox : Array = null;
    model_internal var _doValidationLastValOfToolBox : FarmValueObjects.ToolBox_type;

    model_internal function _doValidationForToolBox(valueIn:Object):Array
    {
        var value : FarmValueObjects.ToolBox_type = valueIn as FarmValueObjects.ToolBox_type;

        if (model_internal::_doValidationCacheOfToolBox != null && model_internal::_doValidationLastValOfToolBox == value)
           return model_internal::_doValidationCacheOfToolBox ;

        _model.model_internal::_ToolBoxIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isToolBoxAvailable && _internal_ToolBox == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "ToolBox is required"));
        }

        model_internal::_doValidationCacheOfToolBox = validationFailures;
        model_internal::_doValidationLastValOfToolBox = value;

        return validationFailures;
    }
    

}

}
