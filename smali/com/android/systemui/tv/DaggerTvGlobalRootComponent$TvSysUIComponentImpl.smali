.class final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;
.super Ljava/lang/Object;
.source "DaggerTvGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/tv/TvSysUIComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TvSysUIComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$QSFragmentComponentImpl;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$QSFragmentComponentFactory;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$KeyguardUserSwitcherComponentImpl;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$KeyguardUserSwitcherComponentFactory;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$KeyguardQsUserSwitchComponentImpl;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$KeyguardQsUserSwitchComponentFactory;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$FragmentCreatorImpl;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$FragmentCreatorFactory;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DozeComponentImpl;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DozeComponentFactory;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$StatusBarComponentImpl;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$StatusBarComponentBuilder;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentBuilder;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$NotificationShelfComponentImpl;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$NotificationShelfComponentBuilder;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$KeyguardStatusViewComponentImpl;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$KeyguardStatusViewComponentFactory;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$KeyguardBouncerComponentImpl;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$KeyguardBouncerComponentFactory;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$SectionHeaderControllerSubcomponentImpl;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorImpl;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorFactory;
    }
.end annotation


# instance fields
.field private accessibilityControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityController;",
            ">;"
        }
    .end annotation
.end field

.field private accessibilityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private actionClickLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/ActionClickLogger;",
            ">;"
        }
    .end annotation
.end field

.field private actionProxyReceiverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenshot/ActionProxyReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private activityIntentHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ActivityIntentHelper;",
            ">;"
        }
    .end annotation
.end field

.field private activityStarterDelegateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ActivityStarterDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private airplaneModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AirplaneModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private ambientStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/AmbientState;",
            ">;"
        }
    .end annotation
.end field

.field private animatedImageNotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private appOpsControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/appops/AppOpsControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private appOpsCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController;",
            ">;"
        }
    .end annotation
.end field

.field private assistHandleLikeHomeBehaviorProvider:Ljavax/inject/Provider;

.field private assistHandleOffBehaviorProvider:Ljavax/inject/Provider;

.field private assistHandleReminderExpBehaviorProvider:Ljavax/inject/Provider;

.field private assistLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistLogger;",
            ">;"
        }
    .end annotation
.end field

.field private assistManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private assistantFeedbackControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;",
            ">;"
        }
    .end annotation
.end field

.field private asyncSensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private authControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/biometrics/AuthController;",
            ">;"
        }
    .end annotation
.end field

.field private batterySaverTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BatterySaverTile;",
            ">;"
        }
    .end annotation
.end field

.field private batteryStateNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private bindSystemClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/time/SystemClock;",
            ">;"
        }
    .end annotation
.end field

.field private biometricUnlockControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BluetoothTile;",
            ">;"
        }
    .end annotation
.end field

.field private blurUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/BlurUtils;",
            ">;"
        }
    .end annotation
.end field

.field private bootCompleteCacheImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootCompleteCacheImpl;",
            ">;"
        }
    .end annotation
.end field

.field private brightLineFalsingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/BrightLineFalsingManager;",
            ">;"
        }
    .end annotation
.end field

.field private brightnessControllerSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessControllerSettings;",
            ">;"
        }
    .end annotation
.end field

.field private brightnessDialogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessDialog;",
            ">;"
        }
    .end annotation
.end field

.field private broadcastDispatcherLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;",
            ">;"
        }
    .end annotation
.end field

.field private bubbleCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private builderProvider:Ljavax/inject/Provider;

.field private builderProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private builderProvider3:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private builderProvider4:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private builderProvider5:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/wakelock/WakeLock$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private builderProvider6:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/external/CustomTile$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private builderProvider7:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private builderProvider8:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/AutoAddTracker$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private cameraToggleTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CameraToggleTile;",
            ">;"
        }
    .end annotation
.end field

.field private castControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/CastControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private castTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CastTile;",
            ">;"
        }
    .end annotation
.end field

.field private cellularTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CellularTile;",
            ">;"
        }
    .end annotation
.end field

.field private channelEditorDialogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
            ">;"
        }
    .end annotation
.end field

.field private clockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/clock/ClockManager;",
            ">;"
        }
    .end annotation
.end field

.field private colorInversionTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ColorInversionTile;",
            ">;"
        }
    .end annotation
.end field

.field private commandRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/commandline/CommandRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private contextComponentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dagger/ContextComponentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private controlActionCoordinatorImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;",
            ">;"
        }
    .end annotation
.end field

.field private controlsBindingControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private controlsComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/dagger/ControlsComponent;",
            ">;"
        }
    .end annotation
.end field

.field private controlsControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private controlsDialogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlsDialog;",
            ">;"
        }
    .end annotation
.end field

.field private controlsEditingActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/management/ControlsEditingActivity;",
            ">;"
        }
    .end annotation
.end field

.field private controlsFavoritingActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/management/ControlsFavoritingActivity;",
            ">;"
        }
    .end annotation
.end field

.field private controlsListingControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/management/ControlsListingControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private controlsProviderSelectorActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;",
            ">;"
        }
    .end annotation
.end field

.field private controlsRequestDialogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/management/ControlsRequestDialog;",
            ">;"
        }
    .end annotation
.end field

.field private controlsUiControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private conversationCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private conversationNotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private conversationNotificationProcessorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private createUserActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/user/CreateUserActivity;",
            ">;"
        }
    .end annotation
.end field

.field private createViewInstanceCreatorFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private customIconCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/CustomIconCache;",
            ">;"
        }
    .end annotation
.end field

.field private darkIconDispatcherImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;",
            ">;"
        }
    .end annotation
.end field

.field private dataSaverTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DataSaverTile;",
            ">;"
        }
    .end annotation
.end field

.field private dateFormatUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/time/DateFormatUtil;",
            ">;"
        }
    .end annotation
.end field

.field private defaultUiControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/ui/DefaultUiController;",
            ">;"
        }
    .end annotation
.end field

.field private deleteScreenshotReceiverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private dependencyProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/Dependency;",
            ">;"
        }
    .end annotation
.end field

.field private deviceConfigHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/DeviceConfigHelper;",
            ">;"
        }
    .end annotation
.end field

.field private deviceConfigProxyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            ">;"
        }
    .end annotation
.end field

.field private deviceControlsTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DeviceControlsTile;",
            ">;"
        }
    .end annotation
.end field

.field private deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private deviceProvisionedCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private diagonalClassifierProvider:Ljavax/inject/Provider;

.field private dismissCallbackRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private distanceClassifierProvider:Ljavax/inject/Provider;

.field private dndTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DndTile;",
            ">;"
        }
    .end annotation
.end field

.field private dockManagerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private doubleTapClassifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/DoubleTapClassifier;",
            ">;"
        }
    .end annotation
.end field

.field private dozeComponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/dagger/DozeComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private dozeLogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeLog;",
            ">;"
        }
    .end annotation
.end field

.field private dozeLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeLogger;",
            ">;"
        }
    .end annotation
.end field

.field private dozeParametersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;"
        }
    .end annotation
.end field

.field private dozeScrimControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            ">;"
        }
    .end annotation
.end field

.field private dozeServiceHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            ">;"
        }
    .end annotation
.end field

.field private dozeServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeService;",
            ">;"
        }
    .end annotation
.end field

.field private dumpHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpHandler;",
            ">;"
        }
    .end annotation
.end field

.field private dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;"
        }
    .end annotation
.end field

.field private dynamicChildBindControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicChildBindController;",
            ">;"
        }
    .end annotation
.end field

.field private dynamicPrivacyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;"
        }
    .end annotation
.end field

.field private enhancedEstimatesImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/EnhancedEstimatesImpl;",
            ">;"
        }
    .end annotation
.end field

.field private expandableNotificationRowComponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private expansionStateLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;",
            ">;"
        }
    .end annotation
.end field

.field private extensionControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private factoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private factoryProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBouncer$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private falsingCollectorImplProvider:Ljavax/inject/Provider;

.field private falsingDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingDataProvider;",
            ">;"
        }
    .end annotation
.end field

.field private falsingManagerProxyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingManagerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private featureFlagReaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/flags/FeatureFlagReader;",
            ">;"
        }
    .end annotation
.end field

.field private featureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private filesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/io/Files;",
            ">;"
        }
    .end annotation
.end field

.field private flashlightControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private flashlightTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/FlashlightTile;",
            ">;"
        }
    .end annotation
.end field

.field private foregroundServiceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;"
        }
    .end annotation
.end field

.field private foregroundServiceDismissalFeatureControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;",
            ">;"
        }
    .end annotation
.end field

.field private foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceNotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private foregroundServiceSectionControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentCreatorFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/fragments/FragmentService$FragmentCreator$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/fragments/FragmentService;",
            ">;"
        }
    .end annotation
.end field

.field private garbageMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private globalActionsComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/globalactions/GlobalActionsComponent;",
            ">;"
        }
    .end annotation
.end field

.field private globalActionsDialogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog;",
            ">;"
        }
    .end annotation
.end field

.field private globalActionsImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/globalactions/GlobalActionsImpl;",
            ">;"
        }
    .end annotation
.end field

.field private globalSettingsImplProvider:Ljavax/inject/Provider;

.field private groupCoalescerLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;",
            ">;"
        }
    .end annotation
.end field

.field private groupCoalescerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;",
            ">;"
        }
    .end annotation
.end field

.field private headsUpControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;",
            ">;"
        }
    .end annotation
.end field

.field private headsUpCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private headsUpViewBinderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;",
            ">;"
        }
    .end annotation
.end field

.field private hideNotifsForOtherUsersCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private highPriorityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;",
            ">;"
        }
    .end annotation
.end field

.field private historyTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/HistoryTracker;",
            ">;"
        }
    .end annotation
.end field

.field private homeSoundEffectControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;",
            ">;"
        }
    .end annotation
.end field

.field private hotspotControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private hotspotTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/HotspotTile;",
            ">;"
        }
    .end annotation
.end field

.field private iconBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/icon/IconBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private iconManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/icon/IconManager;",
            ">;"
        }
    .end annotation
.end field

.field private imageExporterProvider:Ljavax/inject/Provider;

.field private initControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/InitController;",
            ">;"
        }
    .end annotation
.end field

.field private injectionInflationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;"
        }
    .end annotation
.end field

.field private instantAppNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/InstantAppNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private internetTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/InternetTile;",
            ">;"
        }
    .end annotation
.end field

.field private isReduceBrightColorsAvailableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardBouncerComponentFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardBypassControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardDismissUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardDisplayManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardDisplayManager;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardEnvironmentImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardIndicationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/KeyguardIndicationController;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardLifecyclesDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardMediaControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/KeyguardMediaController;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardQsUserSwitchComponentFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardSecurityModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityModel;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardService;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardStateControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardStatusViewComponentFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardUserSwitcherComponentFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private latencyTesterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/LatencyTester;",
            ">;"
        }
    .end annotation
.end field

.field private leakReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakReporter;",
            ">;"
        }
    .end annotation
.end field

.field private lightBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;"
        }
    .end annotation
.end field

.field private lightsOutNotifControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightsOutNotifController;",
            ">;"
        }
    .end annotation
.end field

.field private localMediaManagerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/LocalMediaManagerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private locationControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/LocationControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private locationTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/LocationTile;",
            ">;"
        }
    .end annotation
.end field

.field private lockscreenGestureLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            ">;"
        }
    .end annotation
.end field

.field private lockscreenWallpaperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
            ">;"
        }
    .end annotation
.end field

.field private logBufferEulogizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/LogBufferEulogizer;",
            ">;"
        }
    .end annotation
.end field

.field private logBufferFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBufferFactory;",
            ">;"
        }
    .end annotation
.end field

.field private logBufferFreezerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/LogBufferFreezer;",
            ">;"
        }
    .end annotation
.end field

.field private lowPriorityInflationHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private managedProfileControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mapOfClassOfAndProviderOfActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mapOfClassOfAndProviderOfBroadcastReceiverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/content/BroadcastReceiver;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mapOfClassOfAndProviderOfRecentsImplementationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/RecentsImplementation;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mapOfClassOfAndProviderOfServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Service;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mapOfClassOfAndProviderOfSystemUIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/SystemUI;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mediaArtworkProcessorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/MediaArtworkProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private mediaBrowserFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaBrowserFactory;",
            ">;"
        }
    .end annotation
.end field

.field private mediaCarouselControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaCarouselController;",
            ">;"
        }
    .end annotation
.end field

.field private mediaControlPanelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaControlPanel;",
            ">;"
        }
    .end annotation
.end field

.field private mediaControllerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaControllerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private mediaCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private mediaDataFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mediaDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private mediaDeviceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDeviceManager;",
            ">;"
        }
    .end annotation
.end field

.field private mediaFeatureFlagProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaFeatureFlag;",
            ">;"
        }
    .end annotation
.end field

.field private mediaHierarchyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHierarchyManager;",
            ">;"
        }
    .end annotation
.end field

.field private mediaHostStatesManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHostStatesManager;",
            ">;"
        }
    .end annotation
.end field

.field private mediaOutputDialogFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;",
            ">;"
        }
    .end annotation
.end field

.field private mediaOutputDialogReceiverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mediaResumeListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaResumeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mediaSessionBasedFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaSessionBasedFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mediaTimeoutListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaTimeoutListener;",
            ">;"
        }
    .end annotation
.end field

.field private mediaViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaViewController;",
            ">;"
        }
    .end annotation
.end field

.field private memoryTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;",
            ">;"
        }
    .end annotation
.end field

.field private microphoneToggleTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;",
            ">;"
        }
    .end annotation
.end field

.field private namedSetOfFalsingClassifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/android/systemui/classifier/FalsingClassifier;",
            ">;>;"
        }
    .end annotation
.end field

.field private navigationBarOverlayControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationBarOverlayController;",
            ">;"
        }
    .end annotation
.end field

.field private navigationModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;"
        }
    .end annotation
.end field

.field private networkControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private newKeyguardViewMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;"
        }
    .end annotation
.end field

.field private nextAlarmControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private nfcTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NfcTile;",
            ">;"
        }
    .end annotation
.end field

.field private nightDisplayTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NightDisplayTile;",
            ">;"
        }
    .end annotation
.end field

.field private notifBindPipelineInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private notifBindPipelineLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;",
            ">;"
        }
    .end annotation
.end field

.field private notifBindPipelineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;",
            ">;"
        }
    .end annotation
.end field

.field private notifCollectionLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;",
            ">;"
        }
    .end annotation
.end field

.field private notifCollectionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifCollection;",
            ">;"
        }
    .end annotation
.end field

.field private notifCoordinatorsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;",
            ">;"
        }
    .end annotation
.end field

.field private notifInflaterImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private notifInflationErrorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;",
            ">;"
        }
    .end annotation
.end field

.field private notifPipelineInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private notifPipelineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;"
        }
    .end annotation
.end field

.field private notifRemoteViewCacheImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;",
            ">;"
        }
    .end annotation
.end field

.field private notifViewBarnProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;",
            ">;"
        }
    .end annotation
.end field

.field private notificationClickNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationClickNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private notificationClickerLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;",
            ">;"
        }
    .end annotation
.end field

.field private notificationContentInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;",
            ">;"
        }
    .end annotation
.end field

.field private notificationEntryManagerLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;",
            ">;"
        }
    .end annotation
.end field

.field private notificationFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            ">;"
        }
    .end annotation
.end field

.field private notificationGroupManagerLegacyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;",
            ">;"
        }
    .end annotation
.end field

.field private notificationIconAreaControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
            ">;"
        }
    .end annotation
.end field

.field private notificationInteractionTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationInteractionTracker;",
            ">;"
        }
    .end annotation
.end field

.field private notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private notificationPersonExtractorPluginBoundaryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;",
            ">;"
        }
    .end annotation
.end field

.field private notificationRankingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationRoundnessManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationRowBinderImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private notificationSectionsFeatureManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationSectionsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private notificationSectionsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationShadeDepthControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            ">;"
        }
    .end annotation
.end field

.field private notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private notificationShelfComponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private notificationsControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private notificationsControllerStubProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsControllerStub;",
            ">;"
        }
    .end annotation
.end field

.field private optionalOfControlsFavoritePersistenceWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private optionalOfRecentsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;>;"
        }
    .end annotation
.end field

