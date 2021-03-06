.class public final Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;
.super Ljava/lang/Object;
.source "StatusBarGoogleModule_ProvideStatusBarFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;",
        ">;"
    }
.end annotation


# instance fields
.field private final assistManagerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private final autoHideControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;"
        }
    .end annotation
.end field

.field private final batteryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;"
        }
    .end annotation
.end field

.field private final biometricUnlockControllerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;"
        }
    .end annotation
.end field

.field private final brightnessSliderFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final bubblesManagerOptionalProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/wmshell/BubblesManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private final bubblesOptionalProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;>;"
        }
    .end annotation
.end field

.field private final bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private final colorExtractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;"
        }
    .end annotation
.end field

.field private final commandQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final configurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final demoModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/demomode/DemoModeController;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceProvisionedControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;"
        }
    .end annotation
.end field

.field private final dismissCallbackRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private final displayMetricsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeParametersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeScrimControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeServiceHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            ">;"
        }
    .end annotation
.end field

.field private final dynamicPrivacyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;"
        }
    .end annotation
.end field

.field private final extensionControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            ">;"
        }
    .end annotation
.end field

.field private final falsingCollectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            ">;"
        }
    .end annotation
.end field

.field private final falsingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;"
        }
    .end annotation
.end field

.field private final featureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final headsUpManagerPhoneProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            ">;"
        }
    .end annotation
.end field

.field private final initControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/InitController;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardBypassControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardDismissUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardIndicationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardLiftControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardViewMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;"
        }
    .end annotation
.end field

.field private final lightBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;"
        }
    .end annotation
.end field

.field private final lightsOutNotifControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightsOutNotifController;",
            ">;"
        }
    .end annotation
.end field

.field private final lockScreenUserManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lockscreenWallpaperLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
            ">;"
        }
    .end annotation
.end field

.field private final metricsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final navigationBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            ">;"
        }
    .end annotation
.end field

.field private final networkControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationGutsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationIconAreaControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationInterruptionStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationMediaManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationShadeDepthControllerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationShadeWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationViewHierarchyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
            ">;"
        }
    .end annotation
.end field

.field private final phoneStatusBarPolicyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginDependencyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;"
        }
    .end annotation
.end field

.field private final powerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final pulseExpansionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteInputManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;"
        }
    .end annotation
.end field

.field private final reverseChargingViewControllerOptionalProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final screenLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final screenPinningRequestProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/ScreenPinningRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final scrimControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/LiveWallpaperScrimController;",
            ">;"
        }
    .end annotation
.end field

.field private final shadeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation
.end field

.field private final smartSpaceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/smartspace/SmartSpaceController;",
            ">;"
        }
    .end annotation
.end field

.field private final splitScreenOptionalProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;>;"
        }
    .end annotation
.end field

.field private final statusBarComponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarIconControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarNotificationActivityStarterBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final superStatusBarViewFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final timeTickHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final uiBgExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final userInfoControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final userSwitcherControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;"
        }
    .end annotation
.end field

