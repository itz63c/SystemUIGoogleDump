.class public Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;
.super Lcom/android/systemui/statusbar/phone/StatusBar;
.source "StatusBarGoogle.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field private mAnimStartTime:J

.field private mChargingAnimShown:Z

.field private mNotifIconCenteringController:Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;

.field private mReceivingBatteryLevel:I

.field private mReverseChargingAnimShown:Z

.field private mReverseChargingViewControllerOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSmartSpaceController:Lcom/google/android/systemui/smartspace/SmartSpaceController;

.field private mWallpaperNotifier:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "StatusBarGoogle"

    const/4 v1, 0x3

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;Ljava/util/Optional;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/util/DisplayMetrics;Lcom/android/internal/logging/MetricsLogger;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/VibratorHelper;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/navigationbar/NavigationBarController;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/google/android/systemui/LiveWallpaperScrimController;Lcom/android/systemui/statusbar/phone/KeyguardLiftController;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Landroid/os/PowerManager;Lcom/android/systemui/recents/ScreenPinningRequest;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/CommandQueue;Ljavax/inject/Provider;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/util/Optional;Lcom/android/systemui/statusbar/phone/LightsOutNotifController;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/InitController;Landroid/os/Handler;Lcom/android/systemui/plugins/PluginDependencyProvider;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/statusbar/policy/ExtensionController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;Lcom/android/systemui/statusbar/FeatureFlags;)V
    .locals 80
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
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    move-object/from16 v16, p19

    move-object/from16 v17, p20

    move-object/from16 v18, p21

    move-object/from16 v19, p22

    move-object/from16 v20, p23

    move-object/from16 v21, p24

    move-object/from16 v22, p25

    move-object/from16 v23, p26

    move-object/from16 v24, p27

    move-object/from16 v25, p28

    move-object/from16 v26, p29

    move-object/from16 v27, p30

    move-object/from16 v28, p31

    move-object/from16 v29, p32

    move-object/from16 v30, p33

    move-object/from16 v31, p34

    move-object/from16 v32, p35

    move-object/from16 v33, p36

    move-object/from16 v34, p37

    move-object/from16 v35, p38

    move-object/from16 v36, p39

    move-object/from16 v37, p40

    move-object/from16 v38, p41

    move-object/from16 v39, p42

    move-object/from16 v40, p43

    move-object/from16 v41, p44

    move-object/from16 v42, p45

    move-object/from16 v43, p46

    move-object/from16 v44, p47

    move-object/from16 v45, p48

    move-object/from16 v46, p49

    move-object/from16 v47, p50

    move-object/from16 v48, p51

    move-object/from16 v49, p52

    move-object/from16 v75, p53

    move-object/from16 v50, p54

    move-object/from16 v51, p55

    move-object/from16 v52, p56

    move-object/from16 v53, p57

    move-object/from16 v54, p58

    move-object/from16 v55, p59

    move-object/from16 v56, p60

    move-object/from16 v57, p61

    move-object/from16 v58, p62

    move-object/from16 v59, p63

    move-object/from16 v60, p64

    move-object/from16 v61, p65

    move-object/from16 v62, p66

    move-object/from16 v63, p67

    move-object/from16 v64, p68

    move-object/from16 v65, p69

    move-object/from16 v66, p70

    move-object/from16 v67, p71

    move-object/from16 v68, p72

    move-object/from16 v69, p73

    move-object/from16 v70, p74

    move-object/from16 v71, p75

    move-object/from16 v72, p76

    move-object/from16 v73, p77

    move-object/from16 v74, p78

    move-object/from16 v76, p79

    move-object/from16 v77, p80

    move-object/from16 v78, p81

    move-object/from16 v79, p82

    .line 217
    invoke-direct/range {v0 .. v79}, Lcom/android/systemui/statusbar/phone/StatusBar;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/util/DisplayMetrics;Lcom/android/internal/logging/MetricsLogger;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/VibratorHelper;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/navigationbar/NavigationBarController;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/KeyguardLiftController;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Landroid/os/PowerManager;Lcom/android/systemui/recents/ScreenPinningRequest;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/CommandQueue;Ljavax/inject/Provider;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/util/Optional;Lcom/android/systemui/statusbar/phone/LightsOutNotifController;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/InitController;Landroid/os/Handler;Lcom/android/systemui/plugins/PluginDependencyProvider;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/statusbar/policy/ExtensionController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/demomode/DemoModeController;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;Lcom/android/systemui/statusbar/FeatureFlags;)V

    move-object/from16 v1, p1

    .line 298
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mSmartSpaceController:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    move-object/from16 v1, p2

    .line 299
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mWallpaperNotifier:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;

    move-object/from16 v1, p3

    .line 300
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mReverseChargingViewControllerOptional:Ljava/util/Optional;

    move-object/from16 v1, p76

    .line 301
    invoke-virtual {v1, v0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 345
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mSmartSpaceController:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 348
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mNotifIconCenteringController:Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;

    if-eqz p0, :cond_0

    .line 349
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 2

    .line 355
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->onBatteryLevelChanged(IZZ)V

    .line 356
    iput p1, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mReceivingBatteryLevel:I

    .line 357
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/BatteryController;->isWirelessCharging()Z

    move-result p2

    if-nez p2, :cond_1

    .line 358
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mAnimStartTime:J

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x46d

    cmp-long p2, p2, v0

    const/4 p3, 0x0

    if-lez p2, :cond_0

    .line 359
    iput-boolean p3, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mChargingAnimShown:Z

    .line 361
    :cond_0
    iput-boolean p3, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mReverseChargingAnimShown:Z

    .line 363
    :cond_1
    sget-boolean p2, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->DEBUG:Z

    if-eqz p2, :cond_2

    .line 364
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onBatteryLevelChanged(): level="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",wlc="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BatteryController;->isWirelessCharging()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",wlcs="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mChargingAnimShown:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",rtxs="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mReverseChargingAnimShown:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",this="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatusBarGoogle"

    .line 364
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onReverseChanged(ZILjava/lang/String;)V
    .locals 5

    .line 372
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onReverseChanged(ZILjava/lang/String;)V

    if-nez p1, :cond_1

    if-ltz p2, :cond_1

    .line 373
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 374
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isWirelessCharging()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mChargingAnimShown:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mReverseChargingAnimShown:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 376
    iput-boolean v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mReverseChargingAnimShown:Z

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mAnimStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x46d

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    sub-long v0, v2, v0

    .line 380
    :goto_0
    iget v2, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mReceivingBatteryLevel:I

    invoke-virtual {p0, v2, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->showChargingAnimation(IIJ)V

    .line 382
    :cond_1
    sget-boolean v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReverseChanged(): rtx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",rxlevel="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mReceivingBatteryLevel:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",level="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",name="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",wlc="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BatteryController;->isWirelessCharging()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",wlcs="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mChargingAnimShown:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",rtxs="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mReverseChargingAnimShown:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",this="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatusBarGoogle"

    .line 383
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public setLockscreenUser(I)V
    .locals 0

    .line 339
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setLockscreenUser(I)V

    .line 340
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mSmartSpaceController:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->reloadData()V

    return-void
.end method

.method public showWirelessChargingAnimation(I)V
    .locals 2

    .line 392
    sget-boolean v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBarGoogle"

    const-string v1, "showWirelessChargingAnimation()"

    .line 393
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mChargingAnimShown:Z

    .line 396
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->showWirelessChargingAnimation(I)V

    .line 397
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mAnimStartTime:J

    return-void
.end method

.method public start()V
    .locals 3

    .line 306
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->start()V

    .line 308
    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 310
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;

    .line 311
    invoke-virtual {v0}, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;->updateSmartSpaceVisibilitySettings()V

    .line 313
    const-class v0, Lcom/android/systemui/dock/DockManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/dreamliner/DockObserver;

    .line 314
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v2, Lcom/android/systemui/R$id;->dreamliner_gear:I

    .line 315
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 314
    invoke-virtual {v0, v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->setDreamlinerGear(Landroid/widget/ImageView;)V

    .line 316
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v2, Lcom/android/systemui/R$id;->photo_preview:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->setPhotoPreview(Landroid/widget/FrameLayout;)V

    .line 317
    new-instance v1, Lcom/google/android/systemui/dreamliner/DockIndicationController;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 318
    invoke-virtual {v0, v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->setIndicationController(Lcom/google/android/systemui/dreamliner/DockIndicationController;)V

    .line 319
    invoke-virtual {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->registerDockAlignInfo()V

    .line 321
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mReverseChargingViewControllerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mReverseChargingViewControllerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;

    invoke-virtual {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->initialize()V

    .line 334
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mWallpaperNotifier:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->attach()V

    return-void
.end method