.field private optionalOfStatusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;"
        }
    .end annotation
.end field

.field private overviewProxyRecentsImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyRecentsImpl;",
            ">;"
        }
    .end annotation
.end field

.field private overviewProxyServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation
.end field

.field private peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;",
            ">;"
        }
    .end annotation
.end field

.field private peopleSpaceActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/people/PeopleSpaceActivity;",
            ">;"
        }
    .end annotation
.end field

.field private peopleSpaceWidgetEnablerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/people/widget/PeopleSpaceWidgetEnabler;",
            ">;"
        }
    .end annotation
.end field

.field private permissionFlagsCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/appops/PermissionFlagsCache;",
            ">;"
        }
    .end annotation
.end field

.field private phoneStateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhoneStateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private phoneStatusBarPolicyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private pluginDependencyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;"
        }
    .end annotation
.end field

.field private pointerCountClassifierProvider:Ljavax/inject/Provider;

.field private powerNotificationWarningsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/PowerNotificationWarnings;",
            ">;"
        }
    .end annotation
.end field

.field private powerUIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/PowerUI;",
            ">;"
        }
    .end annotation
.end field

.field private preparationCoordinatorLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;",
            ">;"
        }
    .end annotation
.end field

.field private preparationCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private privacyDialogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyDialogController;",
            ">;"
        }
    .end annotation
.end field

.field private privacyItemControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyItemController;",
            ">;"
        }
    .end annotation
.end field

.field private privacyLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/logging/PrivacyLogger;",
            ">;"
        }
    .end annotation
.end field

.field private protoTracerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tracing/ProtoTracer;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccessPointControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private provideActivityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private provideAlwaysOnDisplayPolicyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private provideAmbientDisplayConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/AmbientDisplayConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private provideAssistHandleBehaviorControllerMapProvider:Ljavax/inject/Provider;

.field private provideAssistHandleViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleViewController;",
            ">;"
        }
    .end annotation
.end field

.field private provideAssistUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;"
        }
    .end annotation
.end field

.field private provideAutoHideControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;"
        }
    .end annotation
.end field

.field private provideAutoTileManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoTileManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideBackgroundDelayableExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private provideBackgroundExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideBackgroundHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideBackgroundRepeatableExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/RepeatableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private provideBatteryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;"
        }
    .end annotation
.end field

.field private provideBgHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideBgLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private provideBroadcastDispatcherLogBufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private provideBubblesManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/wmshell/BubblesManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideCommandQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;"
        }
    .end annotation
.end field

.field private provideCommonNotifCollectionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            ">;"
        }
    .end annotation
.end field

.field private provideConfigurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;"
        }
    .end annotation
.end field

.field private provideDataSaverControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;"
        }
    .end annotation
.end field

.field private provideDelayableExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private provideDemoModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/demomode/DemoModeController;",
            ">;"
        }
    .end annotation
.end field

.field private provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private provideDozeLogBufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private provideEditUserInfoControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/settingslib/users/EditUserInfoController;",
            ">;"
        }
    .end annotation
.end field

.field private provideExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideFaceAuthScreenBrightnessControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideGroupExpansionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideGroupMembershipManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            ">;"
        }
    .end annotation
.end field

.field private provideINotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideIndividualSensorPrivacyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;",
            ">;"
        }
    .end annotation
.end field

.field private provideKeyguardLiftControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;",
            ">;"
        }
    .end annotation
.end field

.field private provideLeakDetectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            ">;"
        }
    .end annotation
.end field

.field private provideLeakReportEmailProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideLockPatternUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ">;"
        }
    .end annotation
.end field

.field private provideLogcatEchoTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogcatEchoTracker;",
            ">;"
        }
    .end annotation
.end field

.field private provideLongRunningExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideLongRunningLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private provideMainDelayableExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private provideMetricsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideNavigationBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            ">;"
        }
    .end annotation
.end field

.field private provideNightDisplayListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/NightDisplayListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotifInteractionLogBufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotifRemoteViewCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationEntryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationGutsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationMediaManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationMessagingUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/util/NotificationMessagingUtil;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationPanelLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationSectionLogBufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationViewHierarchyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationsLogBufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private provideOnUserInteractionCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private providePluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;"
        }
    .end annotation
.end field

.field private providePrimaryProxSensorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ThresholdSensor;",
            ">;"
        }
    .end annotation
.end field

.field private providePrivacyLogBufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private provideQSFlagProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private provideQuickSettingsLogBufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private provideRecentsImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/RecentsImplementation;",
            ">;"
        }
    .end annotation
.end field

.field private provideRecentsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/Recents;",
            ">;"
        }
    .end annotation
.end field

.field private provideSecondaryProxSensorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ThresholdSensor;",
            ">;"
        }
    .end annotation
.end field

.field private provideSensorPrivacyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SensorPrivacyController;",
            ">;"
        }
    .end annotation
.end field

.field private provideSharePreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private provideSmartReplyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;"
        }
    .end annotation
.end field

.field private provideStatusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private provideSysUiStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;"
        }
    .end annotation
.end field

.field private provideSystemClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/slice/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private provideTaskStackChangeListenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/TaskStackChangeListeners;",
            ">;"
        }
    .end annotation
.end field

.field private provideThemeOverlayManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/theme/ThemeOverlayApplier;",
            ">;"
        }
    .end annotation
.end field

.field private provideTimeTickHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideToastLogBufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private provideTvNotificationHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideUserTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserTracker;",
            ">;"
        }
    .end annotation
.end field

.field private provideVisualStabilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;",
            ">;"
        }
    .end annotation
.end field

.field private providerLayoutInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private providesAlertingHeaderControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;",
            ">;"
        }
    .end annotation
.end field

.field private providesAlertingHeaderNodeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/render/NodeController;",
            ">;"
        }
    .end annotation
.end field

.field private providesAlertingHeaderSubcomponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;",
            ">;"
        }
    .end annotation
.end field

.field private providesBrightLineGestureClassifiersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/android/systemui/classifier/FalsingClassifier;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesBroadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private providesChoreographerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field

.field private providesControlsFeatureEnabledProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private providesDoubleTapTouchSlopProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private providesIncomingHeaderControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;",
            ">;"
        }
    .end annotation
.end field

.field private providesIncomingHeaderNodeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/render/NodeController;",
            ">;"
        }
    .end annotation
.end field

.field private providesIncomingHeaderSubcomponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;",
            ">;"
        }
    .end annotation
.end field

.field private providesKeyguardMediaHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHost;",
            ">;"
        }
    .end annotation
.end field

.field private providesModeSwitchesControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/ModeSwitchesController;",
            ">;"
        }
    .end annotation
.end field

.field private providesPeopleHeaderControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;",
            ">;"
        }
    .end annotation
.end field

.field private providesPeopleHeaderNodeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/render/NodeController;",
            ">;"
        }
    .end annotation
.end field

.field private providesPeopleHeaderSubcomponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;",
            ">;"
        }
    .end annotation
.end field

.field private providesQSMediaHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHost;",
            ">;"
        }
    .end annotation
.end field

.field private providesQuickQSMediaHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHost;",
            ">;"
        }
    .end annotation
.end field

.field private providesSilentHeaderControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;",
            ">;"
        }
    .end annotation
.end field

.field private providesSilentHeaderNodeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/render/NodeController;",
            ">;"
        }
    .end annotation
.end field

.field private providesSilentHeaderSubcomponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;",
            ">;"
        }
    .end annotation
.end field

.field private providesSingleTapTouchSlopProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private providesSystemActionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/SystemActions;",
            ">;"
        }
    .end annotation
.end field

.field private providesViewMediatorCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private proximityClassifierProvider:Ljavax/inject/Provider;

.field private proximitySensorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ProximitySensor;",
            ">;"
        }
    .end annotation
.end field

.field private pulseExpansionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private qSDetailDisplayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSDetailDisplayer;",
            ">;"
        }
    .end annotation
.end field

.field private qSFactoryImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private qSLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/logging/QSLogger;",
            ">;"
        }
    .end annotation
.end field

.field private qSTileHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;"
        }
    .end annotation
.end field

.field private rankingCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private recordingControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            ">;"
        }
    .end annotation
.end field

.field private recordingServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenrecord/RecordingService;",
            ">;"
        }
    .end annotation
.end field

.field private reduceBrightColorsTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;",
            ">;"
        }
    .end annotation
.end field

.field private remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;"
        }
    .end annotation
.end field

.field private remoteInputUriControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputUriController;",
            ">;"
        }
    .end annotation
.end field

.field private resumeMediaBrowserFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/ResumeMediaBrowserFactory;",
            ">;"
        }
    .end annotation
.end field

.field private ringerModeTrackerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/RingerModeTrackerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private rotationLockControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private rotationLockTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/RotationLockTile;",
            ">;"
        }
    .end annotation
.end field

.field private rowContentBindStageLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;",
            ">;"
        }
    .end annotation
.end field

.field private rowContentBindStageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;",
            ">;"
        }
    .end annotation
.end field

.field private screenDecorationsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ScreenDecorations;",
            ">;"
        }
    .end annotation
.end field

.field private screenLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private screenPinningRequestProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/ScreenPinningRequest;",
            ">;"
        }
    .end annotation
.end field

.field private screenRecordDialogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenrecord/ScreenRecordDialog;",
            ">;"
        }
    .end annotation
.end field

.field private screenRecordTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ScreenRecordTile;",
            ">;"
        }
    .end annotation
.end field

.field private screenshotControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenshot/ScreenshotController;",
            ">;"
        }
    .end annotation
.end field

.field private screenshotNotificationsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenshot/ScreenshotNotificationsController;",
            ">;"
        }
    .end annotation
.end field

.field private screenshotSmartActionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenshot/ScreenshotSmartActions;",
            ">;"
        }
    .end annotation
.end field

.field private scrimControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            ">;"
        }
    .end annotation
.end field

.field private scrollCaptureClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenshot/ScrollCaptureClient;",
            ">;"
        }
    .end annotation
.end field

.field private sectionHeaderControllerSubcomponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private secureSettingsImplProvider:Ljavax/inject/Provider;

.field private securityControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private seekBarViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/SeekBarViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private serviceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor$Service;",
            ">;"
        }
    .end annotation
.end field

.field private setBubblesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;>;"
        }
    .end annotation
.end field

.field private setHideDisplayCutoutProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;>;"
        }
    .end annotation
.end field

.field private setLegacySplitScreenProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;>;"
        }
    .end annotation
.end field

.field private setOneHandedProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;>;"
        }
    .end annotation
.end field

.field private setPipProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;>;"
        }
    .end annotation
.end field

.field private setShellCommandHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private setSplitScreenProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;>;"
        }
    .end annotation
.end field

.field private setTaskViewFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private setTransitionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/transition/RemoteTransitions;",
            ">;"
        }
    .end annotation
.end field

.field private shadeControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private shadeListBuilderLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;",
            ">;"
        }
    .end annotation
.end field

.field private shadeListBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private shadeViewDifferLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;",
            ">;"
        }
    .end annotation
.end field

.field private shadeViewManagerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private sharedCoordinatorLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger;",
            ">;"
        }
    .end annotation
.end field

.field private shortcutKeyDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private singleTapClassifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/SingleTapClassifier;",
            ">;"
        }
    .end annotation
.end field

.field private sliceBroadcastRelayHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/SliceBroadcastRelayHandler;",
            ">;"
        }
    .end annotation
.end field

.field private smartActionInflaterImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private smartActionsReceiverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenshot/SmartActionsReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private smartRepliesAndActionsInflaterImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private smartReplyConstantsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SmartReplyConstants;",
            ">;"
        }
    .end annotation
.end field

.field private smartReplyInflaterImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarComponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarIconControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarNotificationActivityStarterLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarStateControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private superStatusBarViewFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;",
            ">;"
        }
    .end annotation
.end field

.field private systemPropertiesHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/flags/SystemPropertiesHelper;",
            ">;"
        }
    .end annotation
.end field

.field private systemSettingsImplProvider:Ljavax/inject/Provider;

.field private systemUIAuxiliaryDumpServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;",
            ">;"
        }
    .end annotation
.end field

.field private systemUIServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/SystemUIService;",
            ">;"
        }
    .end annotation
.end field

.field private sysuiColorExtractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;"
        }
    .end annotation
.end field

.field private takeScreenshotServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenshot/TakeScreenshotService;",
            ">;"
        }
    .end annotation
.end field

.field private targetSdkResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;",
            ">;"
        }
    .end annotation
.end field

.field private themeOverlayControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/theme/ThemeOverlayController;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field private toastFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/toast/ToastFactory;",
            ">;"
        }
    .end annotation
.end field

.field private toastLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/toast/ToastLogger;",
            ">;"
        }
    .end annotation
.end field

.field private toastUIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/toast/ToastUI;",
            ">;"
        }
    .end annotation
.end field

.field private tunablePaddingServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;",
            ">;"
        }
    .end annotation
.end field

.field private tunerActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerActivity;",
            ">;"
        }
    .end annotation
.end field

.field private tunerServiceImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private tvNotificationPanelActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;",
            ">;"
        }
    .end annotation
.end field

.field private tvNotificationPanelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;",
            ">;"
        }
    .end annotation
.end field

.field private tvStatusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/tv/TvStatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private typeClassifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/TypeClassifier;",
            ">;"
        }
    .end annotation
.end field

.field private udfpsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/biometrics/UdfpsController;",
            ">;"
        }
    .end annotation
.end field

.field private uiModeNightTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UiModeNightTile;",
            ">;"
        }
    .end annotation
.end field

.field private uiOffloadThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;"
        }
    .end annotation
.end field

.field private usbDebuggingActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/usb/UsbDebuggingActivity;",
            ">;"
        }
    .end annotation
.end field

.field private usbDebuggingSecondaryUserActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;",
            ">;"
        }
    .end annotation
.end field

.field private userCreatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/user/UserCreator;",
            ">;"
        }
    .end annotation
.end field

.field private userInfoControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private userSwitcherControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;"
        }
    .end annotation
.end field

.field private userTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UserTile;",
            ">;"
        }
    .end annotation
.end field

.field private vibratorHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private visualStabilityCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private volumeDialogComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/volume/VolumeDialogComponent;",
            ">;"
        }
    .end annotation
.end field

.field private volumeDialogControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/volume/VolumeDialogControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private volumeUIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/volume/VolumeUI;",
            ">;"
        }
    .end annotation
.end field

.field private wMShellProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wmshell/WMShell;",
            ">;"
        }
    .end annotation
.end field

.field private wakefulnessLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private wifiPickerTrackerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private wifiTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WifiTile;",
            ">;"
        }
    .end annotation
.end field

.field private windowMagnificationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/WindowMagnification;",
            ">;"
        }
    .end annotation
.end field

.field private workLockActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WorkLockActivity;",
            ">;"
        }
    .end annotation
.end field