.field private final vibratorHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final viewMediatorCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final visualStabilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final volumeComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/volume/VolumeComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final wakefulnessLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final wallpaperNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/smartspace/SmartSpaceController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/wmshell/BubblesManager;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/LiveWallpaperScrimController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/ScreenPinningRequest;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/volume/VolumeComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightsOutNotifController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/InitController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/demomode/DemoModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 346
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->smartSpaceControllerProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 347
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->wallpaperNotifierProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 348
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->reverseChargingViewControllerOptionalProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 349
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->contextProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 350
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->notificationsControllerProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 351
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->lightBarControllerProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 352
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->autoHideControllerProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 353
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 354
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->statusBarIconControllerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 355
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 356
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 357
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 358
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 359
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->headsUpManagerPhoneProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 360
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 361
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 362
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->falsingManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 363
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->falsingCollectorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 364
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 365
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 366
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 367
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->notificationLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 368
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->notificationInterruptionStateProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 369
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->notificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    .line 370
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->keyguardViewMediatorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 371
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->displayMetricsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 372
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->metricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 373
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->uiBgExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 374
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->notificationMediaManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p30

    .line 375
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->lockScreenUserManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p31

    .line 376
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->remoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p32

    .line 377
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p33

    .line 378
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->networkControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p34

    .line 379
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->batteryControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p35

    .line 380
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->colorExtractorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p36

    .line 381
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->screenLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p37

    .line 382
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p38

    .line 383
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p39

    .line 384
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->vibratorHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p40

    .line 385
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->bubblesManagerOptionalProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p41

    .line 386
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->bubblesOptionalProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p42

    .line 387
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p43

    .line 388
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p44

    .line 389
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->navigationBarControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p45

    .line 390
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->assistManagerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p46

    .line 391
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->configurationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p47

    .line 392
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p48

    .line 393
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->dozeParametersProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p49

    .line 394
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->scrimControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p50

    .line 395
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->keyguardLiftControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p51

    .line 396
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->lockscreenWallpaperLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p52

    .line 397
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->biometricUnlockControllerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p53

    .line 398
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->notificationShadeDepthControllerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p54

    .line 399
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->dozeServiceHostProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p55

    .line 400
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->powerManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p56

    .line 401
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->screenPinningRequestProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p57

    .line 402
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->dozeScrimControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p58

    .line 403
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->volumeComponentProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p59

    .line 404
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->commandQueueProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p60

    .line 405
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->statusBarComponentBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p61

    .line 406
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->pluginManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p62

    .line 407
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->splitScreenOptionalProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p63

    .line 408
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->lightsOutNotifControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p64

    .line 409
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->statusBarNotificationActivityStarterBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p65

    .line 410
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->shadeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p66

    .line 411
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->superStatusBarViewFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p67

    .line 412
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p68

    .line 413
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->viewMediatorCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p69

    .line 414
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->initControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p70

    .line 415
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->timeTickHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p71

    .line 416
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->pluginDependencyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p72

    .line 417
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p73

    .line 418
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->extensionControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p74

    .line 419
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p75

    .line 420
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->phoneStatusBarPolicyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p76

    .line 421
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->keyguardIndicationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p77

    .line 422
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->dismissCallbackRegistryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p78

    .line 423
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->demoModeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p79

    .line 424
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p80

    .line 425
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p81

    .line 426
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->brightnessSliderFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p82

    .line 427
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->featureFlagsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;
    .locals 84
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/smartspace/SmartSpaceController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/wmshell/BubblesManager;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/LiveWallpaperScrimController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/ScreenPinningRequest;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/volume/VolumeComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightsOutNotifController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/InitController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/demomode/DemoModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;)",
            "Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v35, p34

    move-object/from16 v36, p35

    move-object/from16 v37, p36

    move-object/from16 v38, p37

    move-object/from16 v39, p38

    move-object/from16 v40, p39

    move-object/from16 v41, p40

    move-object/from16 v42, p41

    move-object/from16 v43, p42

    move-object/from16 v44, p43

    move-object/from16 v45, p44

    move-object/from16 v46, p45

    move-object/from16 v47, p46

    move-object/from16 v48, p47

    move-object/from16 v49, p48

    move-object/from16 v50, p49

    move-object/from16 v51, p50

    move-object/from16 v52, p51

    move-object/from16 v53, p52

    move-object/from16 v54, p53

    move-object/from16 v55, p54

    move-object/from16 v56, p55

    move-object/from16 v57, p56

    move-object/from16 v58, p57

    move-object/from16 v59, p58

    move-object/from16 v60, p59

    move-object/from16 v61, p60

    move-object/from16 v62, p61

    move-object/from16 v63, p62

    move-object/from16 v64, p63

    move-object/from16 v65, p64

    move-object/from16 v66, p65

    move-object/from16 v67, p66

    move-object/from16 v68, p67

    move-object/from16 v69, p68

    move-object/from16 v70, p69

    move-object/from16 v71, p70

    move-object/from16 v72, p71

    move-object/from16 v73, p72

    move-object/from16 v74, p73

    move-object/from16 v75, p74

    move-object/from16 v76, p75

    move-object/from16 v77, p76

    move-object/from16 v78, p77

    move-object/from16 v79, p78

    move-object/from16 v80, p79

    move-object/from16 v81, p80

    move-object/from16 v82, p81

    .line 516
    new-instance v83, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;

    move-object/from16 v0, v83

    invoke-direct/range {v0 .. v82}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v83
