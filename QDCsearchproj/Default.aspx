<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ecommerce.Default" %>

<!DOCTYPE html>
<html>
<head>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
        crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/azsearch.js@0.0.21/dist/AzSearch.css">
    <title>Azure Cognitive Search Demo App</title>
    <style>
        .searchResults__result h4 {
            margin-top: 0px;
            text-transform: uppercase;
        }

        .searchResults__result .resultDescription {
            margin: 0.5em 0 0 0;
        }
        .searchBox__input-container {
            margin-top: 0.6em !important;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="app">
            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="container-fluid" style="background-color:deepskyblue;height: 54px;">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#facetPanel" aria-expanded="false"
                            aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <div class="row">
                            <div class="col-md-2 pagelabel" style="top:3px">
                                <img src="evolve.PNG" />
                            </div>
                            <div id="searchBox" class="col-mid-8 col-sm-8 col-xs-6" ></div>
                            <div class="col-md-2 pagelabel" style="top:20px">QOIPR Catalog Search</div>
                            <div id="navbar" class="navbar-collapse collapse">
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
            <div class="container-fluid">
                <div class="row">
                    <div id="facetPanel" class="col-sm-3 col-md-3 sidebar collapse" style="background-color:white">
                        <div id="clearFilters"></div>
                        <ul class="nav nav-sidebar">
                            <div className="panel panel-primary behclick-panel" style="font-size: small">
                            <li>
                                <div id="categoryFacet">
                                </div>
                            </li>
                            <li>
                                <div id="manufacturerFacet">
                                </div>
                            </li>
                              <li>
                                <div id="DisplayFilter_AspectRatioFacet">
                                </div>
                            </li>
                            <li>
                                <div id="DisplayFilter_FramelessFacet">
                                </div>
                            </li>
                            <li>
                                <div id="DisplayFilter_InstallationTypeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="DisplayFilter_ScratchResistantFacet">
                                </div>
                            </li>
                            <li>
                                <div id="DisplayFilter_SurfaceFinishFacet">
                                </div>
                            </li>
                            <li>
                                <div id="DisplayFilter_ViewingAreaHeightFacet">
                                </div>
                            </li>
                            <li>
                                <div id="DisplayFilter_ViewingAreaWidthFacet">
                                </div>
                            </li>
                            <li>
                                <div id="EnvironmentalParameters_MaxOperatingTemperatureFacet">
                                </div>
                            </li>
                            <li>
                                <div id="EnvironmentalParameters_MinOperatingTemperatureFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_AdditionalCompartmentsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_BuiltinDevicesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_BundledwithFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_CapacityFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_CarryingStrapFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_CheckpointFriendlyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_ClosureTypeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_ColourFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_CompartmentsQuantityFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_DepthFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_DiameterFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_DisplayScreenSizeCompatibilityFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_FeaturesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_FinishFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_HeightFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_HeightRackUnitsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_InnerDimensionsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_LengthFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_LiningMaterialFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_LocalisationFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_LocationFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_MaxHeightofShockResistanceFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_NotebookCompatibilityFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_NotebookCompatibilityDimensionsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_NotebookSupportedSizesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_PackageContentFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_PackagedQuantityFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_PlacingMountingFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_ProductMaterialFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_ProductTypeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_RackPostQtyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_RackSizeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_RackTypeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_ShippingDimensionsWxDxHWeightFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_ThicknessFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_VoltageRequiredFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_WeightFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_WidthFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HardwareLicence_LicenceQtyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_AirFlowFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_AirPressureFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_CableLengthFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_CompatibleWithFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_FanBearingFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_FanDiameterFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_FanHeightFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_FansQtyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_FeaturesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_HeatsinkDimensionsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_HeatsinkMaterialFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_NoiseLevelFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_OperationVoltageFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_PowerConnectorFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_PowerConsumptionFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_ProcessorCompatibilityFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_RadiatorDimensionsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_RadiatorMaterialFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_RatedCurrentFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_RatedVoltageFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_RotationSpeedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="HeatsinkFan_StartVoltageFacet">
                                </div>
                            </li>
                            <li>
                                <div id="InterfaceProvided_ConnectorProvidedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ManufacturerWarranty_ServiceSupportFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_AssemblyRequiredFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_CashDrawerInterfaceFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_CompliantStandardsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_FeaturesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_MountingKitFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_MTBFFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_PricingTypeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_ProductRecycledContentFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_TAACompliantFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_TelescopicHandleWheelsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_ThermalConductivityFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_WeightLimitFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_WheelsQtyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="SecurityCableLock_IntendedForFacet">
                                </div>
                            </li>
                            <li>
                                <div id="SecurityCableLock_LockMethodFacet">
                                </div>
                            </li>
                            <li>
                                <div id="SecurityCableLock_LockTypeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Software_SoftwareIncludedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ACAdapter_InputFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ACAdapter_OutputFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_AudioFeaturesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_CameraFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_CameraFeaturesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_CodecFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_CompliantStandardsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_FrameRateFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_GraphicsProcessorFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_ImageSensorTypeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_MaxMonitorsSupportedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_MemoryAllocationTechnologyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_MultiGPUConfigurationFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_ResolutionFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_SoundFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_VideoMemoryFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_VideoResolutionsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_VideoSystemFeaturesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_VRReadyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Battery_BatteryRunTimeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Battery_CapacityFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Battery_InstalledQtyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Battery_RunTimeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Battery_TechnologyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Communications_BluetoothClassFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Communications_CompliantStandardsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Communications_EthernetControllerFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Communications_FeaturesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Communications_NetworkInterfaceFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Communications_RemoteManagementProtocolFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Communications_WirelessFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Communications_WirelessControllerFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ConnectionsExpansion_InterfacesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ConnectionsExpansion_MemoryCardReaderFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ConnectionsExpansion_SlotsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="DimensionsWeight_DimensionsWxDxHFacet">
                                </div>
                            </li>
                            <li>
                                <div id="DimensionsWeight_DimensionsWxDxHtabletFacet">
                                </div>
                            </li>
                            <li>
                                <div id="DimensionsWeight_DimensionsWxDxHtabletwithkeyboardFacet">
                                </div>
                            </li>
                            <li>
                                <div id="DimensionsWeight_DimensionsWxDxHunfoldedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="DimensionsWeight_DimensionsWxDxHWeightDetailsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="DimensionsWeight_ShippingDimensionsWxDxHWeightFacet">
                                </div>
                            </li>
                            <li>
                                <div id="DimensionsWeight_WeightFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_BezelTypeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_ColourSupportFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_FeaturesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_ImageAspectRatioFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_ImageBrightnessFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_KeyboardNameFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_LCDBacklightTechnologyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_PixelDensityppiFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_PrivacyTechnologyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_ResolutionFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_TouchscreenFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_TypeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_WidescreenFacet">
                                </div>
                            </li>
                            <li>
                                <div id="EnvironmentalParameters_HumidityRangeOperatingFacet">
                                </div>
                            </li>
                            <li>
                                <div id="EnvironmentalParameters_ShockTolerancenonoperatingFacet">
                                </div>
                            </li>
                            <li>
                                <div id="EnvironmentalParameters_ShockToleranceoperatingFacet">
                                </div>
                            </li>
                            <li>
                                <div id="EnvironmentalParameters_VibrationTolerancenonoperatingFacet">
                                </div>
                            </li>
                            <li>
                                <div id="EnvironmentalParameters_VibrationToleranceoperatingFacet">
                                </div>
                            </li>
                            <li>
                                <div id="EnvironmentalStandards_ENERGYSTARCertifiedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="EnvironmentalStandards_EPEATCompliantFacet">
                                </div>
                            </li>
                            <li>
                                <div id="EnvironmentalStandards_TCOCertifiedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_OperatingSystemFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Input_FeaturesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Input_KeyboardBacklightFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Input_KeyboardLayoutFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Input_NumericKeypadFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Input_TypeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ManufacturerWarranty_BundledServicesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ManufacturerWarranty_RegionalWarrantyExceptionsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Memory_EmptySlotsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Memory_FormFactorFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Memory_MaxRAMSupportedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Memory_RAMFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Memory_RatedSpeedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Memory_SlotsQtyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Memory_SpeedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Memory_TechnologyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_CablesIncludedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_CaseMaterialFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_ColourFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_DockableFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_ImageColourDisclaimerFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_IncludedAccessoriesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_IntegratedOptionsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_LocalizationFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_ManufacturerSellingProgramFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_RepairabilityIndexFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_SARValueFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_SecurityFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_SecuritySlotTypeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_SurfaceFinishFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_TheftIntrusionProtectionFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Navigation_ReceiverFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ProcessorChipset_64bitComputingFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ProcessorChipset_CacheFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ProcessorChipset_ChipsetFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ProcessorChipset_CPUFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ProcessorChipset_FeaturesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ProcessorChipset_MaxTurboSpeedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ProcessorChipset_NumberofCoresFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ProcessorChipset_PlatformTechnologyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Storage_MainStorageFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Storage_OpticalDriveFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Storage_RAIDLevelFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Storage_SecondaryStorageFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Storage_SSDCacheFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Storage_TotalCapacityFacet">
                                </div>
                            </li>
                            <li>
                                <div id="WirelessBroadbandWWAN_ControllerFacet">
                                </div>
                            </li>
                            <li>
                                <div id="WirelessBroadbandWWAN_GenerationFacet">
                                </div>
                            </li>
                            <li>
                                <div id="WirelessBroadbandWWAN_MaxTransferRateFacet">
                                </div>
                            </li>
                            <li>
                                <div id="WirelessBroadbandWWAN_ServiceProviderFacet">
                                </div>
                            </li>
                            <li>
                                <div id="WirelessBroadbandWWAN_TechnologyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="productlineFacet">
                                </div>
                            </li>
                            <li>
                                <div id="modelFacet">
                                </div>
                            </li>
                            <li>
                                <div id="priceFacet">
                                    
                                </div>
                            </li>
                        </div>
                        </ul>
                    </div>
                    <div class="col-sm-9 col-sm-offset-3 col-md-9 col-md-offset-3 results_section">
                        <div id="results" class="row placeholders">
                        </div>
                        <div id="pager" class="row">
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal"id="dlgPricingDetail" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header" style="background-color:deepskyblue">
                    <h5 class="modal-title" >Pricing</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    </div>
                    <div class="modal-body">
                        <div id="pricingContainer">

                        </div>
                    </div>
                    <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
                </div>
            </div>
            <!-- Bootstrap core JavaScript
                ================================================== -->
            <!-- Placed at the end of the document so the pages load faster -->
        </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>

<!-- Dependencies -->
<script src="https://cdn.jsdelivr.net/react/15.5.0/react.min.js"></script>
<script src="https://cdn.jsdelivr.net/react/15.5.0/react-dom.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/redux/3.6.0/redux.min.js"></script>
<!-- Main -->
<script src="https://cdn.jsdelivr.net/npm/azsearch.js@0.0.21/dist/AzSearch.bundle.js"></script>
    <style>
        .product-background {
            background-color: #F8F8F8;
        }

        .searchResults__result {
            border: 1px solid #D3D3D3;
            border-radius: 5px;
        }

        .product_pricing_container {
            border: 1px solid #D3D3D3;
            border-radius: 5px;
        }
    </style>
<script>
    // WARNING
    // For demonstration purposes only, do not use in a production environment. For simplicity, this is a single HTML page that has the query key to the search service.
    // CORS (*) must be enabled in the index before using the demo app.

    // Initialize and connect to your search service
    var automagic = new AzSearch.Automagic({ index: "betaserach21-index", queryKey: "A0ADF9E8DC41E77F3F037DC56081069D", service: "azureqdcsearch" });

    const resultTemplate =
        `<div class="row">
            <div class="col-xs-12 col-sm-3 col-md-3 result_img">
                <img class="img-responsive result_img" src={{ImageURL}} alt="image not found" style="vertical-align:middle" />
            </div>
            <div class="col-xs-12 col-sm-9 col-md-9">
                <div class="row" style="padding-top: 10px;">
                    <b>{{Description_Std.Origin_Standardized_Description}}</b>
                </div>
                <div class="row" style="padding-top: 10px;">
                    <div class="resultDescription col-md-2" >{{{mfpn}}}</div>
                    <div class="col-md-2" ><input type="button" class="btn btn-primary btn-sm show-price" onclick="populateData('{{{mfpn}}}')" value="View Price"/></div>
                </div>
            </div>
        </div>
        `;

    // add a results view using the template defined above
    automagic.addResults("results", { count: true, top: 300, searchMode: "all", orderby:"category" }, resultTemplate);

    // Adds a pager control << 1 2 3 ... >>
    automagic.addPager("pager");

    // Set some processors to format results for display
    var suggestionsProcessor = function (results) {
        return results.map(function (result) {
            result.searchText = result["@search.text"];
            return result;
        });
    }; 


    automagic.store.setSuggestionsProcessor(suggestionsProcessor);

    var suggestionsTemplate = `
            <p> category: {{category}}  :  {{General_ProductType}} </p>
             {{{searchText}}}
           `;


    //function disableInput() {
    //    $('#categoryFacet input[type="checkbox"]').on('change', function () {
    //        $('#categoryFacet input[type="checkbox"]').not(this).prop('checked', false);
    //    });
    //}
    (function (ns, fetch) {
        if (typeof fetch !== 'function') return;
        var respo;
        var body;
        var url;
        ns.fetch = function () {
            var out = fetch.apply(this, arguments);
            url = arguments[0];
            body = arguments[1].body;
            callSearchApi(body,url);
            // side-effect 
            out.then((response) => { respo = response; });
            return out;
        }

    }(window, window.fetch))

    function callSearchApi(body, url) {
        var pricingBody;
        $.ajax({
            url: url,
            method: "POST",
            headers: {
                "Content-Type": "application/json",
                "api-key":"A0ADF9E8DC41E77F3F037DC56081069D"
            },
            data: body
        }).then((response) => {
            pricingBody = {
                "JSONString": JSON.stringify(response),
                "ClientID": 3347,
                "ClientMargin": 3.000,
                "Portal": "ADMIN",
                "PriceRange": "",
                "IncludingNoStock": true
            };
            callPricingApi(pricingBody);
        })
    }

    function callPricingApi(pricingBody) {
        console.log(pricingBody);
        var priceArray = [];
        $.ajax({
            // url: "https://q2020adminapi-dev2dot1.azurewebsites.net/api/QPCSearchFilter?api-version=2021-04-30-Preview",
            url: "https://getpricingresponse.azurewebsites.net/FopersServiceAPI-1.0/api/v1/fopers/getPricingResponse",
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            data: JSON.stringify(pricingBody)
        }).then((response) => { priceArray = response["@search.facets"].Price; setPricingDiv(priceArray); });
    }
    function setPricingDiv(pricingArray) {
        var content1 = '<div data-reactroot="" class="searchResults__checkboxFacet panel-body"><div class="searchResults__facetHeader-container panel-heading" ><h4 class="searchResults__facetHeader panel-title"><a data-toggle="collapse" class="searchResults__facetHeader-link"><span class="searchResults__facetHeader-icon--open indicator glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span>Price</a></h4></div>';
        var content2 = '<div class="searchResults__facetControl-container panel-collapse collapse in"><ul class="searchResults__facetControl-list list-group">';
        var content3 = '<li class="searchResults__facetControl list-group-item"><div class="searchResults__facetControl-checkbox-wrapper checkbox"><label class="checkboxLabel"><input type="checkbox" class="searchResults__facetControl-checkbox" value="on"> ';
        var content4 = ' </label></div></li>';
        var content5 = '</ul></div></div>';
        var middleContent = "";
        for (var i = 0; i < pricingArray.length; i++) {
            middleContent = middleContent+content3 + pricingArray[i].value + " (" + pricingArray[i].count + ")" +content4;
        }
        var finalContent = content1 + content2 + middleContent + content5;
        document.getElementById("priceFacet").innerHTML=finalContent;
    }

    //setInterval(disableInput, 5000);
    // Add a search box that uses suggester "especbeta-suggest", grabbing some additional fields to display during suggestions. Use the template defined above
    automagic.addSearchBox("searchBox",
        {
            highlightPreTag: "<b>",
            highlightPostTag: "</b>",
            suggesterName: "betaserach21-suggest",
            select: "category,General_ProductType",
            fuzzy: true,
            top: 7
        },
        "",
        suggestionsTemplate);

    automagic.addCheckboxFacet("categoryFacet", "category", "string");
    automagic.addCheckboxFacet("manufacturerFacet", "manufacturer", "string");
    automagic.addCheckboxFacet("DisplayFilter_AspectRatioFacet", "DisplayFilter_AspectRatio", "string");
    automagic.addCheckboxFacet("DisplayFilter_FramelessFacet", "DisplayFilter_Frameless", "string");
    automagic.addCheckboxFacet("DisplayFilter_InstallationTypeFacet", "DisplayFilter_InstallationType", "string");
    automagic.addCheckboxFacet("DisplayFilter_ScratchResistantFacet", "DisplayFilter_ScratchResistant", "string");
    automagic.addCheckboxFacet("DisplayFilter_SurfaceFinishFacet", "DisplayFilter_SurfaceFinish", "string");
    automagic.addCheckboxFacet("DisplayFilter_ViewingAreaHeightFacet", "DisplayFilter_ViewingAreaHeight", "string");
    automagic.addCheckboxFacet("DisplayFilter_ViewingAreaWidthFacet", "DisplayFilter_ViewingAreaWidth", "string");
    automagic.addCheckboxFacet("EnvironmentalParameters_MaxOperatingTemperatureFacet", "EnvironmentalParameters_MaxOperatingTemperature", "string");
    automagic.addCheckboxFacet("EnvironmentalParameters_MinOperatingTemperatureFacet", "EnvironmentalParameters_MinOperatingTemperature", "string");
    automagic.addCheckboxFacet("General_AdditionalCompartmentsFacet", "General_AdditionalCompartments", "string");
    automagic.addCheckboxFacet("General_BuiltinDevicesFacet", "General_BuiltinDevices", "string");
    automagic.addCheckboxFacet("General_BundledwithFacet", "General_Bundledwith", "string");
    automagic.addCheckboxFacet("General_CapacityFacet", "General_Capacity", "string");
    automagic.addCheckboxFacet("General_CarryingStrapFacet", "General_CarryingStrap", "string");
    automagic.addCheckboxFacet("General_CheckpointFriendlyFacet", "General_CheckpointFriendly", "string");
    automagic.addCheckboxFacet("General_ClosureTypeFacet", "General_ClosureType", "string");
    automagic.addCheckboxFacet("General_ColourFacet", "General_Colour", "string");
    automagic.addCheckboxFacet("General_CompartmentsQuantityFacet", "General_CompartmentsQuantity", "string");
    automagic.addCheckboxFacet("General_DepthFacet", "General_Depth", "string");
    automagic.addCheckboxFacet("General_DiameterFacet", "General_Diameter", "string");
    automagic.addCheckboxFacet("General_DisplayScreenSizeCompatibilityFacet", "General_DisplayScreenSizeCompatibility", "string");
    automagic.addCheckboxFacet("General_FeaturesFacet", "General_Features", "string");
    automagic.addCheckboxFacet("General_FinishFacet", "General_Finish", "string");
    automagic.addCheckboxFacet("General_HeightFacet", "General_Height", "string");
    automagic.addCheckboxFacet("General_HeightRackUnitsFacet", "General_HeightRackUnits", "string");
    automagic.addCheckboxFacet("General_InnerDimensionsFacet", "General_InnerDimensions", "string");
    automagic.addCheckboxFacet("General_LengthFacet", "General_Length", "string");
    automagic.addCheckboxFacet("General_LiningMaterialFacet", "General_LiningMaterial", "string");
    automagic.addCheckboxFacet("General_LocalisationFacet", "General_Localisation", "string");
    automagic.addCheckboxFacet("General_LocationFacet", "General_Location", "string");
    automagic.addCheckboxFacet("General_MaxHeightofShockResistanceFacet", "General_MaxHeightofShockResistance", "string");
    automagic.addCheckboxFacet("General_NotebookCompatibilityFacet", "General_NotebookCompatibility", "string");
    automagic.addCheckboxFacet("General_NotebookCompatibilityDimensionsFacet", "General_NotebookCompatibilityDimensions", "string");
    automagic.addCheckboxFacet("General_NotebookSupportedSizesFacet", "General_NotebookSupportedSizes", "string");
    automagic.addCheckboxFacet("General_PackageContentFacet", "General_PackageContent", "string");
    automagic.addCheckboxFacet("General_PackagedQuantityFacet", "General_PackagedQuantity", "string");
    automagic.addCheckboxFacet("General_PlacingMountingFacet", "General_PlacingMounting", "string");
    automagic.addCheckboxFacet("General_ProductMaterialFacet", "General_ProductMaterial", "string");
    automagic.addCheckboxFacet("General_ProductTypeFacet", "General_ProductType", "string");
    automagic.addCheckboxFacet("General_RackPostQtyFacet", "General_RackPostQty", "string");
    automagic.addCheckboxFacet("General_RackSizeFacet", "General_RackSize", "string");
    automagic.addCheckboxFacet("General_RackTypeFacet", "General_RackType", "string");
    automagic.addCheckboxFacet("General_ShippingDimensionsWxDxHWeightFacet", "General_ShippingDimensionsWxDxHWeight", "string");
    automagic.addCheckboxFacet("General_ThicknessFacet", "General_Thickness", "string");
    automagic.addCheckboxFacet("General_VoltageRequiredFacet", "General_VoltageRequired", "string");
    automagic.addCheckboxFacet("General_WeightFacet", "General_Weight", "string");
    automagic.addCheckboxFacet("General_WidthFacet", "General_Width", "string");
    automagic.addCheckboxFacet("HardwareLicence_LicenceQtyFacet", "HardwareLicence_LicenceQty", "string");
    automagic.addCheckboxFacet("HeatsinkFan_AirFlowFacet", "HeatsinkFan_AirFlow", "string");
    automagic.addCheckboxFacet("HeatsinkFan_AirPressureFacet", "HeatsinkFan_AirPressure", "string");
    automagic.addCheckboxFacet("HeatsinkFan_CableLengthFacet", "HeatsinkFan_CableLength", "string");
    automagic.addCheckboxFacet("HeatsinkFan_CompatibleWithFacet", "HeatsinkFan_CompatibleWith", "string");
    automagic.addCheckboxFacet("HeatsinkFan_FanBearingFacet", "HeatsinkFan_FanBearing", "string");
    automagic.addCheckboxFacet("HeatsinkFan_FanDiameterFacet", "HeatsinkFan_FanDiameter", "string");
    automagic.addCheckboxFacet("HeatsinkFan_FanHeightFacet", "HeatsinkFan_FanHeight", "string");
    automagic.addCheckboxFacet("HeatsinkFan_FansQtyFacet", "HeatsinkFan_FansQty", "string");
    automagic.addCheckboxFacet("HeatsinkFan_FeaturesFacet", "HeatsinkFan_Features", "string");
    automagic.addCheckboxFacet("HeatsinkFan_HeatsinkDimensionsFacet", "HeatsinkFan_HeatsinkDimensions", "string");
    automagic.addCheckboxFacet("HeatsinkFan_HeatsinkMaterialFacet", "HeatsinkFan_HeatsinkMaterial", "string");
    automagic.addCheckboxFacet("HeatsinkFan_NoiseLevelFacet", "HeatsinkFan_NoiseLevel", "string");
    automagic.addCheckboxFacet("HeatsinkFan_OperationVoltageFacet", "HeatsinkFan_OperationVoltage", "string");
    automagic.addCheckboxFacet("HeatsinkFan_PowerConnectorFacet", "HeatsinkFan_PowerConnector", "string");
    automagic.addCheckboxFacet("HeatsinkFan_PowerConsumptionFacet", "HeatsinkFan_PowerConsumption", "string");
    automagic.addCheckboxFacet("HeatsinkFan_ProcessorCompatibilityFacet", "HeatsinkFan_ProcessorCompatibility", "string");
    automagic.addCheckboxFacet("HeatsinkFan_RadiatorDimensionsFacet", "HeatsinkFan_RadiatorDimensions", "string");
    automagic.addCheckboxFacet("HeatsinkFan_RadiatorMaterialFacet", "HeatsinkFan_RadiatorMaterial", "string");
    automagic.addCheckboxFacet("HeatsinkFan_RatedCurrentFacet", "HeatsinkFan_RatedCurrent", "string");
    automagic.addCheckboxFacet("HeatsinkFan_RatedVoltageFacet", "HeatsinkFan_RatedVoltage", "string");
    automagic.addCheckboxFacet("HeatsinkFan_RotationSpeedFacet", "HeatsinkFan_RotationSpeed", "string");
    automagic.addCheckboxFacet("HeatsinkFan_StartVoltageFacet", "HeatsinkFan_StartVoltage", "string");
    automagic.addCheckboxFacet("InterfaceProvided_ConnectorProvidedFacet", "InterfaceProvided_ConnectorProvided", "string");
    automagic.addCheckboxFacet("ManufacturerWarranty_ServiceSupportFacet", "ManufacturerWarranty_ServiceSupport", "string");
    automagic.addCheckboxFacet("Miscellaneous_AssemblyRequiredFacet", "Miscellaneous_AssemblyRequired", "string");
    automagic.addCheckboxFacet("Miscellaneous_CashDrawerInterfaceFacet", "Miscellaneous_CashDrawerInterface", "string");
    automagic.addCheckboxFacet("Miscellaneous_CompliantStandardsFacet", "Miscellaneous_CompliantStandards", "string");
    automagic.addCheckboxFacet("Miscellaneous_FeaturesFacet", "Miscellaneous_Features", "string");
    automagic.addCheckboxFacet("Miscellaneous_MountingKitFacet", "Miscellaneous_MountingKit", "string");
    automagic.addCheckboxFacet("Miscellaneous_MTBFFacet", "Miscellaneous_MTBF", "string");
    automagic.addCheckboxFacet("Miscellaneous_PricingTypeFacet", "Miscellaneous_PricingType", "string");
    automagic.addCheckboxFacet("Miscellaneous_ProductRecycledContentFacet", "Miscellaneous_ProductRecycledContent", "string");
    automagic.addCheckboxFacet("Miscellaneous_TAACompliantFacet", "Miscellaneous_TAACompliant", "string");
    automagic.addCheckboxFacet("Miscellaneous_TelescopicHandleWheelsFacet", "Miscellaneous_TelescopicHandleWheels", "string");
    automagic.addCheckboxFacet("Miscellaneous_ThermalConductivityFacet", "Miscellaneous_ThermalConductivity", "string");
    automagic.addCheckboxFacet("Miscellaneous_WeightLimitFacet", "Miscellaneous_WeightLimit", "string");
    automagic.addCheckboxFacet("Miscellaneous_WheelsQtyFacet", "Miscellaneous_WheelsQty", "string");
    automagic.addCheckboxFacet("SecurityCableLock_IntendedForFacet", "SecurityCableLock_IntendedFor", "string");
    automagic.addCheckboxFacet("SecurityCableLock_LockMethodFacet", "SecurityCableLock_LockMethod", "string");
    automagic.addCheckboxFacet("SecurityCableLock_LockTypeFacet", "SecurityCableLock_LockType", "string");
    automagic.addCheckboxFacet("Software_SoftwareIncludedFacet", "Software_SoftwareIncluded", "string");
    automagic.addCheckboxFacet("ACAdapter_InputFacet", "ACAdapter_Input", "string");
    automagic.addCheckboxFacet("ACAdapter_OutputFacet", "ACAdapter_Output", "string");
    automagic.addCheckboxFacet("AudioVideo_AudioFeaturesFacet", "AudioVideo_AudioFeatures", "string");
    automagic.addCheckboxFacet("AudioVideo_CameraFacet", "AudioVideo_Camera", "string");
    automagic.addCheckboxFacet("AudioVideo_CameraFeaturesFacet", "AudioVideo_CameraFeatures", "string");
    automagic.addCheckboxFacet("AudioVideo_CodecFacet", "AudioVideo_Codec", "string");
    automagic.addCheckboxFacet("AudioVideo_CompliantStandardsFacet", "AudioVideo_CompliantStandards", "string");
    automagic.addCheckboxFacet("AudioVideo_FrameRateFacet", "AudioVideo_FrameRate", "string");
    automagic.addCheckboxFacet("AudioVideo_GraphicsProcessorFacet", "AudioVideo_GraphicsProcessor", "string");
    automagic.addCheckboxFacet("AudioVideo_ImageSensorTypeFacet", "AudioVideo_ImageSensorType", "string");
    automagic.addCheckboxFacet("AudioVideo_MaxMonitorsSupportedFacet", "AudioVideo_MaxMonitorsSupported", "string");
    automagic.addCheckboxFacet("AudioVideo_MemoryAllocationTechnologyFacet", "AudioVideo_MemoryAllocationTechnology", "string");
    automagic.addCheckboxFacet("AudioVideo_MultiGPUConfigurationFacet", "AudioVideo_MultiGPUConfiguration", "string");
    automagic.addCheckboxFacet("AudioVideo_ResolutionFacet", "AudioVideo_Resolution", "string");
    automagic.addCheckboxFacet("AudioVideo_SoundFacet", "AudioVideo_Sound", "string");
    automagic.addCheckboxFacet("AudioVideo_VideoMemoryFacet", "AudioVideo_VideoMemory", "string");
    automagic.addCheckboxFacet("AudioVideo_VideoResolutionsFacet", "AudioVideo_VideoResolutions", "string");
    automagic.addCheckboxFacet("AudioVideo_VideoSystemFeaturesFacet", "AudioVideo_VideoSystemFeatures", "string");
    automagic.addCheckboxFacet("AudioVideo_VRReadyFacet", "AudioVideo_VRReady", "string");
    automagic.addCheckboxFacet("Battery_BatteryRunTimeFacet", "Battery_BatteryRunTime", "string");
    automagic.addCheckboxFacet("Battery_CapacityFacet", "Battery_Capacity", "string");
    automagic.addCheckboxFacet("Battery_InstalledQtyFacet", "Battery_InstalledQty", "string");
    automagic.addCheckboxFacet("Battery_RunTimeFacet", "Battery_RunTime", "string");
    automagic.addCheckboxFacet("Battery_TechnologyFacet", "Battery_Technology", "string");
    automagic.addCheckboxFacet("Communications_BluetoothClassFacet", "Communications_BluetoothClass", "string");
    automagic.addCheckboxFacet("Communications_CompliantStandardsFacet", "Communications_CompliantStandards", "string");
    automagic.addCheckboxFacet("Communications_EthernetControllerFacet", "Communications_EthernetController", "string");
    automagic.addCheckboxFacet("Communications_FeaturesFacet", "Communications_Features", "string");
    automagic.addCheckboxFacet("Communications_NetworkInterfaceFacet", "Communications_NetworkInterface", "string");
    automagic.addCheckboxFacet("Communications_RemoteManagementProtocolFacet", "Communications_RemoteManagementProtocol", "string");
    automagic.addCheckboxFacet("Communications_WirelessFacet", "Communications_Wireless", "string");
    automagic.addCheckboxFacet("Communications_WirelessControllerFacet", "Communications_WirelessController", "string");
    automagic.addCheckboxFacet("ConnectionsExpansion_InterfacesFacet", "ConnectionsExpansion_Interfaces", "string");
    automagic.addCheckboxFacet("ConnectionsExpansion_MemoryCardReaderFacet", "ConnectionsExpansion_MemoryCardReader", "string");
    automagic.addCheckboxFacet("ConnectionsExpansion_SlotsFacet", "ConnectionsExpansion_Slots", "string");
    automagic.addCheckboxFacet("DimensionsWeight_DimensionsWxDxHFacet", "DimensionsWeight_DimensionsWxDxH", "string");
    automagic.addCheckboxFacet("DimensionsWeight_DimensionsWxDxHtabletFacet", "DimensionsWeight_DimensionsWxDxHtablet", "string");
    automagic.addCheckboxFacet("DimensionsWeight_DimensionsWxDxHtabletwithkeyboardFacet", "DimensionsWeight_DimensionsWxDxHtabletwithkeyboard", "string");
    automagic.addCheckboxFacet("DimensionsWeight_DimensionsWxDxHunfoldedFacet", "DimensionsWeight_DimensionsWxDxHunfolded", "string");
    automagic.addCheckboxFacet("DimensionsWeight_DimensionsWxDxHWeightDetailsFacet", "DimensionsWeight_DimensionsWxDxHWeightDetails", "string");
    automagic.addCheckboxFacet("DimensionsWeight_ShippingDimensionsWxDxHWeightFacet", "DimensionsWeight_ShippingDimensionsWxDxHWeight", "string");
    automagic.addCheckboxFacet("DimensionsWeight_WeightFacet", "DimensionsWeight_Weight", "string");
    automagic.addCheckboxFacet("Display_BezelTypeFacet", "Display_BezelType", "string");
    automagic.addCheckboxFacet("Display_ColourSupportFacet", "Display_ColourSupport", "string");
    automagic.addCheckboxFacet("Display_FeaturesFacet", "Display_Features", "string");
    automagic.addCheckboxFacet("Display_ImageAspectRatioFacet", "Display_ImageAspectRatio", "string");
    automagic.addCheckboxFacet("Display_ImageBrightnessFacet", "Display_ImageBrightness", "string");
    automagic.addCheckboxFacet("Display_KeyboardNameFacet", "Display_KeyboardName", "string");
    automagic.addCheckboxFacet("Display_LCDBacklightTechnologyFacet", "Display_LCDBacklightTechnology", "string");
    automagic.addCheckboxFacet("Display_PixelDensityppiFacet", "Display_PixelDensityppi", "string");
    automagic.addCheckboxFacet("Display_PrivacyTechnologyFacet", "Display_PrivacyTechnology", "string");
    automagic.addCheckboxFacet("Display_ResolutionFacet", "Display_Resolution", "string");
    automagic.addCheckboxFacet("Display_TouchscreenFacet", "Display_Touchscreen", "string");
    automagic.addCheckboxFacet("Display_TypeFacet", "Display_Type", "string");
    automagic.addCheckboxFacet("Display_WidescreenFacet", "Display_Widescreen", "string");
    automagic.addCheckboxFacet("EnvironmentalParameters_HumidityRangeOperatingFacet", "EnvironmentalParameters_HumidityRangeOperating", "string");
    automagic.addCheckboxFacet("EnvironmentalParameters_ShockTolerancenonoperatingFacet", "EnvironmentalParameters_ShockTolerancenonoperating", "string");
    automagic.addCheckboxFacet("EnvironmentalParameters_ShockToleranceoperatingFacet", "EnvironmentalParameters_ShockToleranceoperating", "string");
    automagic.addCheckboxFacet("EnvironmentalParameters_VibrationTolerancenonoperatingFacet", "EnvironmentalParameters_VibrationTolerancenonoperating", "string");
    automagic.addCheckboxFacet("EnvironmentalParameters_VibrationToleranceoperatingFacet", "EnvironmentalParameters_VibrationToleranceoperating", "string");
    automagic.addCheckboxFacet("EnvironmentalStandards_ENERGYSTARCertifiedFacet", "EnvironmentalStandards_ENERGYSTARCertified", "string");
    automagic.addCheckboxFacet("EnvironmentalStandards_EPEATCompliantFacet", "EnvironmentalStandards_EPEATCompliant", "string");
    automagic.addCheckboxFacet("EnvironmentalStandards_TCOCertifiedFacet", "EnvironmentalStandards_TCOCertified", "string");
    automagic.addCheckboxFacet("General_OperatingSystemFacet", "General_OperatingSystem", "string");
    automagic.addCheckboxFacet("Input_FeaturesFacet", "Input_Features", "string");
    automagic.addCheckboxFacet("Input_KeyboardBacklightFacet", "Input_KeyboardBacklight", "string");
    automagic.addCheckboxFacet("Input_KeyboardLayoutFacet", "Input_KeyboardLayout", "string");
    automagic.addCheckboxFacet("Input_NumericKeypadFacet", "Input_NumericKeypad", "string");
    automagic.addCheckboxFacet("Input_TypeFacet", "Input_Type", "string");
    automagic.addCheckboxFacet("ManufacturerWarranty_BundledServicesFacet", "ManufacturerWarranty_BundledServices", "string");
    automagic.addCheckboxFacet("ManufacturerWarranty_RegionalWarrantyExceptionsFacet", "ManufacturerWarranty_RegionalWarrantyExceptions", "string");
    automagic.addCheckboxFacet("Memory_EmptySlotsFacet", "Memory_EmptySlots", "string");
    automagic.addCheckboxFacet("Memory_FormFactorFacet", "Memory_FormFactor", "string");
    automagic.addCheckboxFacet("Memory_MaxRAMSupportedFacet", "Memory_MaxRAMSupported", "string");
    automagic.addCheckboxFacet("Memory_RAMFacet", "Memory_RAM", "string");
    automagic.addCheckboxFacet("Memory_RatedSpeedFacet", "Memory_RatedSpeed", "string");
    automagic.addCheckboxFacet("Memory_SlotsQtyFacet", "Memory_SlotsQty", "string");
    automagic.addCheckboxFacet("Memory_SpeedFacet", "Memory_Speed", "string");
    automagic.addCheckboxFacet("Memory_TechnologyFacet", "Memory_Technology", "string");
    automagic.addCheckboxFacet("Miscellaneous_CablesIncludedFacet", "Miscellaneous_CablesIncluded", "string");
    automagic.addCheckboxFacet("Miscellaneous_CaseMaterialFacet", "Miscellaneous_CaseMaterial", "string");
    automagic.addCheckboxFacet("Miscellaneous_ColourFacet", "Miscellaneous_Colour", "string");
    automagic.addCheckboxFacet("Miscellaneous_DockableFacet", "Miscellaneous_Dockable", "string");
    automagic.addCheckboxFacet("Miscellaneous_ImageColourDisclaimerFacet", "Miscellaneous_ImageColourDisclaimer", "string");
    automagic.addCheckboxFacet("Miscellaneous_IncludedAccessoriesFacet", "Miscellaneous_IncludedAccessories", "string");
    automagic.addCheckboxFacet("Miscellaneous_IntegratedOptionsFacet", "Miscellaneous_IntegratedOptions", "string");
    automagic.addCheckboxFacet("Miscellaneous_LocalizationFacet", "Miscellaneous_Localization", "string");
    automagic.addCheckboxFacet("Miscellaneous_ManufacturerSellingProgramFacet", "Miscellaneous_ManufacturerSellingProgram", "string");
    automagic.addCheckboxFacet("Miscellaneous_RepairabilityIndexFacet", "Miscellaneous_RepairabilityIndex", "string");
    automagic.addCheckboxFacet("Miscellaneous_SARValueFacet", "Miscellaneous_SARValue", "string");
    automagic.addCheckboxFacet("Miscellaneous_SecurityFacet", "Miscellaneous_Security", "string");
    automagic.addCheckboxFacet("Miscellaneous_SecuritySlotTypeFacet", "Miscellaneous_SecuritySlotType", "string");
    automagic.addCheckboxFacet("Miscellaneous_SurfaceFinishFacet", "Miscellaneous_SurfaceFinish", "string");
    automagic.addCheckboxFacet("Miscellaneous_TheftIntrusionProtectionFacet", "Miscellaneous_TheftIntrusionProtection", "string");
    automagic.addCheckboxFacet("Navigation_ReceiverFacet", "Navigation_Receiver", "string");
    automagic.addCheckboxFacet("ProcessorChipset_64bitComputingFacet", "ProcessorChipset_64bitComputing", "string");
    automagic.addCheckboxFacet("ProcessorChipset_CacheFacet", "ProcessorChipset_Cache", "string");
    automagic.addCheckboxFacet("ProcessorChipset_ChipsetFacet", "ProcessorChipset_Chipset", "string");
    automagic.addCheckboxFacet("ProcessorChipset_CPUFacet", "ProcessorChipset_CPU", "string");
    automagic.addCheckboxFacet("ProcessorChipset_FeaturesFacet", "ProcessorChipset_Features", "string");
    automagic.addCheckboxFacet("ProcessorChipset_MaxTurboSpeedFacet", "ProcessorChipset_MaxTurboSpeed", "string");
    automagic.addCheckboxFacet("ProcessorChipset_NumberofCoresFacet", "ProcessorChipset_NumberofCores", "string");
    automagic.addCheckboxFacet("ProcessorChipset_PlatformTechnologyFacet", "ProcessorChipset_PlatformTechnology", "string");
    automagic.addCheckboxFacet("Storage_MainStorageFacet", "Storage_MainStorage", "string");
    automagic.addCheckboxFacet("Storage_OpticalDriveFacet", "Storage_OpticalDrive", "string");
    automagic.addCheckboxFacet("Storage_RAIDLevelFacet", "Storage_RAIDLevel", "string");
    automagic.addCheckboxFacet("Storage_SecondaryStorageFacet", "Storage_SecondaryStorage", "string");
    automagic.addCheckboxFacet("Storage_SSDCacheFacet", "Storage_SSDCache", "string");
    automagic.addCheckboxFacet("Storage_TotalCapacityFacet", "Storage_TotalCapacity", "string");
    automagic.addCheckboxFacet("WirelessBroadbandWWAN_ControllerFacet", "WirelessBroadbandWWAN_Controller", "string");
    automagic.addCheckboxFacet("WirelessBroadbandWWAN_GenerationFacet", "WirelessBroadbandWWAN_Generation", "string");
    automagic.addCheckboxFacet("WirelessBroadbandWWAN_MaxTransferRateFacet", "WirelessBroadbandWWAN_MaxTransferRate", "string");
    automagic.addCheckboxFacet("WirelessBroadbandWWAN_ServiceProviderFacet", "WirelessBroadbandWWAN_ServiceProvider", "string");
    automagic.addCheckboxFacet("WirelessBroadbandWWAN_TechnologyFacet", "WirelessBroadbandWWAN_Technology", "string");
    automagic.addCheckboxFacet("productlineFacet", "productline", "string");
    automagic.addCheckboxFacet("modelFacet", "model", "string");
    //automagic.addCheckboxFacet("priceFacet", "Price","number");

    // Adds a button to clear any applied filters
    automagic.addClearFiltersButton("clearFilters");

    //$(function () {
    //    //$(document).on("change", 'input[type=checkbox]', function () {
    //    //    setTimeout(renderPriceButton, 2000);
    //    //});

    //    $("#searchbox1").autocomplete({
    //        source: "/home/suggest?highlights=false&fuzzy=false&",
    //        minLength: 3,
    //        position: {
    //            my: "left top",
    //            at: "left-23 bottom+10"
    //        }
    //    });
    //});

</script>
<script>
    
    function populateData(productCode) {
       // alert("hio")
        $.ajax({
            url: "Default.aspx/GetPricingDetails",
            data: '{manufacturerProductCode: "' + productCode + '"}',
            type: "POST",
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            success: OnSuccess,
            error: onError
        });
    }
    function OnSuccess(data) {
        //console.log(data.d);
        //alert("here")
        var pricingDetail = JSON.parse(data.d);
        //dlgPricingDetail
        $('#dlgPricingDetail').modal('toggle');

        var htmlContent = '';
        $.each(pricingDetail.getQPCPriceDetailList, function (i, supplier) {
            htmlContent += '<div class="row product_pricing_container" style="margin: 5px;background-color:#f8f9fa;">';
            htmlContent += '<div class="col-md-12" style="padding: 5px;">';
            htmlContent += '<b>Price: ' + supplier.buyPriceEx + '</b> ';
            htmlContent += '</div>';
            htmlContent += '<div class="col-md-12" style="padding: 5px;">';
            htmlContent += '<p>Special Price: ' + supplier.specialPrice + '</p>';
            htmlContent += '</div>';
            htmlContent += '<div class="col-md-12" style="padding: 5px;">';
            htmlContent += '<p>Supplier: ' + supplier.supplierName + '</p></div>';
            htmlContent += '</div>';
            //specialPrice
            htmlContent += '<br/>';
        });
        $('#pricingContainer').html(htmlContent);
    }
    function onError() {
        alert('Failed!');
    }
</script>
</body>
</html>