.field private workModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WorkModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private zenModeControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private zigZagClassifierProvider:Ljavax/inject/Provider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/dagger/NightDisplayListenerModule;Lcom/android/systemui/user/UserModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/RemoteTransitions;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Lcom/android/systemui/dagger/NightDisplayListenerModule;",
            "Lcom/android/systemui/user/UserModule;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairs;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;",
            "Lcom/android/wm/shell/transition/RemoteTransitions;",
            ")V"
        }
    .end annotation

    move-object v14, p0

    move-object/from16 v0, p1

    .line 2791
    iput-object v0, v14, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    .line 2793
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->initialize(Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/dagger/NightDisplayListenerModule;Lcom/android/systemui/user/UserModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/RemoteTransitions;)V

    .line 2794
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->initialize2(Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/dagger/NightDisplayListenerModule;Lcom/android/systemui/user/UserModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/RemoteTransitions;)V

    .line 2795
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->initialize3(Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/dagger/NightDisplayListenerModule;Lcom/android/systemui/user/UserModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/RemoteTransitions;)V

    .line 2796
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->initialize4(Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/dagger/NightDisplayListenerModule;Lcom/android/systemui/user/UserModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/RemoteTransitions;)V

    .line 2797
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->initialize5(Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/dagger/NightDisplayListenerModule;Lcom/android/systemui/user/UserModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/RemoteTransitions;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/dagger/NightDisplayListenerModule;Lcom/android/systemui/user/UserModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/RemoteTransitions;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$1;)V
    .locals 0

    .line 1811
    invoke-direct/range {p0 .. p14}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/dagger/NightDisplayListenerModule;Lcom/android/systemui/user/UserModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/RemoteTransitions;)V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->clockManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providePluginManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->rowContentBindStageProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationGutsManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideOnUserInteractionCallbackProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBubblesManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideStatusBarProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->scrimControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationGroupManagerLegacyProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesSilentHeaderControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifPipelineProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifCollectionProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->foregroundServiceDismissalFeatureControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->foregroundServiceSectionControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->vibratorHelperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->conversationNotificationManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStatusViewComponentFactoryProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardQsUserSwitchComponentFactoryProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUserSwitcherComponentFactoryProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSDetailDisplayerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->authControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaDataManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsComponentProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->accessibilityControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardIndicationControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$16000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dockManagerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$16100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$16200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$16300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->superStatusBarViewFactoryProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$16400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$16600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$16700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->builderProvider3:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$16800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAlwaysOnDisplayPolicyProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$16900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->proximitySensorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAmbientDisplayConfigurationProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->secureSettingsImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesQSMediaHostProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$18000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesQuickQSMediaHostProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$18300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenLifecycleProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$18400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$18700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$18800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->securityControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$18900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$19000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$19100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->lightBarControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$19200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideQSFlagProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$19300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$19400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->factoryProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$19500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$19600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->networkControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$19700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$19800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->privacyItemControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$19900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->ringerModeTrackerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$20000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$20100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDemoModeControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$20200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->privacyLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$20300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->privacyDialogControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$20400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$20500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardMediaControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;
    .locals 0

    .line 1811
    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationSectionsFeatureManager()Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationSectionsLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;
    .locals 0

    .line 1811
    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->incomingHeaderSectionHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;
    .locals 0

    .line 1811
    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->peopleHeaderSectionHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;
    .locals 0

    .line 1811
    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->alertingHeaderSectionHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;
    .locals 0

    .line 1811
    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->silentHeaderSectionHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideGroupMembershipManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideGroupExpansionManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->ambientStateProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLockPatternUtilsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardSecurityModelProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesViewMediatorCallbackProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method private alertingHeaderSectionHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;
    .locals 0

    .line 2813
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesAlertingHeaderSubcomponentProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesAlertingHeaderControllerFactory;->providesAlertingHeaderController(Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object p0

    return-object p0
.end method

.method private incomingHeaderSectionHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;
    .locals 0

    .line 2805
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesIncomingHeaderSubcomponentProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesIncomingHeaderControllerFactory;->providesIncomingHeaderController(Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object p0

    return-object p0
.end method

.method private initialize(Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/dagger/NightDisplayListenerModule;Lcom/android/systemui/user/UserModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/RemoteTransitions;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Lcom/android/systemui/dagger/NightDisplayListenerModule;",
            "Lcom/android/systemui/user/UserModule;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairs;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;",
            "Lcom/android/wm/shell/transition/RemoteTransitions;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v8, p1

    .line 2831
    invoke-static {}, Lcom/android/systemui/dump/DumpManager_Factory;->create()Lcom/android/systemui/dump/DumpManager_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2832
    invoke-static {v1}, Lcom/android/systemui/BootCompleteCacheImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/BootCompleteCacheImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bootCompleteCacheImplProvider:Ljavax/inject/Provider;

    .line 2833
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideConfigurationControllerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideConfigurationControllerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 2834
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/settings/GlobalSettingsImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/settings/GlobalSettingsImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->globalSettingsImplProvider:Ljavax/inject/Provider;

    .line 2835
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->globalSettingsImplProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDemoModeControllerProvider:Ljavax/inject/Provider;

    .line 2836
    invoke-static {v1}, Lcom/android/systemui/tuner/TunerActivity_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/tuner/TunerActivity_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tunerActivityProvider:Ljavax/inject/Provider;

    .line 2837
    invoke-static {}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBgLooperFactory;->create()Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBgLooperFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 2838
    invoke-static {v1}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBackgroundExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBackgroundExecutorFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 2839
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLogcatEchoTrackerProvider:Ljavax/inject/Provider;

    .line 2840
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v1}, Lcom/android/systemui/log/LogBufferFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/LogBufferFactory_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->logBufferFactoryProvider:Ljavax/inject/Provider;

    .line 2841
    invoke-static {v1}, Lcom/android/systemui/log/dagger/LogModule_ProvideBroadcastDispatcherLogBufferFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideBroadcastDispatcherLogBufferFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBroadcastDispatcherLogBufferProvider:Ljavax/inject/Provider;

    .line 2842
    invoke-static {v1}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->broadcastDispatcherLoggerProvider:Ljavax/inject/Provider;

    .line 2843
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBgHandlerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBgHandlerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 2844
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/settings/dagger/SettingsModule_ProvideUserTrackerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/settings/dagger/SettingsModule_ProvideUserTrackerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 2845
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->broadcastDispatcherLoggerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 2846
    invoke-static {v1}, Lcom/android/systemui/keyguard/WorkLockActivity_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/WorkLockActivity_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->workLockActivityProvider:Ljavax/inject/Provider;

    .line 2847
    invoke-static {}, Lcom/android/systemui/flags/SystemPropertiesHelper_Factory;->create()Lcom/android/systemui/flags/SystemPropertiesHelper_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->systemPropertiesHelperProvider:Ljavax/inject/Provider;

    .line 2848
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->systemPropertiesHelperProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/flags/FeatureFlagReader_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/flags/FeatureFlagReader_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagReaderProvider:Ljavax/inject/Provider;

    .line 2849
    invoke-static {v1}, Lcom/android/systemui/statusbar/FeatureFlags_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/FeatureFlags_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 2850
    invoke-static {v1}, Lcom/android/systemui/settings/brightness/BrightnessControllerSettings_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/settings/brightness/BrightnessControllerSettings_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->brightnessControllerSettingsProvider:Ljavax/inject/Provider;

    .line 2851
    invoke-static {v1}, Lcom/android/systemui/settings/brightness/BrightnessSlider_Factory_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/settings/brightness/BrightnessSlider_Factory_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->factoryProvider:Ljavax/inject/Provider;

    .line 2852
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {v2, v1}, Lcom/android/systemui/settings/brightness/BrightnessDialog_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/settings/brightness/BrightnessDialog_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->brightnessDialogProvider:Ljavax/inject/Provider;

    .line 2853
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/screenrecord/RecordingController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/screenrecord/RecordingController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->recordingControllerProvider:Ljavax/inject/Provider;

    .line 2854
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenRecordDialogProvider:Ljavax/inject/Provider;

    .line 2855
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/usb/UsbDebuggingActivity_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/usb/UsbDebuggingActivity_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->usbDebuggingActivityProvider:Ljavax/inject/Provider;

    .line 2856
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->usbDebuggingSecondaryUserActivityProvider:Ljavax/inject/Provider;

    .line 2857
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/user/UserCreator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/user/UserCreator_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->userCreatorProvider:Ljavax/inject/Provider;

    .line 2858
    invoke-static {p3}, Lcom/android/systemui/user/UserModule_ProvideEditUserInfoControllerFactory;->create(Lcom/android/systemui/user/UserModule;)Lcom/android/systemui/user/UserModule_ProvideEditUserInfoControllerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideEditUserInfoControllerProvider:Ljavax/inject/Provider;

    .line 2859
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->userCreatorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/systemui/user/CreateUserActivity_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/user/CreateUserActivity_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->createUserActivityProvider:Ljavax/inject/Provider;

    .line 2860
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationListenerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationListenerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    .line 2861
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/tv/TvSystemUIModule_ProvideTvNotificationHandlerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/tv/TvSystemUIModule_ProvideTvNotificationHandlerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideTvNotificationHandlerProvider:Ljavax/inject/Provider;

    .line 2862
    invoke-static {v1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tvNotificationPanelActivityProvider:Ljavax/inject/Provider;

    .line 2863
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->logBufferFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationsLogBufferFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationsLogBufferFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    .line 2864
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationEntryManagerLoggerProvider:Ljavax/inject/Provider;

    .line 2865
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 2866
    invoke-static {p1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideLeakDetectorFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideLeakDetectorFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    .line 2867
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvidePluginManagerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvidePluginManagerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 2868
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDemoModeControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    move-object p2, v1

    move-object p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    invoke-static/range {p2 .. p7}, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/tuner/TunerServiceImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 2869
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->extensionControllerImplProvider:Ljavax/inject/Provider;

    .line 2870
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationPersonExtractorPluginBoundaryProvider:Ljavax/inject/Provider;

    .line 2871
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationGroupManagerLegacyProvider:Ljavax/inject/Provider;

    .line 2872
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideGroupMembershipManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideGroupMembershipManagerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideGroupMembershipManagerProvider:Ljavax/inject/Provider;

    .line 2873
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationPersonExtractorPluginBoundaryProvider:Ljavax/inject/Provider;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;

    .line 2874
    invoke-static/range {p9 .. p9}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setBubblesProvider:Ljavax/inject/Provider;

    .line 2875
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationGroupManagerLegacyProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;

    invoke-static {v3, v4, v1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v2, v1}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2876
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 2877
    invoke-static {}, Lcom/android/systemui/util/time/SystemClockImpl_Factory;->create()Lcom/android/systemui/util/time/SystemClockImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    .line 2878
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifCollectionLoggerProvider:Ljavax/inject/Provider;

    .line 2879
    invoke-static {}, Lcom/android/systemui/util/io/Files_Factory;->create()Lcom/android/systemui/util/io/Files_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->filesProvider:Ljavax/inject/Provider;

    .line 2880
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->filesProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/dump/LogBufferEulogizer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dump/LogBufferEulogizer_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->logBufferEulogizerProvider:Ljavax/inject/Provider;

    .line 2881
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifCollectionLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->logBufferEulogizerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    move-object p2, v1

    move-object p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    invoke-static/range {p2 .. p7}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifCollectionProvider:Ljavax/inject/Provider;

    .line 2882
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeListBuilderLoggerProvider:Ljavax/inject/Provider;

    .line 2883
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/NotificationClickNotifier_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationClickNotifier_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationClickNotifierProvider:Ljavax/inject/Provider;

    .line 2884
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/NotificationInteractionTracker_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationInteractionTracker_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationInteractionTrackerProvider:Ljavax/inject/Provider;

    .line 2885
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeListBuilderLoggerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeListBuilderProvider:Ljavax/inject/Provider;

    .line 2886
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifCollectionProvider:Ljavax/inject/Provider;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/NotifPipeline_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifPipelineProvider:Ljavax/inject/Provider;

    .line 2887
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->targetSdkResolverProvider:Ljavax/inject/Provider;

    .line 2888
    invoke-static {}, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideMainDelayableExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideMainDelayableExecutorFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 2889
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->groupCoalescerLoggerProvider:Ljavax/inject/Provider;

    .line 2890
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->groupCoalescerProvider:Ljavax/inject/Provider;

    .line 2891
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/settings/SecureSettingsImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/settings/SecureSettingsImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->secureSettingsImplProvider:Ljavax/inject/Provider;

    .line 2892
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->globalSettingsImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->secureSettingsImplProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    .line 2893
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/util/RingerModeTrackerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/RingerModeTrackerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->ringerModeTrackerImplProvider:Ljavax/inject/Provider;

    .line 2894
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLockPatternUtilsProvider:Ljavax/inject/Provider;

    .line 2895
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/tracing/ProtoTracer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/tracing/ProtoTracer_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->protoTracerProvider:Ljavax/inject/Provider;

    .line 2896
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/commandline/CommandRegistry_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/commandline/CommandRegistry_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->commandRegistryProvider:Ljavax/inject/Provider;

    .line 2897
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->protoTracerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->commandRegistryProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideCommandQueueFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideCommandQueueFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 2898
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/dagger/DependencyProvider_ProviderLayoutInflaterFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProviderLayoutInflaterFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    .line 2899
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideStatusBarProvider:Ljavax/inject/Provider;

    .line 2900
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideStatusBarProvider:Ljavax/inject/Provider;

    move-object p2, v1

    move-object p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v9

    invoke-static/range {p2 .. p9}, Lcom/android/systemui/biometrics/UdfpsController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/biometrics/UdfpsController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->udfpsControllerProvider:Ljavax/inject/Provider;

    .line 2901
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v6}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->udfpsControllerProvider:Ljavax/inject/Provider;

    move-object p2, v1

    move-object p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    invoke-static/range {p2 .. p8}, Lcom/android/systemui/biometrics/AuthController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/biometrics/AuthController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->authControllerProvider:Ljavax/inject/Provider;

    .line 2902
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->ringerModeTrackerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLockPatternUtilsProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->authControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    move-object p2, v1

    move-object p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    invoke-static/range {p2 .. p11}, Lcom/android/keyguard/KeyguardUpdateMonitor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/KeyguardUpdateMonitor_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 2903
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLockPatternUtilsProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 2904
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationClickNotifierProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v6}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v9}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    move-object p2, v1

    move-object p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    invoke-static/range {p2 .. p11}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    .line 2905
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sharedCoordinatorLoggerProvider:Ljavax/inject/Provider;

    .line 2906
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->hideNotifsForOtherUsersCoordinatorProvider:Ljavax/inject/Provider;

    .line 2907
    invoke-static {p1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideHandlerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideHandlerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHandlerProvider:Ljavax/inject/Provider;

    .line 2908
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideGroupMembershipManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->highPriorityProvider:Ljavax/inject/Provider;

    .line 2909
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHandlerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->highPriorityProvider:Ljavax/inject/Provider;

    move-object p2, v1

    move-object p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v9

    invoke-static/range {p2 .. p9}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardCoordinatorProvider:Ljavax/inject/Provider;

    .line 2910
    new-instance v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$1;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sectionHeaderControllerSubcomponentBuilderProvider:Ljavax/inject/Provider;

    .line 2916
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesAlertingHeaderSubcomponentFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesAlertingHeaderSubcomponentFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesAlertingHeaderSubcomponentProvider:Ljavax/inject/Provider;

    .line 2917
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesAlertingHeaderNodeControllerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesAlertingHeaderNodeControllerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesAlertingHeaderNodeControllerProvider:Ljavax/inject/Provider;

    .line 2918
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sectionHeaderControllerSubcomponentBuilderProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesSilentHeaderSubcomponentFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesSilentHeaderSubcomponentFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesSilentHeaderSubcomponentProvider:Ljavax/inject/Provider;

    .line 2919
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesSilentHeaderNodeControllerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesSilentHeaderNodeControllerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesSilentHeaderNodeControllerProvider:Ljavax/inject/Provider;

    .line 2920
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->highPriorityProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesAlertingHeaderNodeControllerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->rankingCoordinatorProvider:Ljavax/inject/Provider;

    .line 2921
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/appops/PermissionFlagsCache_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/appops/PermissionFlagsCache_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->permissionFlagsCacheProvider:Ljavax/inject/Provider;

    .line 2922
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$3100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/tv/TvSystemUIModule_ProvideIndividualSensorPrivacyControllerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/tv/TvSystemUIModule_ProvideIndividualSensorPrivacyControllerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideIndividualSensorPrivacyControllerProvider:Ljavax/inject/Provider;

    .line 2923
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->permissionFlagsCacheProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideIndividualSensorPrivacyControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object p2, v1

    move-object p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    invoke-static/range {p2 .. p8}, Lcom/android/systemui/appops/AppOpsControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/appops/AppOpsControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    .line 2924
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/ForegroundServiceController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ForegroundServiceController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    .line 2925
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->appOpsCoordinatorProvider:Ljavax/inject/Provider;

    .line 2926
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$3200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceProvisionedCoordinatorProvider:Ljavax/inject/Provider;

    .line 2927
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideAmbientDisplayConfigurationFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideAmbientDisplayConfigurationFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAmbientDisplayConfigurationProvider:Ljavax/inject/Provider;

    .line 2928
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAlwaysOnDisplayPolicyProvider:Ljavax/inject/Provider;

    .line 2929
    invoke-static {}, Lcom/android/systemui/power/EnhancedEstimatesImpl_Factory;->create()Lcom/android/systemui/power/EnhancedEstimatesImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->enhancedEstimatesImplProvider:Ljavax/inject/Provider;

    .line 2930
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->enhancedEstimatesImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$3300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDemoModeControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v6}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    move-object p2, v1

    move-object p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    invoke-static/range {p2 .. p8}, Lcom/android/systemui/tv/TvSystemUIModule_ProvideBatteryControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/tv/TvSystemUIModule_ProvideBatteryControllerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    .line 2931
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAmbientDisplayConfigurationProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAlwaysOnDisplayPolicyProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$3300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    move-object p2, v1

    move-object p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    invoke-static/range {p2 .. p8}, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 2932
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$3400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/classifier/FalsingDataProvider_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/FalsingDataProvider_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingDataProvider:Ljavax/inject/Provider;

    .line 2933
    invoke-static {}, Lcom/android/systemui/util/DeviceConfigProxy_Factory;->create()Lcom/android/systemui/util/DeviceConfigProxy_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    .line 2934
    invoke-static {}, Lcom/android/systemui/dock/DockManagerImpl_Factory;->create()Lcom/android/systemui/dock/DockManagerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dockManagerImplProvider:Ljavax/inject/Provider;

    .line 2935
    invoke-static {p1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideMetricsLoggerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideMetricsLoggerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private initialize2(Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/dagger/NightDisplayListenerModule;Lcom/android/systemui/user/UserModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/RemoteTransitions;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Lcom/android/systemui/dagger/NightDisplayListenerModule;",
            "Lcom/android/systemui/user/UserModule;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairs;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;",
            "Lcom/android/wm/shell/transition/RemoteTransitions;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v1, p1

    .line 2949
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingDataProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3}, Lcom/android/systemui/classifier/DistanceClassifier_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/DistanceClassifier_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->distanceClassifierProvider:Ljavax/inject/Provider;

    .line 2950
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingDataProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4}, Lcom/android/systemui/classifier/ProximityClassifier_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/ProximityClassifier_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->proximityClassifierProvider:Ljavax/inject/Provider;

    .line 2951
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingDataProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Lcom/android/systemui/classifier/PointerCountClassifier_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/classifier/PointerCountClassifier_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->pointerCountClassifierProvider:Ljavax/inject/Provider;

    .line 2952
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingDataProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Lcom/android/systemui/classifier/TypeClassifier_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/classifier/TypeClassifier_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->typeClassifierProvider:Ljavax/inject/Provider;

    .line 2953
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingDataProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3}, Lcom/android/systemui/classifier/DiagonalClassifier_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/DiagonalClassifier_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->diagonalClassifierProvider:Ljavax/inject/Provider;

    .line 2954
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingDataProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3}, Lcom/android/systemui/classifier/ZigZagClassifier_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/ZigZagClassifier_Factory;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->zigZagClassifierProvider:Ljavax/inject/Provider;

    .line 2955
    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->distanceClassifierProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->proximityClassifierProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->pointerCountClassifierProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->typeClassifierProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->diagonalClassifierProvider:Ljavax/inject/Provider;

    invoke-static/range {v4 .. v9}, Lcom/android/systemui/classifier/FalsingModule_ProvidesBrightLineGestureClassifiersFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/FalsingModule_ProvidesBrightLineGestureClassifiersFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBrightLineGestureClassifiersProvider:Ljavax/inject/Provider;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2956
    invoke-static {v2, v3}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBrightLineGestureClassifiersProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3}, Ldagger/internal/SetFactory$Builder;->addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v2

    invoke-virtual {v2}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->namedSetOfFalsingClassifierProvider:Ljavax/inject/Provider;

    .line 2957
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$3500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/classifier/FalsingModule_ProvidesSingleTapTouchSlopFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/classifier/FalsingModule_ProvidesSingleTapTouchSlopFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesSingleTapTouchSlopProvider:Ljavax/inject/Provider;

    .line 2958
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingDataProvider:Ljavax/inject/Provider;

    invoke-static {v3, v2}, Lcom/android/systemui/classifier/SingleTapClassifier_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/SingleTapClassifier_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->singleTapClassifierProvider:Ljavax/inject/Provider;

    .line 2959
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTouchSlopFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTouchSlopFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesDoubleTapTouchSlopProvider:Ljavax/inject/Provider;

    .line 2960
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingDataProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->singleTapClassifierProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory;->create()Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory;

    move-result-object v5

    invoke-static {v3, v4, v2, v5}, Lcom/android/systemui/classifier/DoubleTapClassifier_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/DoubleTapClassifier_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->doubleTapClassifierProvider:Ljavax/inject/Provider;

    .line 2961
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Lcom/android/systemui/classifier/HistoryTracker_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/classifier/HistoryTracker_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->historyTrackerProvider:Ljavax/inject/Provider;

    .line 2962
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingDataProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dockManagerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->namedSetOfFalsingClassifierProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->singleTapClassifierProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->doubleTapClassifierProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory;->create()Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory;

    move-result-object v11

    invoke-static {}, Lcom/android/systemui/dagger/GlobalModule_ProvideIsTestHarnessFactory;->create()Lcom/android/systemui/dagger/GlobalModule_ProvideIsTestHarnessFactory;

    move-result-object v12

    invoke-static/range {v3 .. v12}, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->brightLineFalsingManagerProvider:Ljavax/inject/Provider;

    .line 2963
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->brightLineFalsingManagerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    .line 2964
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$3600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/util/concurrency/ThreadFactoryImpl_Factory;->create()Lcom/android/systemui/util/concurrency/ThreadFactoryImpl_Factory;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providePluginManagerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4}, Lcom/android/systemui/util/sensors/AsyncSensorManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/AsyncSensorManager_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    .line 2965
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl_Builder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/ThresholdSensorImpl_Builder_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->builderProvider:Ljavax/inject/Provider;

    .line 2966
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$3600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->builderProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3}, Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providePrimaryProxSensorProvider:Ljavax/inject/Provider;

    .line 2967
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->builderProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProxSensorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProxSensorFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSecondaryProxSensorProvider:Ljavax/inject/Provider;

    .line 2968
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providePrimaryProxSensorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v3, v2, v4}, Lcom/android/systemui/util/sensors/ProximitySensor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/ProximitySensor_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->proximitySensorProvider:Ljavax/inject/Provider;

    .line 2969
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingDataProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-static {v3, v4, v5, v2, v6}, Lcom/android/systemui/classifier/FalsingCollectorImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/FalsingCollectorImpl_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    .line 2970
    new-instance v2, Ldagger/internal/DelegateFactory;

    invoke-direct {v2}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    .line 2971
    invoke-static {v15, v2}, Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesViewMediatorCallbackProvider:Ljavax/inject/Provider;

    .line 2972
    invoke-static {}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideUiBackgroundExecutorFactory;->create()Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideUiBackgroundExecutorFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 2973
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/navigationbar/NavigationModeController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/navigationbar/NavigationModeController_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 2974
    new-instance v2, Ldagger/internal/DelegateFactory;

    invoke-direct {v2}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    .line 2975
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/settings/SystemSettingsImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/settings/SystemSettingsImpl_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->systemSettingsImplProvider:Ljavax/inject/Provider;

    .line 2976
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHandlerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v8

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->globalSettingsImplProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->systemSettingsImplProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v3 .. v12}, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideFaceAuthScreenBrightnessControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideFaceAuthScreenBrightnessControllerFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideFaceAuthScreenBrightnessControllerProvider:Ljavax/inject/Provider;

    .line 2977
    new-instance v2, Ldagger/internal/DelegateFactory;

    invoke-direct {v2}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    .line 2978
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Lcom/android/systemui/keyguard/DismissCallbackRegistry_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/DismissCallbackRegistry_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dismissCallbackRegistryProvider:Ljavax/inject/Provider;

    .line 2979
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    .line 2980
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLockPatternUtilsProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardSecurityModel_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/KeyguardSecurityModel_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardSecurityModelProvider:Ljavax/inject/Provider;

    .line 2981
    new-instance v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$2;

    invoke-direct {v2, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$2;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)V

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBouncerComponentFactoryProvider:Ljavax/inject/Provider;

    .line 2987
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesViewMediatorCallbackProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dismissCallbackRegistryProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHandlerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardSecurityModelProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBouncerComponentFactoryProvider:Ljavax/inject/Provider;

    invoke-static/range {v3 .. v12}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer_Factory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/KeyguardBouncer_Factory_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->factoryProvider2:Ljavax/inject/Provider;

    .line 2988
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v16

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesViewMediatorCallbackProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLockPatternUtilsProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dockManagerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideFaceAuthScreenBrightnessControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->factoryProvider2:Ljavax/inject/Provider;

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    invoke-static/range {v16 .. v28}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    .line 2989
    new-instance v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$3;

    invoke-direct {v2, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$3;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)V

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStatusViewComponentFactoryProvider:Ljavax/inject/Provider;

    .line 2995
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStatusViewComponentFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4}, Lcom/android/keyguard/KeyguardDisplayManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/KeyguardDisplayManager_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardDisplayManagerProvider:Ljavax/inject/Provider;

    .line 2996
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v16

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLockPatternUtilsProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dismissCallbackRegistryProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v10}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$3300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v24

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v10}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$3900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v25

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardDisplayManagerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move-object/from16 v31, v1

    invoke-static/range {v16 .. v31}, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v2, v1}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2997
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/colorextraction/SysuiColorExtractor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/colorextraction/SysuiColorExtractor_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    .line 2998
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v3 .. v12}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2999
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/assist/AssistModule_ProvideAssistUtilsFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistModule_ProvideAssistUtilsFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAssistUtilsProvider:Ljavax/inject/Provider;

    .line 3000
    invoke-static {}, Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;->create()Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundHandlerProvider:Ljavax/inject/Provider;

    .line 3001
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistManagerProvider:Ljavax/inject/Provider;

    .line 3002
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    .line 3003
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    .line 3004
    invoke-static {}, Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;->create()Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSysUiStateProvider:Ljavax/inject/Provider;

    .line 3005
    invoke-static/range {p4 .. p4}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setPipProvider:Ljavax/inject/Provider;

    .line 3006
    invoke-static/range {p5 .. p5}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setLegacySplitScreenProvider:Ljavax/inject/Provider;

    .line 3007
    invoke-static/range {p6 .. p6}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setSplitScreenProvider:Ljavax/inject/Provider;

    .line 3008
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideStatusBarProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$PresentJdkOptionalLazyProvider;->access$4000(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    .line 3009
    invoke-static/range {p8 .. p8}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setOneHandedProvider:Ljavax/inject/Provider;

    .line 3010
    invoke-static/range {p13 .. p13}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setTransitionsProvider:Ljavax/inject/Provider;

    .line 3011
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSysUiStateProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setPipProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setLegacySplitScreenProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setSplitScreenProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setOneHandedProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setTransitionsProvider:Ljavax/inject/Provider;

    invoke-static/range {v2 .. v14}, Lcom/android/systemui/recents/OverviewProxyService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/OverviewProxyService_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    .line 3012
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->contextComponentResolverProvider:Ljavax/inject/Provider;

    .line 3013
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->contextComponentResolverProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideRecentsImplProvider:Ljavax/inject/Provider;

    .line 3014
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideRecentsImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/tv/TvSystemUIModule_ProvideRecentsFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/tv/TvSystemUIModule_ProvideRecentsFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideRecentsProvider:Ljavax/inject/Provider;

    .line 3015
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$PresentJdkOptionalInstanceProvider;->access$800(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->optionalOfRecentsProvider:Ljavax/inject/Provider;

    .line 3016
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    .line 3017
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationClickNotifierProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideSmartReplyControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideSmartReplyControllerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSmartReplyControllerProvider:Ljavax/inject/Provider;

    .line 3018
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputUriController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/RemoteInputUriController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->remoteInputUriControllerProvider:Ljavax/inject/Provider;

    .line 3019
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->logBufferFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/log/dagger/LogModule_ProvideNotifInteractionLogBufferFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideNotifInteractionLogBufferFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotifInteractionLogBufferProvider:Ljavax/inject/Provider;

    .line 3020
    invoke-static {v1}, Lcom/android/systemui/statusbar/ActionClickLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/ActionClickLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->actionClickLoggerProvider:Ljavax/inject/Provider;

    .line 3021
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSmartReplyControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideStatusBarProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHandlerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->remoteInputUriControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationClickNotifierProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->actionClickLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 p3, v1

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v8

    move-object/from16 p11, v9

    move-object/from16 p12, v10

    invoke-static/range {p3 .. p12}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    .line 3022
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvidesSystemActionsFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvidesSystemActionsFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesSystemActionsProvider:Ljavax/inject/Provider;

    .line 3023
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/navigationbar/NavigationBarOverlayController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->navigationBarOverlayControllerProvider:Ljavax/inject/Provider;

    .line 3024
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$4100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSysUiStateProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setPipProvider:Ljavax/inject/Provider;

    move-object v15, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setLegacySplitScreenProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->optionalOfRecentsProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideStatusBarProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesSystemActionsProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v22

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v23

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->navigationBarOverlayControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v1

    move-object/from16 v1, p2

    move-object/from16 v0, v26

    invoke-static/range {v1 .. v25}, Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    move-object/from16 v0, p0

    .line 3025
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAssistHandleViewControllerProvider:Ljavax/inject/Provider;

    .line 3026
    invoke-static {}, Lcom/android/systemui/assist/DeviceConfigHelper_Factory;->create()Lcom/android/systemui/assist/DeviceConfigHelper_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceConfigHelperProvider:Ljavax/inject/Provider;

    .line 3027
    invoke-static {}, Lcom/android/systemui/assist/AssistHandleOffBehavior_Factory;->create()Lcom/android/systemui/assist/AssistHandleOffBehavior_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistHandleOffBehaviorProvider:Ljavax/inject/Provider;

    .line 3028
    invoke-static {}, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->create()Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 3029
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSysUiStateProvider:Ljavax/inject/Provider;

    invoke-static {v2, v1, v3}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistHandleLikeHomeBehaviorProvider:Ljavax/inject/Provider;

    .line 3030
    invoke-static {}, Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;->create()Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSystemClockProvider:Ljavax/inject/Provider;

    .line 3031
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideActivityManagerWrapperFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideActivityManagerWrapperFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    .line 3032
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideTaskStackChangeListenersFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideTaskStackChangeListenersFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideTaskStackChangeListenersProvider:Ljavax/inject/Provider;

    .line 3033
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSystemClockProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceConfigHelperProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSysUiStateProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v10}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$4200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v10

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bootCompleteCacheImplProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v1

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    move-object/from16 p13, v12

    invoke-static/range {p2 .. p13}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistHandleReminderExpBehaviorProvider:Ljavax/inject/Provider;

    .line 3034
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistHandleOffBehaviorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistHandleLikeHomeBehaviorProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v1}, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAssistHandleBehaviorControllerMapProvider:Ljavax/inject/Provider;

    .line 3035
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAssistUtilsProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAssistHandleViewControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceConfigHelperProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAssistHandleBehaviorControllerMapProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v8}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$4100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v8

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    invoke-static/range {p2 .. p10}, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;

    .line 3036
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bootCompleteCacheImplProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/assist/PhoneStateMonitor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/PhoneStateMonitor_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->phoneStateMonitorProvider:Ljavax/inject/Provider;

    .line 3037
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAssistUtilsProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->phoneStateMonitorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/assist/AssistLogger_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistLogger_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistLoggerProvider:Ljavax/inject/Provider;

    .line 3038
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistLoggerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/assist/ui/DefaultUiController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/ui/DefaultUiController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->defaultUiControllerProvider:Ljavax/inject/Provider;

    .line 3039
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistManagerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAssistUtilsProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->phoneStateMonitorProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSysUiStateProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->defaultUiControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    invoke-static/range {p2 .. p12}, Lcom/android/systemui/assist/AssistManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistManager_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 3040
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v6}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideStatusBarProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setBubblesProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    invoke-static/range {p2 .. p9}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/ShadeControllerImpl_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 3041
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideINotificationManagerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideINotificationManagerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    .line 3042
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/media/MediaFeatureFlag_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaFeatureFlag_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaFeatureFlagProvider:Ljavax/inject/Provider;

    .line 3043
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationFilterProvider:Ljavax/inject/Provider;

    .line 3044
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationGroupManagerLegacyProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/tv/TvSystemUIModule_ProvideHeadsUpManagerPhoneFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/tv/TvSystemUIModule_ProvideHeadsUpManagerPhoneFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    .line 3045
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$3300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$4300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAmbientDisplayConfigurationProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationFilterProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v9}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    invoke-static/range {p2 .. p10}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    .line 3046
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    .line 3047
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setBubblesProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v8

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationGroupManagerLegacyProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSysUiStateProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v19

    invoke-static/range {v2 .. v19}, Lcom/android/systemui/dagger/SystemUIModule_ProvideBubblesManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemUIModule_ProvideBubblesManagerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBubblesManagerProvider:Ljavax/inject/Provider;

    .line 3048
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setBubblesProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifCollectionProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bubbleCoordinatorProvider:Ljavax/inject/Provider;

    .line 3049
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationMessagingUtilProvider:Ljavax/inject/Provider;

    .line 3050
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v3, v4}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideCommonNotifCollectionFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideCommonNotifCollectionFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommonNotifCollectionProvider:Ljavax/inject/Provider;

    .line 3051
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifRemoteViewCacheImplProvider:Ljavax/inject/Provider;

    .line 3052
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotifRemoteViewCacheProvider:Ljavax/inject/Provider;

    .line 3053
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationGroupManagerLegacyProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/ConversationNotificationManager_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->conversationNotificationManagerProvider:Ljavax/inject/Provider;

    .line 3054
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->conversationNotificationManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->conversationNotificationProcessorProvider:Ljavax/inject/Provider;

    .line 3055
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    invoke-static {v1, v3, v4}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SmartReplyConstants_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    .line 3056
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideDevicePolicyManagerWrapperFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideDevicePolicyManagerWrapperFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;

    .line 3057
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil_Factory;->create()Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    .line 3058
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSmartReplyControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    invoke-static {v2, v1, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->smartReplyInflaterImplProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private initialize3(Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/dagger/NightDisplayListenerModule;Lcom/android/systemui/user/UserModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/RemoteTransitions;)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Lcom/android/systemui/dagger/NightDisplayListenerModule;",
            "Lcom/android/systemui/user/UserModule;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairs;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;",
            "Lcom/android/wm/shell/transition/RemoteTransitions;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3072
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/ActivityStarterDelegate_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/ActivityStarterDelegate_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 3073
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSmartReplyControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    invoke-static {v2, v1, v3, v4}, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->smartActionInflaterImplProvider:Ljavax/inject/Provider;

    .line 3074
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$4200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->smartReplyInflaterImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->smartActionInflaterImplProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    invoke-static/range {p2 .. p7}, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->smartRepliesAndActionsInflaterImplProvider:Ljavax/inject/Provider;

    .line 3075
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotifRemoteViewCacheProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->conversationNotificationProcessorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaFeatureFlagProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v1

    invoke-static/range {p2 .. p7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationContentInflaterProvider:Ljavax/inject/Provider;

    .line 3076
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;->create()Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifInflationErrorManagerProvider:Ljavax/inject/Provider;

    .line 3077
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->rowContentBindStageLoggerProvider:Ljavax/inject/Provider;

    .line 3078
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationContentInflaterProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifInflationErrorManagerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/RowContentBindStage_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->rowContentBindStageProvider:Ljavax/inject/Provider;

    .line 3079
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationMessagingUtilProvider:Ljavax/inject/Provider;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->headsUpViewBinderProvider:Ljavax/inject/Provider;

    .line 3080
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sectionHeaderControllerSubcomponentBuilderProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesIncomingHeaderSubcomponentFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesIncomingHeaderSubcomponentFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesIncomingHeaderSubcomponentProvider:Ljavax/inject/Provider;

    .line 3081
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesIncomingHeaderNodeControllerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesIncomingHeaderNodeControllerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesIncomingHeaderNodeControllerProvider:Ljavax/inject/Provider;

    .line 3082
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->headsUpViewBinderProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v5, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->headsUpCoordinatorProvider:Ljavax/inject/Provider;

    .line 3083
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sectionHeaderControllerSubcomponentBuilderProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesPeopleHeaderSubcomponentFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesPeopleHeaderSubcomponentFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesPeopleHeaderSubcomponentProvider:Ljavax/inject/Provider;

    .line 3084
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesPeopleHeaderNodeControllerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesPeopleHeaderNodeControllerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesPeopleHeaderNodeControllerProvider:Ljavax/inject/Provider;

    .line 3085
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->conversationCoordinatorProvider:Ljavax/inject/Provider;

    .line 3086
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->preparationCoordinatorLoggerProvider:Ljavax/inject/Provider;

    .line 3087
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifCollectionProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifInflationErrorManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifPipelineProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifInflaterImplProvider:Ljavax/inject/Provider;

    .line 3088
    invoke-static {}, Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn_Factory;->create()Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifViewBarnProvider:Ljavax/inject/Provider;

    .line 3089
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->preparationCoordinatorLoggerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifInflaterImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifInflationErrorManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    invoke-static {v2, v3, v4, v1, v5}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->preparationCoordinatorProvider:Ljavax/inject/Provider;

    .line 3090
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaFeatureFlagProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaCoordinatorProvider:Ljavax/inject/Provider;

    .line 3091
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideDelayableExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideDelayableExecutorFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 3092
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v14

    iput-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->visualStabilityCoordinatorProvider:Ljavax/inject/Provider;

    .line 3093
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->hideNotifsForOtherUsersCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->rankingCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->appOpsCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceProvisionedCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bubbleCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->headsUpCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->conversationCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->preparationCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaCoordinatorProvider:Ljavax/inject/Provider;

    invoke-static/range {v2 .. v14}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifCoordinatorsProvider:Ljavax/inject/Provider;

    .line 3094
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeViewDifferLoggerProvider:Ljavax/inject/Provider;

    .line 3095
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    .line 3096
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    .line 3097
    new-instance v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$4;

    invoke-direct {v1, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$4;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->createViewInstanceCreatorFactoryProvider:Ljavax/inject/Provider;

    .line 3103
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/InjectionInflationController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    .line 3104
    new-instance v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$5;

    invoke-direct {v1, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$5;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShelfComponentBuilderProvider:Ljavax/inject/Provider;

    .line 3110
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShelfComponentBuilderProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->superStatusBarViewFactoryProvider:Ljavax/inject/Provider;

    .line 3111
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->superStatusBarViewFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    .line 3112
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setBubblesProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDemoModeControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    invoke-static/range {p2 .. p12}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    .line 3113
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeViewDifferLoggerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifViewBarnProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeViewManagerFactoryProvider:Ljavax/inject/Provider;

    .line 3114
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->groupCoalescerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifCollectionProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeListBuilderProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifCoordinatorsProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifInflaterImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v1

    move-object/from16 p10, v9

    invoke-static/range {p2 .. p10}, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifPipelineInitializerProvider:Ljavax/inject/Provider;

    .line 3115
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifBindPipelineLoggerProvider:Ljavax/inject/Provider;

    .line 3116
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommonNotifCollectionProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifBindPipelineProvider:Ljavax/inject/Provider;

    .line 3117
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->rowContentBindStageProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifBindPipelineInitializerProvider:Ljavax/inject/Provider;

    .line 3118
    new-instance v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$6;

    invoke-direct {v1, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$6;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->expandableNotificationRowComponentBuilderProvider:Ljavax/inject/Provider;

    .line 3124
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/icon/IconBuilder_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/icon/IconBuilder_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->iconBuilderProvider:Ljavax/inject/Provider;

    .line 3125
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommonNotifCollectionProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->iconBuilderProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->iconManagerProvider:Ljavax/inject/Provider;

    .line 3126
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationGroupManagerLegacyProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->rowContentBindStageProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->lowPriorityInflationHelperProvider:Ljavax/inject/Provider;

    .line 3127
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationMessagingUtilProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifBindPipelineProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->rowContentBindStageProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask_Factory;->create()Lcom/android/systemui/statusbar/notification/row/RowInflaterTask_Factory;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->expandableNotificationRowComponentBuilderProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->iconManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->lowPriorityInflationHelperProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    invoke-static/range {p2 .. p11}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationRowBinderImplProvider:Ljavax/inject/Provider;

    .line 3128
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->rowContentBindStageProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideNotificationGroupAlertTransferHelperFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideNotificationGroupAlertTransferHelperFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;

    .line 3129
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideVisualStabilityManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideVisualStabilityManagerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    .line 3130
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->headsUpViewBinderProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v1

    move-object/from16 p8, v7

    invoke-static/range {p2 .. p8}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->headsUpControllerProvider:Ljavax/inject/Provider;

    .line 3131
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotifInteractionLogBufferProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationClickerLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationClickerLoggerProvider:Ljavax/inject/Provider;

    .line 3132
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->builderProvider2:Ljavax/inject/Provider;

    .line 3133
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v18, v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->animatedImageNotificationManagerProvider:Ljavax/inject/Provider;

    .line 3134
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->targetSdkResolverProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifPipelineInitializerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifBindPipelineInitializerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationRowBinderImplProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->remoteInputUriControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationGroupManagerLegacyProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->headsUpControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->headsUpViewBinderProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->builderProvider2:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$4700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v19

    invoke-static/range {v2 .. v19}, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationsControllerImplProvider:Ljavax/inject/Provider;

    .line 3135
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerStub_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/init/NotificationsControllerStub_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationsControllerStubProvider:Ljavax/inject/Provider;

    .line 3136
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationsControllerStubProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationsControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationsControllerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationsControllerProvider:Ljavax/inject/Provider;

    .line 3137
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/LightBarController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/LightBarController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->lightBarControllerProvider:Ljavax/inject/Provider;

    .line 3138
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-static {v4, v1, v2, v3}, Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAutoHideControllerProvider:Ljavax/inject/Provider;

    .line 3139
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDemoModeControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    .line 3140
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationSectionsFeatureManagerProvider:Ljavax/inject/Provider;

    .line 3141
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    .line 3142
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    invoke-static/range {p2 .. p9}, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    .line 3143
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    .line 3144
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    invoke-static/range {p2 .. p9}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;

    .line 3145
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    .line 3146
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog_Builder_Factory;->create()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog_Builder_Factory;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->channelEditorDialogControllerProvider:Ljavax/inject/Provider;

    .line 3147
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/AssistantFeedbackController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistantFeedbackControllerProvider:Ljavax/inject/Provider;

    .line 3148
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifCollectionProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->visualStabilityCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideGroupMembershipManagerProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    invoke-static/range {p2 .. p10}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideOnUserInteractionCallbackFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideOnUserInteractionCallbackFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideOnUserInteractionCallbackProvider:Ljavax/inject/Provider;

    .line 3149
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideStatusBarProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$4100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->highPriorityProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v12

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$4800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v13

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->channelEditorDialogControllerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController_Builder_Factory;->create()Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController_Builder_Factory;

    move-result-object v16

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistantFeedbackControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBubblesManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v19

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideOnUserInteractionCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    invoke-static/range {v5 .. v20}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationGutsManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationGutsManagerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationGutsManagerProvider:Ljavax/inject/Provider;

    .line 3150
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->expansionStateLoggerProvider:Ljavax/inject/Provider;

    .line 3151
    invoke-static {}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationPanelLoggerFactory;->create()Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationPanelLoggerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationPanelLoggerProvider:Ljavax/inject/Provider;

    .line 3152
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->expansionStateLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v1

    invoke-static/range {p2 .. p7}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationLoggerProvider:Ljavax/inject/Provider;

    .line 3153
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->foregroundServiceDismissalFeatureControllerProvider:Ljavax/inject/Provider;

    .line 3154
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->foregroundServiceSectionControllerProvider:Ljavax/inject/Provider;

    .line 3155
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->rowContentBindStageProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/DynamicChildBindController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/DynamicChildBindController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dynamicChildBindControllerProvider:Ljavax/inject/Provider;

    .line 3156
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationGroupManagerLegacyProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setBubblesProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->foregroundServiceSectionControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dynamicChildBindControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->lowPriorityInflationHelperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistantFeedbackControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-static/range {v5 .. v18}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    .line 3157
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v7}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v8}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$4900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-static/range {p2 .. p8}, Lcom/android/systemui/statusbar/policy/UserSwitcherController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/UserSwitcherController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    .line 3158
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v6}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    invoke-static/range {p2 .. p7}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl_WifiPickerTrackerFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl_WifiPickerTrackerFactory_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wifiPickerTrackerFactoryProvider:Ljavax/inject/Provider;

    .line 3159
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wifiPickerTrackerFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v5}, Lcom/android/systemui/statusbar/policy/dagger/StatusBarPolicyModule_ProvideAccessPointControllerImplFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/dagger/StatusBarPolicyModule_ProvideAccessPointControllerImplFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAccessPointControllerImplProvider:Ljavax/inject/Provider;

    .line 3160
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v6}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v7}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v8}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v8

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v9}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAccessPointControllerImplProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDemoModeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    invoke-static/range {p2 .. p11}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 3161
    invoke-static {}, Lcom/android/systemui/keyguard/ScreenLifecycle_Factory;->create()Lcom/android/systemui/keyguard/ScreenLifecycle_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 3162
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/VibratorHelper_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/VibratorHelper_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->vibratorHelperProvider:Ljavax/inject/Provider;

    .line 3163
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Builder_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/wakelock/DelayedWakeLock_Builder_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->builderProvider3:Ljavax/inject/Provider;

    .line 3164
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/BlurUtils_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/BlurUtils_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->blurUtilsProvider:Ljavax/inject/Provider;

    .line 3165
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->lightBarControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->builderProvider3:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHandlerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dockManagerImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->blurUtilsProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v13}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v13

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    invoke-static/range {p2 .. p13}, Lcom/android/systemui/statusbar/phone/ScrimController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/ScrimController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->scrimControllerProvider:Ljavax/inject/Provider;

    .line 3166
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v5, v6}, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardLiftControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardLiftControllerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideKeyguardLiftControllerProvider:Ljavax/inject/Provider;

    .line 3167
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIWallPaperManagerFactory;->create()Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIWallPaperManagerFactory;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideFaceAuthScreenBrightnessControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v8}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-static/range {p2 .. p8}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->lockscreenWallpaperProvider:Ljavax/inject/Provider;

    .line 3168
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->logBufferFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/log/dagger/LogModule_ProvideDozeLogBufferFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideDozeLogBufferFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDozeLogBufferProvider:Ljavax/inject/Provider;

    .line 3169
    invoke-static {v1}, Lcom/android/systemui/doze/DozeLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeLoggerProvider:Ljavax/inject/Provider;

    .line 3170
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v1}, Lcom/android/systemui/doze/DozeLog_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeLog_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    .line 3171
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeScrimControllerProvider:Ljavax/inject/Provider;

    .line 3172
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeScrimControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->scrimControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHandlerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v14

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-static/range {v5 .. v18}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    .line 3173
    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$3300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->scrimControllerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistManagerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeScrimControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->authControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    invoke-static/range {v5 .. v22}, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 3174
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/ScreenPinningRequest_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenPinningRequestProvider:Ljavax/inject/Provider;

    .line 3175
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->ringerModeTrackerImplProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/volume/VolumeDialogControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->volumeDialogControllerImplProvider:Ljavax/inject/Provider;

    .line 3176
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->volumeDialogControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDemoModeControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v5}, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/volume/VolumeDialogComponent_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->volumeDialogComponentProvider:Ljavax/inject/Provider;

    .line 3177
    new-instance v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$7;

    invoke-direct {v1, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$7;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarComponentBuilderProvider:Ljavax/inject/Provider;

    .line 3183
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->lightsOutNotifControllerProvider:Ljavax/inject/Provider;

    .line 3184
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideGroupMembershipManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationGroupManagerLegacyProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideGroupExpansionManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideGroupExpansionManagerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideGroupExpansionManagerProvider:Ljavax/inject/Provider;

    .line 3185
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideGroupExpansionManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->actionClickLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    invoke-static/range {p2 .. p11}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;

    .line 3186
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/ActivityIntentHelper_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/ActivityIntentHelper_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityIntentHelperProvider:Ljavax/inject/Provider;

    .line 3187
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotifInteractionLogBufferProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarNotificationActivityStarterLoggerProvider:Ljavax/inject/Provider;

    .line 3188
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationClickNotifierProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v16

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$4300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v17

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBubblesManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideGroupMembershipManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLockPatternUtilsProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityIntentHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarNotificationActivityStarterLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideOnUserInteractionCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v1

    invoke-static/range {v5 .. v32}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->builderProvider4:Ljavax/inject/Provider;

    .line 3189
    invoke-static {}, Lcom/android/systemui/InitController_Factory;->create()Lcom/android/systemui/InitController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->initControllerProvider:Ljavax/inject/Provider;

    .line 3190
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideTimeTickHandlerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideTimeTickHandlerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideTimeTickHandlerProvider:Ljavax/inject/Provider;

    .line 3191
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providePluginManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->pluginDependencyProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private initialize4(Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/dagger/NightDisplayListenerModule;Lcom/android/systemui/user/UserModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/RemoteTransitions;)V
    .locals 83
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Lcom/android/systemui/dagger/NightDisplayListenerModule;",
            "Lcom/android/systemui/user/UserModule;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairs;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;",
            "Lcom/android/wm/shell/transition/RemoteTransitions;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3205
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    .line 3206
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/CastControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/CastControllerImpl_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->castControllerImplProvider:Ljavax/inject/Provider;

    .line 3207
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/HotspotControllerImpl_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    .line 3208
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3}, Lcom/android/systemui/dagger/DependencyProvider_ProvideLocalBluetoothControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideLocalBluetoothControllerFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    .line 3209
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    .line 3210
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    .line 3211
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    .line 3212
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->networkControllerImplProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/dagger/DependencyProvider_ProvideDataSaverControllerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideDataSaverControllerFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    .line 3213
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bootCompleteCacheImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-static/range {p2 .. p8}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/LocationControllerImpl_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->locationControllerImplProvider:Ljavax/inject/Provider;

    .line 3214
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$3100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/tv/TvSystemUIModule_ProvideSensorPrivacyControllerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/tv/TvSystemUIModule_ProvideSensorPrivacyControllerFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSensorPrivacyControllerProvider:Ljavax/inject/Provider;

    .line 3215
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/dagger/DependencyProvider_ProvideSharePreferencesFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideSharePreferencesFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSharePreferencesProvider:Ljavax/inject/Provider;

    .line 3216
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/time/DateFormatUtil_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/time/DateFormatUtil_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dateFormatUtilProvider:Ljavax/inject/Provider;

    .line 3217
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBackgroundDelayableExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBackgroundDelayableExecutorFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 3218
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->logBufferFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Lcom/android/systemui/log/dagger/LogModule_ProvidePrivacyLogBufferFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvidePrivacyLogBufferFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providePrivacyLogBufferProvider:Ljavax/inject/Provider;

    .line 3219
    invoke-static {v2}, Lcom/android/systemui/privacy/logging/PrivacyLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/privacy/logging/PrivacyLogger_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->privacyLoggerProvider:Ljavax/inject/Provider;

    .line 3220
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v2

    move-object/from16 p8, v8

    invoke-static/range {p2 .. p8}, Lcom/android/systemui/privacy/PrivacyItemController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/privacy/PrivacyItemController_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->privacyItemControllerProvider:Ljavax/inject/Provider;

    .line 3221
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->castControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->locationControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSensorPrivacyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v20

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v21

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v22

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->recordingControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v24

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v25

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSharePreferencesProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dateFormatUtilProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->ringerModeTrackerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->privacyItemControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->privacyLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v2

    invoke-static/range {v3 .. v30}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->phoneStatusBarPolicyProvider:Ljavax/inject/Provider;

    .line 3222
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/wakelock/WakeLock_Builder_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/wakelock/WakeLock_Builder_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->builderProvider5:Ljavax/inject/Provider;

    .line 3223
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->builderProvider5:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dockManagerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v10

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v11

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v12

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    invoke-static/range {v3 .. v13}, Lcom/android/systemui/statusbar/KeyguardIndicationController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/KeyguardIndicationController_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardIndicationControllerProvider:Ljavax/inject/Provider;

    .line 3224
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DependencyProvider_ProvidesChoreographerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvidesChoreographerFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesChoreographerProvider:Ljavax/inject/Provider;

    .line 3225
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->blurUtilsProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v8

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v3 .. v11}, Lcom/android/systemui/statusbar/NotificationShadeDepthController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationShadeDepthController_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    .line 3226
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;

    .line 3227
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideStatusBarProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationsControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->lightBarControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAutoHideControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationGutsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$3400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v26

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->networkControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v34, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    move-object/from16 v35, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v36, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v37, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v38, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->vibratorHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v39, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBubblesManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v40, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setBubblesProvider:Ljavax/inject/Provider;

    move-object/from16 v41, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v42, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v43, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v44, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v45, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v46, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v47, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    move-object/from16 v48, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->scrimControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v49, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideKeyguardLiftControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v50, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->lockscreenWallpaperProvider:Ljavax/inject/Provider;

    move-object/from16 v51, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v52, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    move-object/from16 v53, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$3300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v54

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenPinningRequestProvider:Ljavax/inject/Provider;

    move-object/from16 v55, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeScrimControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v56, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->volumeDialogComponentProvider:Ljavax/inject/Provider;

    move-object/from16 v57, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    move-object/from16 v58, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarComponentBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v59, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providePluginManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v60, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setLegacySplitScreenProvider:Ljavax/inject/Provider;

    move-object/from16 v61, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->lightsOutNotifControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v62, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->builderProvider4:Ljavax/inject/Provider;

    move-object/from16 v63, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v64, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->superStatusBarViewFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v65, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v66, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesViewMediatorCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v67, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->initControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v68, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideTimeTickHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v69, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->pluginDependencyProvider:Ljavax/inject/Provider;

    move-object/from16 v70, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    move-object/from16 v71, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->extensionControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v72, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v73, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->phoneStatusBarPolicyProvider:Ljavax/inject/Provider;

    move-object/from16 v74, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardIndicationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v75, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDemoModeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v76, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v77, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dismissCallbackRegistryProvider:Ljavax/inject/Provider;

    move-object/from16 v78, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v79, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v80, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->factoryProvider:Ljavax/inject/Provider;

    move-object/from16 v81, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    move-object/from16 v82, v3

    invoke-static/range {v4 .. v82}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;

    move-result-object v3

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-static {v2, v3}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 3228
    invoke-static {}, Lcom/android/systemui/statusbar/MediaArtworkProcessor_Factory;->create()Lcom/android/systemui/statusbar/MediaArtworkProcessor_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaArtworkProcessorProvider:Ljavax/inject/Provider;

    .line 3229
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/media/MediaControllerFactory_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaControllerFactory_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaControllerFactoryProvider:Ljavax/inject/Provider;

    .line 3230
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3}, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaTimeoutListener_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaTimeoutListenerProvider:Ljavax/inject/Provider;

    .line 3231
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/media/MediaBrowserFactory_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaBrowserFactory_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaBrowserFactoryProvider:Ljavax/inject/Provider;

    .line 3232
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaBrowserFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3}, Lcom/android/systemui/media/ResumeMediaBrowserFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/ResumeMediaBrowserFactory_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->resumeMediaBrowserFactoryProvider:Ljavax/inject/Provider;

    .line 3233
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->resumeMediaBrowserFactoryProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    invoke-static/range {p2 .. p7}, Lcom/android/systemui/media/MediaResumeListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaResumeListener_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaResumeListenerProvider:Ljavax/inject/Provider;

    .line 3234
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$6000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/media/MediaSessionBasedFilter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaSessionBasedFilter_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaSessionBasedFilterProvider:Ljavax/inject/Provider;

    .line 3235
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3}, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->localMediaManagerFactoryProvider:Ljavax/inject/Provider;

    .line 3236
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaControllerFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$6100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v3

    move-object/from16 p3, v2

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    invoke-static/range {p2 .. p7}, Lcom/android/systemui/media/MediaDeviceManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaDeviceManager_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaDeviceManagerProvider:Ljavax/inject/Provider;

    .line 3237
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaResumeListenerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/media/MediaDataFilter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaDataFilter_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaDataFilterProvider:Ljavax/inject/Provider;

    .line 3238
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaControllerFactoryProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaTimeoutListenerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaResumeListenerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaSessionBasedFilterProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaDeviceManagerProvider:Ljavax/inject/Provider;

    invoke-static {}, Lcom/android/systemui/media/MediaDataCombineLatest_Factory;->create()Lcom/android/systemui/media/MediaDataCombineLatest_Factory;

    move-result-object v13

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaDataFilterProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    invoke-static/range {v3 .. v15}, Lcom/android/systemui/media/MediaDataManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaDataManager_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaDataManagerProvider:Ljavax/inject/Provider;

    .line 3239
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideStatusBarProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaArtworkProcessorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifCollectionProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaDataManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v4 .. v15}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationMediaManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationMediaManagerFactory;

    move-result-object v3

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-static {v2, v3}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 3240
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationGroupManagerLegacyProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationFilterProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationEntryManagerLoggerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationSectionsFeatureManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->highPriorityProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    invoke-static/range {p2 .. p9}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationRankingManagerProvider:Ljavax/inject/Provider;

    .line 3241
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl_Factory;->create()Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardEnvironmentImplProvider:Ljavax/inject/Provider;

    .line 3242
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationEntryManagerLoggerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationGroupManagerLegacyProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationRankingManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationRowBinderImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->foregroundServiceDismissalFeatureControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v12}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v12

    invoke-static/range {v3 .. v12}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationEntryManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationEntryManagerFactory;

    move-result-object v3

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-static {v2, v3}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 3243
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Lcom/android/systemui/people/PeopleSpaceActivity_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/people/PeopleSpaceActivity_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->peopleSpaceActivityProvider:Ljavax/inject/Provider;

    .line 3244
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideExecutorFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideExecutorProvider:Ljavax/inject/Provider;

    .line 3245
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsListingControllerImpl_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    .line 3246
    new-instance v2, Ldagger/internal/DelegateFactory;

    invoke-direct {v2}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsControllerImplProvider:Ljavax/inject/Provider;

    .line 3247
    new-instance v2, Ldagger/internal/DelegateFactory;

    invoke-direct {v2}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->globalActionsComponentProvider:Ljavax/inject/Provider;

    .line 3248
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/controls/dagger/ControlsModule_ProvidesControlsFeatureEnabledFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/controls/dagger/ControlsModule_ProvidesControlsFeatureEnabledFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesControlsFeatureEnabledProvider:Ljavax/inject/Provider;

    .line 3249
    new-instance v2, Ldagger/internal/DelegateFactory;

    invoke-direct {v2}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsUiControllerImplProvider:Ljavax/inject/Provider;

    .line 3250
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesControlsFeatureEnabledProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsUiControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLockPatternUtilsProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->secureSettingsImplProvider:Ljavax/inject/Provider;

    invoke-static/range {v3 .. v11}, Lcom/android/systemui/controls/dagger/ControlsComponent_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/dagger/ControlsComponent_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsComponentProvider:Ljavax/inject/Provider;

    .line 3251
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->globalActionsComponentProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$4300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLockPatternUtilsProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v10

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v11

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v12

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$6200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v13

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v14

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v18

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$3900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v19

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v20

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v21

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v25

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v27

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v29

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->ringerModeTrackerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSysUiStateProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v32

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsComponentProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    move-object/from16 v34, v2

    invoke-static/range {v3 .. v34}, Lcom/android/systemui/globalactions/GlobalActionsDialog_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/globalactions/GlobalActionsDialog_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->globalActionsDialogProvider:Ljavax/inject/Provider;

    .line 3252
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->globalActionsDialogProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->blurUtilsProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/globalactions/GlobalActionsImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/globalactions/GlobalActionsImpl_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->globalActionsImplProvider:Ljavax/inject/Provider;

    .line 3253
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->globalActionsComponentProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->extensionControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->globalActionsImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/systemui/globalactions/GlobalActionsComponent_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/globalactions/GlobalActionsComponent_Factory;

    move-result-object v3

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-static {v2, v3}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 3254
    invoke-static/range {p10 .. p10}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setTaskViewFactoryProvider:Ljavax/inject/Provider;

    .line 3255
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->globalActionsComponentProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setTaskViewFactoryProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsUiControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    invoke-static/range {p2 .. p10}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlActionCoordinatorImplProvider:Ljavax/inject/Provider;

    .line 3256
    invoke-static {}, Lcom/android/systemui/controls/CustomIconCache_Factory;->create()Lcom/android/systemui/controls/CustomIconCache_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->customIconCacheProvider:Ljavax/inject/Provider;

    .line 3257
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsUiControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSharePreferencesProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlActionCoordinatorImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->customIconCacheProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    invoke-static/range {p2 .. p11}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/ui/ControlsUiControllerImpl_Factory;

    move-result-object v3

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-static {v2, v3}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 3258
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsBindingControllerImplProvider:Ljavax/inject/Provider;

    .line 3259
    invoke-static {}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$900()Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->optionalOfControlsFavoritePersistenceWrapperProvider:Ljavax/inject/Provider;

    .line 3260
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsUiControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsBindingControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->optionalOfControlsFavoritePersistenceWrapperProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    invoke-static/range {p2 .. p10}, Lcom/android/systemui/controls/controller/ControlsControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/controller/ControlsControllerImpl_Factory;

    move-result-object v3

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-static {v2, v3}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 3261
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->globalActionsComponentProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    invoke-static/range {p2 .. p7}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsProviderSelectorActivityProvider:Ljavax/inject/Provider;

    .line 3262
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->globalActionsComponentProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsUiControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    invoke-static/range {p2 .. p7}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsFavoritingActivity_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsFavoritingActivityProvider:Ljavax/inject/Provider;

    .line 3263
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->globalActionsComponentProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->customIconCacheProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsUiControllerImplProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsEditingActivityProvider:Ljavax/inject/Provider;

    .line 3264
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4}, Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsRequestDialogProvider:Ljavax/inject/Provider;

    const/16 v2, 0xe

    .line 3265
    invoke-static {v2}, Ldagger/internal/MapProviderFactory;->builder(I)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/tuner/TunerActivity;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tunerActivityProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/ForegroundServicesDialog;

    invoke-static {}, Lcom/android/systemui/ForegroundServicesDialog_Factory;->create()Lcom/android/systemui/ForegroundServicesDialog_Factory;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/keyguard/WorkLockActivity;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->workLockActivityProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/settings/brightness/BrightnessDialog;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->brightnessDialogProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/screenrecord/ScreenRecordDialog;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenRecordDialogProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/usb/UsbDebuggingActivity;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->usbDebuggingActivityProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->usbDebuggingSecondaryUserActivityProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/user/CreateUserActivity;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->createUserActivityProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tvNotificationPanelActivityProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/people/PeopleSpaceActivity;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->peopleSpaceActivityProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsProviderSelectorActivityProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsFavoritingActivityProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/controls/management/ControlsEditingActivity;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsEditingActivityProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/controls/management/ControlsRequestDialog;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsRequestDialogProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    invoke-virtual {v2}, Ldagger/internal/MapProviderFactory$Builder;->build()Ldagger/internal/MapProviderFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mapOfClassOfAndProviderOfActivityProvider:Ljavax/inject/Provider;

    .line 3266
    new-instance v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$8;

    invoke-direct {v2, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$8;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)V

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeComponentBuilderProvider:Ljavax/inject/Provider;

    .line 3272
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providePluginManagerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3}, Lcom/android/systemui/doze/DozeService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeService_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceProvider:Ljavax/inject/Provider;

    .line 3273
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenLifecycleProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardLifecyclesDispatcherProvider:Ljavax/inject/Provider;

    .line 3274
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    invoke-static {v3, v2}, Lcom/android/systemui/keyguard/KeyguardService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/KeyguardService_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardServiceProvider:Ljavax/inject/Provider;

    .line 3275
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->logBufferEulogizerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4}, Lcom/android/systemui/dump/DumpHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dump/DumpHandler_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpHandlerProvider:Ljavax/inject/Provider;

    .line 3276
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3}, Lcom/android/systemui/dump/LogBufferFreezer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dump/LogBufferFreezer_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->logBufferFreezerProvider:Ljavax/inject/Provider;

    .line 3277
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/BatteryStateNotifier_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/BatteryStateNotifier_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->batteryStateNotifierProvider:Ljavax/inject/Provider;

    .line 3278
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->logBufferFreezerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->batteryStateNotifierProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/systemui/SystemUIService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIService_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->systemUIServiceProvider:Ljavax/inject/Provider;

    .line 3279
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->systemUIAuxiliaryDumpServiceProvider:Ljavax/inject/Provider;

    .line 3280
    invoke-static {}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideLongRunningLooperFactory;->create()Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideLongRunningLooperFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLongRunningLooperProvider:Ljavax/inject/Provider;

    .line 3281
    invoke-static {v2}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideLongRunningExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideLongRunningExecutorFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLongRunningExecutorProvider:Ljavax/inject/Provider;

    .line 3282
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->recordingControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v3

    move-object/from16 p3, v2

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    invoke-static/range {p2 .. p7}, Lcom/android/systemui/screenrecord/RecordingService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenrecord/RecordingService_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->recordingServiceProvider:Ljavax/inject/Provider;

    .line 3283
    invoke-static {}, Lcom/android/systemui/screenshot/ScreenshotSmartActions_Factory;->create()Lcom/android/systemui/screenshot/ScreenshotSmartActions_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenshotSmartActionsProvider:Ljavax/inject/Provider;

    .line 3284
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenshotNotificationsControllerProvider:Ljavax/inject/Provider;

    .line 3285
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->scrollCaptureClientProvider:Ljavax/inject/Provider;

    .line 3286
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/screenshot/ImageExporter_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/ImageExporter_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->imageExporterProvider:Ljavax/inject/Provider;

    .line 3287
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenshotSmartActionsProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenshotNotificationsControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->scrollCaptureClientProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v6}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->imageExporterProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v9}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    invoke-static/range {p2 .. p9}, Lcom/android/systemui/screenshot/ScreenshotController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/ScreenshotController_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenshotControllerProvider:Ljavax/inject/Provider;

    .line 3288
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenshotNotificationsControllerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->takeScreenshotServiceProvider:Ljavax/inject/Provider;

    const/4 v2, 0x7

    .line 3289
    invoke-static {v2}, Ldagger/internal/MapProviderFactory;->builder(I)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/doze/DozeService;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/ImageWallpaper;

    invoke-static {}, Lcom/android/systemui/ImageWallpaper_Factory;->create()Lcom/android/systemui/ImageWallpaper_Factory;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardServiceProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/SystemUIService;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->systemUIServiceProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->systemUIAuxiliaryDumpServiceProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/screenrecord/RecordingService;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->recordingServiceProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/screenshot/TakeScreenshotService;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->takeScreenshotServiceProvider:Ljavax/inject/Provider;

    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    invoke-virtual {v2}, Ldagger/internal/MapProviderFactory$Builder;->build()Ldagger/internal/MapProviderFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mapOfClassOfAndProviderOfServiceProvider:Ljavax/inject/Provider;

    .line 3290
    invoke-static {}, Lcom/android/systemui/tv/TvSystemUIModule_ProvideLeakReportEmailFactory;->create()Lcom/android/systemui/tv/TvSystemUIModule_ProvideLeakReportEmailFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLeakReportEmailProvider:Ljavax/inject/Provider;

    .line 3291
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLeakReportEmailProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4}, Lcom/android/systemui/util/leak/LeakReporter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/LeakReporter_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->leakReporterProvider:Ljavax/inject/Provider;

    .line 3292
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->leakReporterProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/util/leak/GarbageMonitor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/GarbageMonitor_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->garbageMonitorProvider:Ljavax/inject/Provider;

    .line 3293
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->garbageMonitorProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3}, Lcom/android/systemui/util/leak/GarbageMonitor_Service_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/GarbageMonitor_Service_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->serviceProvider:Ljavax/inject/Provider;

    .line 3294
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setLegacySplitScreenProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/InstantAppNotifier_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->instantAppNotifierProvider:Ljavax/inject/Provider;

    .line 3295
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$3300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/LatencyTester_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/LatencyTester_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->latencyTesterProvider:Ljavax/inject/Provider;

    .line 3296
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideStatusBarProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/power/PowerUI_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/power/PowerUI_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->powerUIProvider:Ljavax/inject/Provider;

    .line 3297
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->secureSettingsImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    invoke-static/range {p2 .. p7}, Lcom/android/systemui/ScreenDecorations_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ScreenDecorations_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenDecorationsProvider:Ljavax/inject/Provider;

    .line 3298
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setLegacySplitScreenProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shortcutKeyDispatcherProvider:Ljavax/inject/Provider;

    .line 3299
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3}, Lcom/android/systemui/SliceBroadcastRelayHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/SliceBroadcastRelayHandler_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sliceBroadcastRelayHandlerProvider:Ljavax/inject/Provider;

    .line 3300
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$6400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/dagger/DependencyProvider_ProvideThemeOverlayManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideThemeOverlayManagerFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideThemeOverlayManagerProvider:Ljavax/inject/Provider;

    .line 3301
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideThemeOverlayManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->secureSettingsImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v9}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v10}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v10

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    invoke-static/range {p2 .. p13}, Lcom/android/systemui/theme/ThemeOverlayController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/theme/ThemeOverlayController_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->themeOverlayControllerProvider:Ljavax/inject/Provider;

    .line 3302
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/toast/ToastFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/toast/ToastFactory_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->toastFactoryProvider:Ljavax/inject/Provider;

    .line 3303
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->logBufferFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Lcom/android/systemui/log/dagger/LogModule_ProvideToastLogBufferFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideToastLogBufferFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideToastLogBufferProvider:Ljavax/inject/Provider;

    .line 3304
    invoke-static {v2}, Lcom/android/systemui/toast/ToastLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/toast/ToastLogger_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->toastLoggerProvider:Ljavax/inject/Provider;

    .line 3305
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->toastFactoryProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->toastLoggerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/toast/ToastUI_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/toast/ToastUI_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->toastUIProvider:Ljavax/inject/Provider;

    .line 3306
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistManagerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/tv/TvStatusBar_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/tv/TvStatusBar_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tvStatusBarProvider:Ljavax/inject/Provider;

    .line 3307
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tvNotificationPanelProvider:Ljavax/inject/Provider;

    .line 3308
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->volumeDialogComponentProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3}, Lcom/android/systemui/volume/VolumeUI_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/volume/VolumeUI_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->volumeUIProvider:Ljavax/inject/Provider;

    .line 3309
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/dagger/DependencyProvider_ProvidesModeSwitchesControllerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvidesModeSwitchesControllerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesModeSwitchesControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private initialize5(Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/dagger/NightDisplayListenerModule;Lcom/android/systemui/user/UserModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/RemoteTransitions;)V
    .locals 114
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Lcom/android/systemui/dagger/NightDisplayListenerModule;",
            "Lcom/android/systemui/user/UserModule;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairs;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;",
            "Lcom/android/wm/shell/transition/RemoteTransitions;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3323
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesModeSwitchesControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/accessibility/WindowMagnification_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/accessibility/WindowMagnification_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->windowMagnificationProvider:Ljavax/inject/Provider;

    .line 3324
    invoke-static/range {p11 .. p11}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setHideDisplayCutoutProvider:Ljavax/inject/Provider;

    .line 3325
    invoke-static/range {p12 .. p12}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 3326
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setPipProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setLegacySplitScreenProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setOneHandedProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setHideDisplayCutoutProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setShellCommandHandlerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenLifecycleProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSysUiStateProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->protoTracerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v15

    invoke-static/range {v2 .. v15}, Lcom/android/systemui/wmshell/WMShell_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShell_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wMShellProvider:Ljavax/inject/Provider;

    .line 3327
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideTaskStackChangeListenersProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->homeSoundEffectControllerProvider:Ljavax/inject/Provider;

    .line 3328
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetEnabler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/people/widget/PeopleSpaceWidgetEnabler_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->peopleSpaceWidgetEnablerProvider:Ljavax/inject/Provider;

    const/16 v1, 0x17

    .line 3329
    invoke-static {v1}, Ldagger/internal/MapProviderFactory;->builder(I)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/biometrics/AuthController;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->authControllerProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/util/leak/GarbageMonitor$Service;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->serviceProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->globalActionsComponentProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->instantAppNotifierProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/LatencyTester;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->latencyTesterProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/power/PowerUI;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->powerUIProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/recents/Recents;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideRecentsProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/ScreenDecorations;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenDecorationsProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shortcutKeyDispatcherProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/SliceBroadcastRelayHandler;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sliceBroadcastRelayHandlerProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideStatusBarProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/accessibility/SystemActions;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesSystemActionsProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->themeOverlayControllerProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/toast/ToastUI;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->toastUIProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/statusbar/tv/TvStatusBar;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tvStatusBarProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tvNotificationPanelProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/volume/VolumeUI;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->volumeUIProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/accessibility/WindowMagnification;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->windowMagnificationProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/wmshell/WMShell;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wMShellProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->homeSoundEffectControllerProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/people/widget/PeopleSpaceWidgetEnabler;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->peopleSpaceWidgetEnablerProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideTvNotificationHandlerProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    invoke-virtual {v1}, Ldagger/internal/MapProviderFactory$Builder;->build()Ldagger/internal/MapProviderFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mapOfClassOfAndProviderOfSystemUIProvider:Ljavax/inject/Provider;

    .line 3330
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->overviewProxyRecentsImplProvider:Ljavax/inject/Provider;

    const/4 v1, 0x1

    .line 3331
    invoke-static {v1}, Ldagger/internal/MapProviderFactory;->builder(I)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->overviewProxyRecentsImplProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    invoke-virtual {v1}, Ldagger/internal/MapProviderFactory$Builder;->build()Ldagger/internal/MapProviderFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mapOfClassOfAndProviderOfRecentsImplementationProvider:Ljavax/inject/Provider;

    .line 3332
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideStatusBarProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$PresentJdkOptionalInstanceProvider;->access$800(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->optionalOfStatusBarProvider:Ljavax/inject/Provider;

    .line 3333
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenshotSmartActionsProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/screenshot/ActionProxyReceiver_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/ActionProxyReceiver_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->actionProxyReceiverProvider:Ljavax/inject/Provider;

    .line 3334
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenshotSmartActionsProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/DeleteScreenshotReceiver_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deleteScreenshotReceiverProvider:Ljavax/inject/Provider;

    .line 3335
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenshotSmartActionsProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/screenshot/SmartActionsReceiver_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/SmartActionsReceiver_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->smartActionsReceiverProvider:Ljavax/inject/Provider;

    .line 3336
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$6000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v7}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v8}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$6100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 p3, v1

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v8

    invoke-static/range {p3 .. p10}, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/dialog/MediaOutputDialogFactory_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaOutputDialogFactoryProvider:Ljavax/inject/Provider;

    .line 3337
    invoke-static {v1}, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaOutputDialogReceiverProvider:Ljavax/inject/Provider;

    const/4 v1, 0x4

    .line 3338
    invoke-static {v1}, Ldagger/internal/MapProviderFactory;->builder(I)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/screenshot/ActionProxyReceiver;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->actionProxyReceiverProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deleteScreenshotReceiverProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/screenshot/SmartActionsReceiver;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->smartActionsReceiverProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaOutputDialogReceiverProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    invoke-virtual {v1}, Ldagger/internal/MapProviderFactory$Builder;->build()Ldagger/internal/MapProviderFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mapOfClassOfAndProviderOfBroadcastReceiverProvider:Ljavax/inject/Provider;

    .line 3339
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->contextComponentResolverProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mapOfClassOfAndProviderOfActivityProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mapOfClassOfAndProviderOfServiceProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mapOfClassOfAndProviderOfSystemUIProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mapOfClassOfAndProviderOfRecentsImplementationProvider:Ljavax/inject/Provider;

    invoke-static {v3, v4, v5, v6, v1}, Lcom/android/systemui/dagger/ContextComponentResolver_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/ContextComponentResolver_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v2, v1}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 3340
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->flashlightControllerImplProvider:Ljavax/inject/Provider;

    .line 3341
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p2

    invoke-static {v3, v1, v2}, Lcom/android/systemui/dagger/NightDisplayListenerModule_ProvideNightDisplayListenerFactory;->create(Lcom/android/systemui/dagger/NightDisplayListenerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/NightDisplayListenerModule_ProvideNightDisplayListenerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    .line 3342
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    .line 3343
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/AccessibilityController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/AccessibilityController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->accessibilityControllerProvider:Ljavax/inject/Provider;

    .line 3344
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SecurityControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->securityControllerImplProvider:Ljavax/inject/Provider;

    .line 3345
    new-instance v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$9;

    invoke-direct {v1, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$9;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->fragmentCreatorFactoryProvider:Ljavax/inject/Provider;

    .line 3351
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/fragments/FragmentService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/fragments/FragmentService_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->fragmentServiceProvider:Ljavax/inject/Provider;

    .line 3352
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tunablePaddingServiceProvider:Ljavax/inject/Provider;

    .line 3353
    invoke-static {}, Lcom/android/systemui/UiOffloadThread_Factory;->create()Lcom/android/systemui/UiOffloadThread_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    .line 3354
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/power/PowerNotificationWarnings_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/power/PowerNotificationWarnings_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->powerNotificationWarningsProvider:Ljavax/inject/Provider;

    .line 3355
    invoke-static {}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger_Factory;->create()Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    .line 3356
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;

    .line 3357
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dockManagerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    invoke-static/range {p1 .. p6}, Lcom/android/keyguard/clock/ClockManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/clock/ClockManager_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->clockManagerProvider:Ljavax/inject/Provider;

    .line 3358
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->locationControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->castControllerImplProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->flashlightControllerImplProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->accessibilityControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providePluginManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->securityControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->leakReporterProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->garbageMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    move-object/from16 v34, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v35, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v36, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v37, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v38, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->fragmentServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v39, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->extensionControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v40, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->pluginDependencyProvider:Ljavax/inject/Provider;

    move-object/from16 v41, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v42, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->volumeDialogControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v43, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v44, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v45, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    move-object/from16 v46, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tunablePaddingServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v47, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v48, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    move-object/from16 v49, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->powerNotificationWarningsProvider:Ljavax/inject/Provider;

    move-object/from16 v50, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->lightBarControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v51, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v52

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v53, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v54, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->enhancedEstimatesImplProvider:Ljavax/inject/Provider;

    move-object/from16 v55, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->vibratorHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v56, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v57

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$3400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v58

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v59, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardEnvironmentImplProvider:Ljavax/inject/Provider;

    move-object/from16 v60, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v61, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v62, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v63, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v64, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v65, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v66, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v67, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationGroupManagerLegacyProvider:Ljavax/inject/Provider;

    move-object/from16 v68, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v69, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationGutsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v70, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v71, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v72, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    move-object/from16 v73, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v74, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v75, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v76, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationFilterProvider:Ljavax/inject/Provider;

    move-object/from16 v77, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    move-object/from16 v78, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSmartReplyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v79, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    move-object/from16 v80, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v81, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$3100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v82

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAutoHideControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v83, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v84, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->privacyItemControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v85, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    move-object/from16 v86, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v87, v1

    invoke-static {}, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v88

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v89

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideTimeTickHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v90, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLeakReportEmailProvider:Ljavax/inject/Provider;

    move-object/from16 v91, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v92

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v93, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->clockManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v94, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v95, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v96, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$4200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v97

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSensorPrivacyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v98, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dockManagerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v99, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v100, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSysUiStateProvider:Ljavax/inject/Provider;

    move-object/from16 v101, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v102

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardSecurityModelProvider:Ljavax/inject/Provider;

    move-object/from16 v103, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    move-object/from16 v104, v1

    invoke-static {}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIWallPaperManagerFactory;->create()Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIWallPaperManagerFactory;

    move-result-object v105

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    move-object/from16 v106, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideRecentsProvider:Ljavax/inject/Provider;

    move-object/from16 v107, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideStatusBarProvider:Ljavax/inject/Provider;

    move-object/from16 v108, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->recordingControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v109, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->protoTracerProvider:Ljavax/inject/Provider;

    move-object/from16 v110, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaOutputDialogFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v111, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    move-object/from16 v112, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->navigationBarOverlayControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v113, v1

    invoke-static/range {v2 .. v113}, Lcom/android/systemui/Dependency_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/Dependency_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dependencyProvider2:Ljavax/inject/Provider;

    .line 3359
    invoke-static {}, Lcom/android/systemui/media/MediaHostStatesManager_Factory;->create()Lcom/android/systemui/media/MediaHostStatesManager_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaHostStatesManagerProvider:Ljavax/inject/Provider;

    .line 3360
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaHostStatesManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/media/MediaViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaViewController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaViewControllerProvider:Ljavax/inject/Provider;

    .line 3361
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundDelayableExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBackgroundRepeatableExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBackgroundRepeatableExecutorFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundRepeatableExecutorProvider:Ljavax/inject/Provider;

    .line 3362
    invoke-static {v1}, Lcom/android/systemui/media/SeekBarViewModel_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/media/SeekBarViewModel_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->seekBarViewModelProvider:Ljavax/inject/Provider;

    .line 3363
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaViewControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->seekBarViewModelProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaDataManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaOutputDialogFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-static/range {p1 .. p8}, Lcom/android/systemui/media/MediaControlPanel_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaControlPanel_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaControlPanelProvider:Ljavax/inject/Provider;

    .line 3364
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaControlPanelProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaHostStatesManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaDataManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    invoke-static/range {p1 .. p10}, Lcom/android/systemui/media/MediaCarouselController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaCarouselController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaCarouselControllerProvider:Ljavax/inject/Provider;

    .line 3365
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaCarouselControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    invoke-static/range {p1 .. p7}, Lcom/android/systemui/media/MediaHierarchyManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaHierarchyManager_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    .line 3366
    invoke-static {}, Lcom/android/systemui/media/MediaHost_MediaHostStateHolder_Factory;->create()Lcom/android/systemui/media/MediaHost_MediaHostStateHolder_Factory;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaDataManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaHostStatesManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/media/dagger/MediaModule_ProvidesKeyguardMediaHostFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/dagger/MediaModule_ProvidesKeyguardMediaHostFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesKeyguardMediaHostProvider:Ljavax/inject/Provider;

    .line 3367
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/media/KeyguardMediaController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/KeyguardMediaController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardMediaControllerProvider:Ljavax/inject/Provider;

    .line 3368
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->logBufferFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationSectionLogBufferFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationSectionLogBufferFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationSectionLogBufferProvider:Ljavax/inject/Provider;

    .line 3369
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationSectionsLoggerProvider:Ljavax/inject/Provider;

    .line 3370
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesIncomingHeaderSubcomponentProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesIncomingHeaderControllerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesIncomingHeaderControllerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesIncomingHeaderControllerProvider:Ljavax/inject/Provider;

    .line 3371
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesPeopleHeaderSubcomponentProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesPeopleHeaderControllerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesPeopleHeaderControllerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesPeopleHeaderControllerProvider:Ljavax/inject/Provider;

    .line 3372
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesAlertingHeaderSubcomponentProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesAlertingHeaderControllerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesAlertingHeaderControllerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesAlertingHeaderControllerProvider:Ljavax/inject/Provider;

    .line 3373
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesSilentHeaderSubcomponentProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesSilentHeaderControllerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesSilentHeaderControllerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesSilentHeaderControllerProvider:Ljavax/inject/Provider;

    .line 3374
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardMediaControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationSectionsFeatureManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationSectionsLoggerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesIncomingHeaderControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesPeopleHeaderControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesAlertingHeaderControllerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-static/range {p1 .. p9}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationSectionsManagerProvider:Ljavax/inject/Provider;

    .line 3375
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationSectionsManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/AmbientState_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->ambientStateProvider:Ljavax/inject/Provider;

    .line 3376
    invoke-static {}, Lcom/android/systemui/tv/TvSystemUIModule_ProvideAllowNotificationLongPressFactory;->create()Lcom/android/systemui/tv/TvSystemUIModule_ProvideAllowNotificationLongPressFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;

    .line 3377
    new-instance v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$10;

    invoke-direct {v1, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$10;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardQsUserSwitchComponentFactoryProvider:Ljavax/inject/Provider;

    .line 3383
    new-instance v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$11;

    invoke-direct {v1, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$11;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUserSwitcherComponentFactoryProvider:Ljavax/inject/Provider;

    .line 3389
    invoke-static {}, Lcom/android/systemui/qs/QSDetailDisplayer_Factory;->create()Lcom/android/systemui/qs/QSDetailDisplayer_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSDetailDisplayerProvider:Ljavax/inject/Provider;

    .line 3390
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 3391
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/dagger/QSFlagsModule_ProvideQSFlagFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/dagger/QSFlagsModule_ProvideQSFlagFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideQSFlagProvider:Ljavax/inject/Provider;

    .line 3392
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->logBufferFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/log/dagger/LogModule_ProvideQuickSettingsLogBufferFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideQuickSettingsLogBufferFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideQuickSettingsLogBufferProvider:Ljavax/inject/Provider;

    .line 3393
    invoke-static {v1}, Lcom/android/systemui/qs/logging/QSLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/logging/QSLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    .line 3394
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    invoke-static/range {p1 .. p7}, Lcom/android/systemui/qs/external/CustomTile_Builder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/external/CustomTile_Builder_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->builderProvider6:Ljavax/inject/Provider;

    .line 3395
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAccessPointControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    invoke-static/range {p1 .. p9}, Lcom/android/systemui/qs/tiles/WifiTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/WifiTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wifiTileProvider:Ljavax/inject/Provider;

    .line 3396
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->networkControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-static/range {p1 .. p8}, Lcom/android/systemui/qs/tiles/InternetTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/InternetTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->internetTileProvider:Ljavax/inject/Provider;

    .line 3397
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-static/range {p1 .. p8}, Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bluetoothTileProvider:Ljavax/inject/Provider;

    .line 3398
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->networkControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-static/range {p1 .. p8}, Lcom/android/systemui/qs/tiles/CellularTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/CellularTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->cellularTileProvider:Ljavax/inject/Provider;

    .line 3399
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSharePreferencesProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    invoke-static/range {p1 .. p9}, Lcom/android/systemui/qs/tiles/DndTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/DndTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dndTileProvider:Ljavax/inject/Provider;

    .line 3400
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->secureSettingsImplProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    invoke-static/range {p1 .. p9}, Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->colorInversionTileProvider:Ljavax/inject/Provider;

    .line 3401
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v9}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    invoke-static/range {p1 .. p9}, Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->airplaneModeTileProvider:Ljavax/inject/Provider;

    .line 3402
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-static/range {p1 .. p8}, Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->workModeTileProvider:Ljavax/inject/Provider;

    .line 3403
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-static/range {p1 .. p8}, Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->rotationLockTileProvider:Ljavax/inject/Provider;

    .line 3404
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->flashlightControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-static/range {p1 .. p8}, Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->flashlightTileProvider:Ljavax/inject/Provider;

    .line 3405
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->locationControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    invoke-static/range {p1 .. p9}, Lcom/android/systemui/qs/tiles/LocationTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/LocationTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->locationTileProvider:Ljavax/inject/Provider;

    .line 3406
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->castControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    invoke-static/range {p1 .. p11}, Lcom/android/systemui/qs/tiles/CastTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/CastTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->castTileProvider:Ljavax/inject/Provider;

    .line 3407
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    invoke-static/range {p1 .. p9}, Lcom/android/systemui/qs/tiles/HotspotTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->hotspotTileProvider:Ljavax/inject/Provider;

    .line 3408
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    invoke-static/range {p1 .. p9}, Lcom/android/systemui/qs/tiles/UserTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/UserTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->userTileProvider:Ljavax/inject/Provider;

    .line 3409
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->secureSettingsImplProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    invoke-static/range {p1 .. p9}, Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->batterySaverTileProvider:Ljavax/inject/Provider;

    .line 3410
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-static/range {p1 .. p8}, Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dataSaverTileProvider:Ljavax/inject/Provider;

    .line 3411
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/dagger/NightDisplayListenerModule_Builder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/NightDisplayListenerModule_Builder_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->builderProvider7:Ljavax/inject/Provider;

    .line 3412
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->locationControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v9}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$6800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->builderProvider7:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    invoke-static/range {p1 .. p10}, Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->nightDisplayTileProvider:Ljavax/inject/Provider;

    .line 3413
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-static/range {p1 .. p8}, Lcom/android/systemui/qs/tiles/NfcTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/NfcTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->nfcTileProvider:Ljavax/inject/Provider;

    .line 3414
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->garbageMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-static/range {p1 .. p8}, Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->memoryTileProvider:Ljavax/inject/Provider;

    .line 3415
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->locationControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    invoke-static/range {p1 .. p10}, Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->uiModeNightTileProvider:Ljavax/inject/Provider;

    .line 3416
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->recordingControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    invoke-static/range {p1 .. p9}, Lcom/android/systemui/qs/tiles/ScreenRecordTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/ScreenRecordTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenRecordTileProvider:Ljavax/inject/Provider;

    .line 3417
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/qs/dagger/QSFlagsModule_IsReduceBrightColorsAvailableFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/dagger/QSFlagsModule_IsReduceBrightColorsAvailableFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->isReduceBrightColorsAvailableProvider:Ljavax/inject/Provider;

    .line 3418
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->secureSettingsImplProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    invoke-static/range {p1 .. p10}, Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->reduceBrightColorsTileProvider:Ljavax/inject/Provider;

    .line 3419
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideIndividualSensorPrivacyControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    invoke-static/range {p1 .. p9}, Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/CameraToggleTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->cameraToggleTileProvider:Ljavax/inject/Provider;

    .line 3420
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideIndividualSensorPrivacyControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    invoke-static/range {p1 .. p9}, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/MicrophoneToggleTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->microphoneToggleTileProvider:Ljavax/inject/Provider;

    .line 3421
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/controls/ui/ControlsDialog_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/ui/ControlsDialog_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsDialogProvider:Ljavax/inject/Provider;

    .line 3422
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsComponentProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlsDialogProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->globalSettingsImplProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    invoke-static/range {p1 .. p11}, Lcom/android/systemui/qs/tiles/DeviceControlsTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/DeviceControlsTile_Factory;

    move-result-object v1

    move-object/from16 v39, v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceControlsTileProvider:Ljavax/inject/Provider;

    .line 3423
    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideQSFlagProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->builderProvider6:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wifiTileProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->internetTileProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bluetoothTileProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->cellularTileProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dndTileProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->colorInversionTileProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->airplaneModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->workModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->rotationLockTileProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->flashlightTileProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->locationTileProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->castTileProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->hotspotTileProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->userTileProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->batterySaverTileProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dataSaverTileProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->nightDisplayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->nfcTileProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->memoryTileProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->uiModeNightTileProvider:Ljavax/inject/Provider;

    move-object/from16 v34, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenRecordTileProvider:Ljavax/inject/Provider;

    move-object/from16 v35, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->reduceBrightColorsTileProvider:Ljavax/inject/Provider;

    move-object/from16 v36, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->cameraToggleTileProvider:Ljavax/inject/Provider;

    move-object/from16 v37, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->microphoneToggleTileProvider:Ljavax/inject/Provider;

    move-object/from16 v38, v1

    invoke-static/range {v12 .. v39}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSFactoryImplProvider:Ljavax/inject/Provider;

    .line 3424
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/qs/AutoAddTracker_Builder_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/AutoAddTracker_Builder_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->builderProvider8:Ljavax/inject/Provider;

    .line 3425
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->builderProvider8:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->secureSettingsImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->castControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    invoke-static/range {p1 .. p10}, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAutoTileManagerProvider:Ljavax/inject/Provider;

    .line 3426
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSFactoryImplProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideAutoTileManagerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->optionalOfStatusBarProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v15

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v2

    invoke-static/range {v3 .. v16}, Lcom/android/systemui/qs/QSTileHost_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QSTileHost_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 3427
    invoke-static {}, Lcom/android/systemui/media/MediaHost_MediaHostStateHolder_Factory;->create()Lcom/android/systemui/media/MediaHost_MediaHostStateHolder_Factory;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaDataManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaHostStatesManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/media/dagger/MediaModule_ProvidesQSMediaHostFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/dagger/MediaModule_ProvidesQSMediaHostFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesQSMediaHostProvider:Ljavax/inject/Provider;

    .line 3428
    invoke-static {}, Lcom/android/systemui/media/MediaHost_MediaHostStateHolder_Factory;->create()Lcom/android/systemui/media/MediaHost_MediaHostStateHolder_Factory;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaDataManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaHostStatesManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/media/dagger/MediaModule_ProvidesQuickQSMediaHostFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/dagger/MediaModule_ProvidesQuickQSMediaHostFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesQuickQSMediaHostProvider:Ljavax/inject/Provider;

    .line 3429
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$6900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->privacyItemControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v7}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$2300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->privacyLoggerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    invoke-static/range {p1 .. p9}, Lcom/android/systemui/privacy/PrivacyDialogController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/privacy/PrivacyDialogController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->privacyDialogControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectKeyguardSliceProvider(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)Lcom/android/systemui/keyguard/KeyguardSliceProvider;
    .locals 1

    .line 3485
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMDozeParameters(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    .line 3486
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMZenModeController(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 3487
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMNextAlarmController(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/statusbar/policy/NextAlarmController;)V

    .line 3488
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$5400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMAlarmManager(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Landroid/app/AlarmManager;)V

    .line 3489
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMContentResolver(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Landroid/content/ContentResolver;)V

    .line 3490
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMMediaManager(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    .line 3491
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMStatusBarStateController(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    .line 3492
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMKeyguardBypassController(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    return-object p1
.end method

.method private injectSystemUIAppComponentFactory(Lcom/android/systemui/SystemUIAppComponentFactory;)Lcom/android/systemui/SystemUIAppComponentFactory;
    .locals 0

    .line 3480
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->contextComponentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dagger/ContextComponentHelper;

    invoke-static {p1, p0}, Lcom/android/systemui/SystemUIAppComponentFactory_MembersInjector;->injectMComponentHelper(Lcom/android/systemui/SystemUIAppComponentFactory;Lcom/android/systemui/dagger/ContextComponentHelper;)V

    return-object p1
.end method

.method private notificationSectionsFeatureManager()Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;
    .locals 2

    .line 2801
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DeviceConfigProxy;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;-><init>(Lcom/android/systemui/util/DeviceConfigProxy;Landroid/content/Context;)V

    return-object v0
.end method

.method private peopleHeaderSectionHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;
    .locals 0

    .line 2809
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesPeopleHeaderSubcomponentProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesPeopleHeaderControllerFactory;->providesPeopleHeaderController(Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object p0

    return-object p0
.end method

.method private silentHeaderSectionHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;
    .locals 0

    .line 2817
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesSilentHeaderSubcomponentProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesSilentHeaderControllerFactory;->providesSilentHeaderController(Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createDependency()Lcom/android/systemui/Dependency;
    .locals 0

    .line 3449
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dependencyProvider2:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/Dependency;

    return-object p0
.end method

.method public createDumpManager()Lcom/android/systemui/dump/DumpManager;
    .locals 0

    .line 3454
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpManager;

    return-object p0
.end method

.method public createViewInstanceCreatorFactory()Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator$Factory;
    .locals 2

    .line 3465
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ViewInstanceCreatorFactory;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$1;)V

    return-object v0
.end method

.method public getConfigurationController()Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .locals 0

    .line 3439
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    return-object p0
.end method

.method public getContextComponentHelper()Lcom/android/systemui/dagger/ContextComponentHelper;
    .locals 0

    .line 3444
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->contextComponentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dagger/ContextComponentHelper;

    return-object p0
.end method

.method public getInitController()Lcom/android/systemui/InitController;
    .locals 0

    .line 3459
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->initControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/InitController;

    return-object p0
.end method

.method public bridge synthetic init()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/dagger/SysUIComponent;->init()V

    return-void
.end method

.method public inject(Lcom/android/systemui/SystemUIAppComponentFactory;)V
    .locals 0

    .line 3470
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->injectSystemUIAppComponentFactory(Lcom/android/systemui/SystemUIAppComponentFactory;)Lcom/android/systemui/SystemUIAppComponentFactory;

    return-void
.end method

.method public inject(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V
    .locals 0

    .line 3475
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->injectKeyguardSliceProvider(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    return-void
.end method

.method public provideBootCacheImpl()Lcom/android/systemui/BootCompleteCacheImpl;
    .locals 0

    .line 3434
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bootCompleteCacheImplProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/BootCompleteCacheImpl;

    return-object p0
.end method