.end method

.method public static provideStatusBar(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;Ljava/util/Optional;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/util/DisplayMetrics;Lcom/android/internal/logging/MetricsLogger;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/VibratorHelper;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/navigationbar/NavigationBarController;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/google/android/systemui/LiveWallpaperScrimController;Lcom/android/systemui/statusbar/phone/KeyguardLiftController;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Landroid/os/PowerManager;Lcom/android/systemui/recents/ScreenPinningRequest;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/CommandQueue;Ljavax/inject/Provider;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/util/Optional;Lcom/android/systemui/statusbar/phone/LightsOutNotifController;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/InitController;Landroid/os/Handler;Lcom/android/systemui/plugins/PluginDependencyProvider;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/statusbar/policy/ExtensionController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;Lcom/android/systemui/statusbar/FeatureFlags;)Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/smartspace/SmartSpaceController;",
            "Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;",
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            "Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/wmshell/BubblesManager;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/google/android/systemui/LiveWallpaperScrimController;",
            "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            "Landroid/os/PowerManager;",
            "Lcom/android/systemui/recents/ScreenPinningRequest;",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            "Lcom/android/systemui/volume/VolumeComponent;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;",
            ">;",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/LightsOutNotifController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            "Lcom/android/systemui/InitController;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;",
            "Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            "Lcom/android/systemui/demomode/DemoModeController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
            "Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ")",
            "Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;"
        }
    .end annotation

    .line 574
    invoke-static/range {p0 .. p81}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule;->provideStatusBar(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;Ljava/util/Optional;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/util/DisplayMetrics;Lcom/android/internal/logging/MetricsLogger;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/VibratorHelper;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/navigationbar/NavigationBarController;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/google/android/systemui/LiveWallpaperScrimController;Lcom/android/systemui/statusbar/phone/KeyguardLiftController;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Landroid/os/PowerManager;Lcom/android/systemui/recents/ScreenPinningRequest;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/CommandQueue;Ljavax/inject/Provider;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/util/Optional;Lcom/android/systemui/statusbar/phone/LightsOutNotifController;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/InitController;Landroid/os/Handler;Lcom/android/systemui/plugins/PluginDependencyProvider;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/statusbar/policy/ExtensionController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;Lcom/android/systemui/statusbar/FeatureFlags;)Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;
    .locals 84

    move-object/from16 v0, p0

    .line 432
    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->smartSpaceControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/systemui/smartspace/SmartSpaceController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->wallpaperNotifierProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->reverseChargingViewControllerOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/Optional;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/Context;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->notificationsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->lightBarControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->autoHideControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/statusbar/phone/AutoHideController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->statusBarIconControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->headsUpManagerPhoneProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->falsingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->falsingCollectorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->notificationLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->notificationInterruptionStateProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->notificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->keyguardViewMediatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->displayMetricsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Landroid/util/DisplayMetrics;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->metricsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, Lcom/android/internal/logging/MetricsLogger;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->uiBgExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v29, v1

    check-cast v29, Ljava/util/concurrent/Executor;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->notificationMediaManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v30, v1

    check-cast v30, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->lockScreenUserManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v31, v1

    check-cast v31, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->remoteInputManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v33, v1

    check-cast v33, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->networkControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v34, v1

    check-cast v34, Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->batteryControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v35, v1

    check-cast v35, Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->colorExtractorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v36, v1

    check-cast v36, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->screenLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v37, v1

    check-cast v37, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v38, v1

    check-cast v38, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v39, v1

    check-cast v39, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->vibratorHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v40, v1

    check-cast v40, Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->bubblesManagerOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v41, v1

    check-cast v41, Ljava/util/Optional;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->bubblesOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v42, v1

    check-cast v42, Ljava/util/Optional;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v43, v1

    check-cast v43, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v44, v1

    check-cast v44, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->navigationBarControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v45, v1

    check-cast v45, Lcom/android/systemui/navigationbar/NavigationBarController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->assistManagerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v46

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->configurationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v47, v1

    check-cast v47, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v48, v1

    check-cast v48, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v49, v1

    check-cast v49, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->scrimControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v50, v1

    check-cast v50, Lcom/google/android/systemui/LiveWallpaperScrimController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->keyguardLiftControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v51, v1

    check-cast v51, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->lockscreenWallpaperLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v52

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->biometricUnlockControllerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v53

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->notificationShadeDepthControllerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v54

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->dozeServiceHostProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v55, v1

    check-cast v55, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->powerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v56, v1

    check-cast v56, Landroid/os/PowerManager;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->screenPinningRequestProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v57, v1

    check-cast v57, Lcom/android/systemui/recents/ScreenPinningRequest;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->dozeScrimControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v58, v1

    check-cast v58, Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->volumeComponentProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v59, v1

    check-cast v59, Lcom/android/systemui/volume/VolumeComponent;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->commandQueueProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v60, v1

    check-cast v60, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->statusBarComponentBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v61, v1

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->pluginManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v62, v1

    check-cast v62, Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->splitScreenOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v63, v1

    check-cast v63, Ljava/util/Optional;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->lightsOutNotifControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v64, v1

    check-cast v64, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->statusBarNotificationActivityStarterBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v65, v1

    check-cast v65, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->shadeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v66, v1

    check-cast v66, Lcom/android/systemui/statusbar/phone/ShadeController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->superStatusBarViewFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v67, v1

    check-cast v67, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v68, v1

    check-cast v68, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->viewMediatorCallbackProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v69, v1

    check-cast v69, Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->initControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v70, v1

    check-cast v70, Lcom/android/systemui/InitController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->timeTickHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v71, v1

    check-cast v71, Landroid/os/Handler;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->pluginDependencyProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v72, v1

    check-cast v72, Lcom/android/systemui/plugins/PluginDependencyProvider;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v73, v1

    check-cast v73, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->extensionControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v74, v1

    check-cast v74, Lcom/android/systemui/statusbar/policy/ExtensionController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v75, v1

    check-cast v75, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->phoneStatusBarPolicyProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v76, v1

    check-cast v76, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->keyguardIndicationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v77, v1

    check-cast v77, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->dismissCallbackRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v78, v1

    check-cast v78, Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->demoModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v79, v1

    check-cast v79, Lcom/android/systemui/demomode/DemoModeController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v80, v1

    check-cast v80, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v81, v1

    check-cast v81, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->brightnessSliderFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v82, v1

    check-cast v82, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

    iget-object v0, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v83, v0

    check-cast v83, Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-static/range {v2 .. v83}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->provideStatusBar(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;Ljava/util/Optional;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/util/DisplayMetrics;Lcom/android/internal/logging/MetricsLogger;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/VibratorHelper;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/navigationbar/NavigationBarController;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/google/android/systemui/LiveWallpaperScrimController;Lcom/android/systemui/statusbar/phone/KeyguardLiftController;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Landroid/os/PowerManager;Lcom/android/systemui/recents/ScreenPinningRequest;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/CommandQueue;Ljavax/inject/Provider;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/util/Optional;Lcom/android/systemui/statusbar/phone/LightsOutNotifController;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/InitController;Landroid/os/Handler;Lcom/android/systemui/plugins/PluginDependencyProvider;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/statusbar/policy/ExtensionController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;Lcom/android/systemui/statusbar/FeatureFlags;)Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogleModule_ProvideStatusBarFactory;->get()Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    move-result-object p0

    return-object p0
.end method
