.class public Lcom/android/systemui/statusbar/phone/StatusBar;
.super Lcom/android/systemui/SystemUI;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/demomode/DemoMode;
.implements Lcom/android/systemui/plugins/ActivityStarter;
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBar$H;,
        Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarUiEvent;,
        Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;
    }
.end annotation


# static fields
.field public static final ONLY_CORE_APPS:Z

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# instance fields
.field private final mAbsPos:[I

.field protected mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

.field private mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

.field private mAmbientIndicationContainer:Landroid/view/View;

.field private mAppearance:I

.field private final mAssistManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

.field private final mBannerActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private final mBiometricUnlockControllerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;"
        }
    .end annotation
.end field

.field protected mBouncerShowing:Z

.field private mBouncerWasShowingWhenHidden:Z

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mBrightnessMirrorVisible:Z

.field private final mBrightnessSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mBubbleExpandListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

.field private final mBubblesManagerOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/wmshell/BubblesManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mBubblesOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;"
        }
    .end annotation
.end field

.field private final mBypassHeadsUpNotifier:Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;

.field private mCameraLaunchGestureVibePattern:[J

.field private final mCheckBarModes:Ljava/lang/Runnable;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field protected final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mCurrentDisplaySize:Landroid/graphics/Point;

.field private final mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field private final mDemoReceiver:Landroid/content/BroadcastReceiver;

.field protected mDeviceInteractive:Z

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDisabled1:I

.field private mDisabled2:I

.field private final mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

.field protected mDisplay:Landroid/view/Display;

.field private mDisplayId:I

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field protected mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mDozing:Z

.field private mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

.field private mExpandedVisible:Z

.field private final mExpansionChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

.field private final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field private final mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

.field protected mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

.field private final mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field protected final mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

.field private mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mHideIconsForBouncer:Z

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field private final mInitController:Lcom/android/systemui/InitController;

.field private mInteractingWindows:I

.field protected mIsKeyguard:Z

.field private mIsOccluded:Z

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private final mKeyguardLiftController:Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

.field protected mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mLastCameraLaunchSource:I

.field private mLastLoggedStateFingerprint:I

.field private mLaunchCameraOnFinishedGoingToSleep:Z

.field private mLaunchCameraWhenFinishedWaking:Z

.field private mLaunchEmergencyActionOnFinishedGoingToSleep:Z

.field private mLaunchEmergencyActionWhenFinishedWaking:Z

.field private mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

.field private final mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field private final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

.field private final mLightsOutNotifController:Lcom/android/systemui/statusbar/phone/LightsOutNotifController;

.field protected mLockscreenLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field protected mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

.field private final mLockscreenWallpaperLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNoAnimationOnNextBarModeChange:Z

.field private mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

.field protected final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field protected final mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

.field private final mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

.field protected mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private mNotificationShadeDepthControllerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            ">;"
        }
    .end annotation
.end field

.field protected mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field protected mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

.field protected mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

.field protected mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

.field private mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

.field protected mPanelExpanded:Z

.field private mPendingRemoteInputView:Landroid/view/View;

.field protected mPhoneStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field private final mPluginDependencyProvider:Lcom/android/systemui/plugins/PluginDependencyProvider;

.field private final mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field private mPowerButtonReveal:Lcom/android/systemui/statusbar/PowerButtonReveal;

.field private final mPowerManager:Landroid/os/PowerManager;

.field protected mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

.field private final mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

.field private mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

.field private final mQueueLock:Ljava/lang/Object;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field private mReportRejectedTouch:Landroid/view/View;

.field private final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private final mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

.field private final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mSignalPolicy:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

.field private final mSplitScreenOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;"
        }
    .end annotation
.end field

.field protected mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field final mStartTracing:Ljava/lang/Runnable;

.field protected mState:I

.field private final mStatusBarComponentBuilder:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field protected mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarMode:I

.field private final mStatusBarNotificationActivityStarterBuilder:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private mStatusBarStateLog:Landroid/metrics/LogMaker;

.field private final mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

.field protected mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field protected mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private mStatusBarWindowHidden:Z

.field private mStatusBarWindowState:I

.field final mStopTracing:Ljava/lang/Runnable;

.field private final mSuperStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

.field mTaskbarChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mTmpInt2:[I

.field private mTopHidesStatusBar:Z

.field private mTransientShown:Z

.field private final mUiBgExecutor:Ljava/util/concurrent/Executor;

.field private mUiModeManager:Landroid/app/UiModeManager;

.field private final mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUserInfoControllerImpl:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

.field protected mUserSetup:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private mVibrateOnOpening:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field private final mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

.field protected mVisible:Z

.field private mVisibleToUser:Z

.field private final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

.field private final mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

.field private mWakeUpComingFromTouch:Z

.field private final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

.field private mWakeUpTouchLocation:Landroid/graphics/PointF;

.field private final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperSupported:Z

.field private mWereIconsJustHidden:Z

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public static synthetic $r8$lambda$034_CBc7cGFp-U8I8do4OfwYi_k(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionFadingEnded()V

    return-void
.end method

.method public static synthetic $r8$lambda$1Jn2vSczhpl8aOtgX0fNIHH23QI(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$postQSRunnableDismissingKeyguard$23(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2KFRdHrNwlS69s-xkcfVcf0Ldlw(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$startPendingIntentDismissingKeyguard$34(Landroid/app/PendingIntent;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6wYts1_ud8LGv4tUV2ZkXmWFQDw(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$appTransitionFinished$30(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7A--lZuosjys2Dci7iOAw3rQpqo(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$onHeadsUpPinnedModeChanged$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$7YQgZYJWCRig4nzuhKDIDLPcwpk(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$postAnimateForceCollapsePanels$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$7mfCdJjs6xHMmrxbBYVUYoGc2Mo(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$fadeKeyguardAfterLaunchTransition$27(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9z322cdmqSv4kv0hOG9IQ-hOI7k(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$makeStatusBarView$5(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CcV68ZIE6OL2XvUYFtXqnzx01ug(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$maybeEscalateHeadsUp$14(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D9bt2hDNEST0LZIqg4P-cf8v398(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$appTransitionCancelled$29(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EwajA_4Gg-R8rwt-p7hwiYib1H0(Lcom/android/systemui/statusbar/phone/StatusBar;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$start$3(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fp4sbBrJ-2vuuwJhBK5FX5UEFI8(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$new$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$HYddiQ5K1SfWv6oXH7P9cxiRIEY(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$makeStatusBarView$8(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Is2kP5ShBC_x9GWvkRHS29Yo3-s(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$executeActionDismissingKeyguard$33(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PxyRqoOfiDPVQ2jhBqBPnjgo1zQ(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$postQSRunnableDismissingKeyguard$24(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PzTLlkIrMFNuAyM0QDl1qhxUR3g(FLcom/android/systemui/statusbar/BackDropView;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$makeStatusBarView$6(FLcom/android/systemui/statusbar/BackDropView;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$QWnBslfRNQHq5t-KqnJKe82hmxE(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$handleVisibleToUserChangedImpl$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$SMaI7k_EmhpsJrSp5xI2U-WY5MY(Lcom/android/systemui/statusbar/phone/StatusBar;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$new$2(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UBg4Jhj3h_q8epaOEqa-l2fycvQ(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$postStartActivityDismissingKeyguard$25(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UZiMqHNsl9058Dlxk84JI4Pysms(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$fadeKeyguardWhilePulsing$28()V

    return-void
.end method

.method public static synthetic $r8$lambda$Xy5on3PNNScXaTZDIn3gX8WXzxI(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;IZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$startActivityDismissingKeyguard$17(Landroid/content/Intent;IZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_y3Ag6XLXnWnnud9ml7zjmMnAXA(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$postStartActivityDismissingKeyguard$26(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b3chVTEWjdm5nKXXR2_VqVhqQh0(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$onHeadsUpPinnedModeChanged$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$bD5yf1bLv1p70tsq2Brv5VT_TTY(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$makeStatusBarView$7(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eqpKDWCddrRl_kteewb8WASzd8w(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$hUNxeEAVcyPWGYsDzkNtgtOLP7U(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$kdFczVwwiTeVN4pTdFd4tDFGess(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$getStatusBarWindowTouchListener$10(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mlbJlq2oJlFw7R2WMDTAuaSaG_4(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rHwjsDHKzRIu4thwc7iuuOzLFPw(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$executeActionDismissingKeyguard$32(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rPPw2FgXYfDnAZ91T2tR1pUAyxs(Lcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$startActivityDismissingKeyguard$18(Lcom/android/systemui/plugins/ActivityStarter$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$taO3bqKBI-fngL83TolE7kdw9DY(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$makeStatusBarView$4(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uF4WvQJRT53w_NB-_d9icV237jI(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$awakenDreams$31()V

    return-void
.end method

.method public static synthetic $r8$lambda$w0dkp3c-ApxSJ8O3smATJHJOIug(Lcom/android/systemui/statusbar/phone/StatusBar;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$handleVisibleToUserChangedImpl$20(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$wyeRIwXqXMU8ing6QECWJZNj1aU(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$updateHideIconsForBouncer$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$xG-Ruufbv9udMjPnO4sMgYZpKp8(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$makeStatusBarView$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yDCKTGMj3OI0qh56qYHOSEKt5Nw(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;ZZ)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$executeRunnableDismissingKeyguard$19(Ljava/lang/Runnable;ZZ)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 308
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 309
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 310
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 325
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    :try_start_0
    const-string v0, "package"

    .line 331
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 332
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 336
    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ONLY_CORE_APPS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/util/DisplayMetrics;Lcom/android/internal/logging/MetricsLogger;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/VibratorHelper;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/navigationbar/NavigationBarController;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/KeyguardLiftController;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Landroid/os/PowerManager;Lcom/android/systemui/recents/ScreenPinningRequest;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/CommandQueue;Ljavax/inject/Provider;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/util/Optional;Lcom/android/systemui/statusbar/phone/LightsOutNotifController;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/InitController;Landroid/os/Handler;Lcom/android/systemui/plugins/PluginDependencyProvider;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/statusbar/policy/ExtensionController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/demomode/DemoModeController;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;Lcom/android/systemui/statusbar/FeatureFlags;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
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
            "Lcom/android/systemui/statusbar/KeyguardIndicationController;",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            "Lcom/android/systemui/demomode/DemoModeController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
            "Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 768
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 364
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    const/4 v1, 0x0

    .line 369
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    .line 380
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQueueLock:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 435
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAbsPos:[I

    .line 448
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    .line 449
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    .line 468
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    .line 470
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 532
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createHandler()Lcom/android/systemui/statusbar/phone/StatusBar$H;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    .line 549
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 570
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTaskbarChangeReceiver:Landroid/content/BroadcastReceiver;

    new-array v1, v2, [I

    .line 590
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    .line 604
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 626
    new-instance v1, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v1, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 638
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

    .line 647
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 664
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMainThreadHandler:Landroid/os/Handler;

    .line 2525
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    .line 2806
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$11;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2847
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$12;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoReceiver:Landroid/content/BroadcastReceiver;

    .line 3078
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$13;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStartTracing:Ljava/lang/Runnable;

    .line 3089
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda17;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStopTracing:Ljava/lang/Runnable;

    .line 3801
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$14;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 3901
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$15;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$15;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 4228
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$17;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$17;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBannerActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object v1, p2

    .line 769
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    move-object v1, p3

    .line 770
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    move-object v1, p4

    .line 771
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    move-object v1, p5

    .line 772
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p6

    .line 773
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-object v1, p7

    .line 774
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-object v1, p8

    .line 775
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-object v1, p9

    .line 776
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object v1, p10

    .line 777
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, p11

    .line 778
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-object/from16 v1, p72

    .line 779
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-object/from16 v1, p76

    .line 780
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    move-object/from16 v1, p12

    .line 781
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    move-object/from16 v1, p13

    .line 782
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBypassHeadsUpNotifier:Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;

    move-object/from16 v1, p15

    .line 783
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v1, p14

    .line 784
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v1, p16

    .line 785
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v1, p17

    .line 786
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    move-object/from16 v1, p18

    .line 787
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    move-object/from16 v1, p19

    .line 788
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    move-object/from16 v1, p20

    .line 789
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    move-object/from16 v1, p21

    .line 790
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    move-object/from16 v1, p22

    .line 791
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object/from16 v1, p23

    .line 792
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v1, p24

    .line 793
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v1, p25

    .line 794
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v1, p26

    .line 795
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-object/from16 v1, p27

    .line 796
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v1, p28

    .line 797
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 v1, p29

    .line 798
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v1, p30

    .line 799
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v1, p31

    .line 800
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v1, p32

    .line 801
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    move-object/from16 v1, p33

    .line 802
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object/from16 v1, p34

    .line 803
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v1, p35

    .line 804
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v1, p36

    .line 805
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    move-object/from16 v1, p37

    .line 806
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubblesManagerOptional:Ljava/util/Optional;

    move-object/from16 v1, p38

    .line 807
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubblesOptional:Ljava/util/Optional;

    move-object/from16 v1, p39

    .line 808
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    move-object/from16 v1, p40

    .line 809
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v1, p41

    .line 810
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    move-object/from16 v1, p42

    .line 811
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManagerLazy:Ldagger/Lazy;

    move-object/from16 v1, p43

    .line 812
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v1, p44

    .line 813
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object/from16 v1, p50

    .line 814
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    move-object/from16 v1, p51

    .line 815
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v1, p45

    .line 816
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v1, p46

    .line 817
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v1, p47

    .line 818
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardLiftController:Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    move-object/from16 v1, p48

    .line 819
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaperLazy:Ldagger/Lazy;

    move-object/from16 v1, p52

    .line 820
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    move-object/from16 v1, p53

    .line 821
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    move-object/from16 v1, p49

    .line 822
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    move-object/from16 v1, p75

    .line 823
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeDepthControllerLazy:Ldagger/Lazy;

    move-object/from16 v1, p54

    .line 824
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    move-object/from16 v1, p55

    .line 825
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v1, p56

    .line 826
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarComponentBuilder:Ljavax/inject/Provider;

    move-object/from16 v1, p57

    .line 827
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    move-object/from16 v1, p58

    .line 828
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSplitScreenOptional:Ljava/util/Optional;

    move-object/from16 v1, p60

    .line 829
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarNotificationActivityStarterBuilder:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;

    move-object/from16 v1, p61

    .line 830
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v1, p62

    .line 831
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSuperStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    move-object/from16 v1, p59

    .line 832
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightsOutNotifController:Lcom/android/systemui/statusbar/phone/LightsOutNotifController;

    move-object/from16 v1, p63

    .line 833
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v1, p64

    .line 834
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    move-object/from16 v1, p65

    .line 835
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInitController:Lcom/android/systemui/InitController;

    move-object/from16 v1, p67

    .line 836
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPluginDependencyProvider:Lcom/android/systemui/plugins/PluginDependencyProvider;

    move-object/from16 v1, p68

    .line 837
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    move-object/from16 v1, p69

    .line 838
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

    move-object/from16 v1, p70

    .line 839
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserInfoControllerImpl:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    move-object/from16 v1, p71

    .line 840
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    move-object/from16 v1, p73

    .line 841
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    move-object/from16 v1, p74

    .line 842
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    move-object/from16 v1, p77

    .line 843
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-object/from16 v1, p78

    .line 844
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

    move-object/from16 v1, p79

    .line 845
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    .line 847
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpansionChangedListeners:Ljava/util/List;

    .line 849
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleExpandListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

    .line 857
    new-instance v1, Lcom/android/systemui/ActivityIntentHelper;

    iget-object v2, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/ActivityIntentHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 858
    invoke-static/range {p66 .. p66}, Landroid/widget/DateTimeView;->setReceiverHandler(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isTransientShown()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearTransient()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/ShadeController;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionTimeout()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->finishBarAnimations()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanelController;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 0

    .line 252
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperSupported:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 0

    .line 252
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraWhenFinishedWaking:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    .line 252
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraWhenFinishedWaking:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    .line 252
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 0

    .line 252
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    return p0
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    .line 252
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 0

    .line 252
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchEmergencyActionOnFinishedGoingToSleep:Z

    return p0
.end method

.method static synthetic access$2402(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    .line 252
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchEmergencyActionOnFinishedGoingToSleep:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissVolumeDialog()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBypassHeadsUpNotifier:Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/Context;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/PulseExpansionHandler;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/StatusBar;)I
    .locals 0

    .line 252
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastCameraLaunchSource:I

    return p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 0

    .line 252
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchEmergencyActionWhenFinishedWaking:Z

    return p0
.end method

.method static synthetic access$3202(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    .line 252
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchEmergencyActionWhenFinishedWaking:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/Intent;
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getEmergencyActionIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/Context;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/classifier/FalsingCollector;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/Context;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/Context;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/Context;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/util/Optional;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubblesOptional:Ljava/util/Optional;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/init/NotificationsController;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/os/Handler;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private static barMode(ZI)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    and-int/lit8 p0, p1, 0x5

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    and-int/lit8 p0, p1, 0x4

    if-eqz p0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private clearTransient()V
    .locals 1

    .line 2394
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTransientShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2395
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTransientShown:Z

    .line 2396
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleTransientChanged()V

    :cond_0
    return-void
.end method

.method private dismissVolumeDialog()V
    .locals 0

    .line 2540
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    if-eqz p0, :cond_0

    .line 2541
    invoke-interface {p0}, Lcom/android/systemui/volume/VolumeComponent;->dismissNow()V

    :cond_0
    return-void
.end method

.method private dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    .line 3172
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez p0, :cond_0

    return-void

    .line 3173
    :cond_0
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 3174
    instance-of p3, p0, Lcom/android/systemui/demomode/DemoModeCommandReceiver;

    if-eqz p3, :cond_1

    .line 3175
    check-cast p0, Lcom/android/systemui/demomode/DemoModeCommandReceiver;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/demomode/DemoModeCommandReceiver;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private dispatchDemoModeFinishedToView(I)V
    .locals 0

    .line 3188
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez p0, :cond_0

    return-void

    .line 3189
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 3190
    instance-of p1, p0, Lcom/android/systemui/demomode/DemoModeCommandReceiver;

    if-eqz p1, :cond_1

    .line 3191
    check-cast p0, Lcom/android/systemui/demomode/DemoModeCommandReceiver;

    invoke-interface {p0}, Lcom/android/systemui/demomode/DemoModeCommandReceiver;->onDemoModeFinished()V

    :cond_1
    return-void
.end method

.method private dispatchDemoModeStartedToView(I)V
    .locals 0

    .line 3180
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez p0, :cond_0

    return-void

    .line 3181
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 3182
    instance-of p1, p0, Lcom/android/systemui/demomode/DemoModeCommandReceiver;

    if-eqz p1, :cond_1

    .line 3183
    check-cast p0, Lcom/android/systemui/demomode/DemoModeCommandReceiver;

    invoke-interface {p0}, Lcom/android/systemui/demomode/DemoModeCommandReceiver;->onDemoModeStarted()V

    :cond_1
    return-void
.end method

.method public static dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 1

    const-string v0, "  "

    .line 2659
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ".BarTransitions.mMode="

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2660
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V
    .locals 1

    .line 2865
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2866
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 2868
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private finishBarAnimations()V
    .locals 1

    .line 2518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 2519
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->getBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2520
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->getBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 2522
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/NavigationBarController;->finishBarAnimations(I)V

    return-void
.end method

.method public static getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;
    .locals 0

    .line 4387
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDefaultActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getActivityOptions(Landroid/view/RemoteAnimationAdapter;ZJ)Landroid/os/Bundle;
    .locals 0

    .line 4392
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDefaultActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 4393
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActivityOptions;->setSourceInfo(IJ)V

    .line 4395
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;
    .locals 1

    if-eqz p0, :cond_0

    .line 4402
    invoke-static {p0}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p0

    goto :goto_0

    .line 4404
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    :goto_0
    const/4 v0, 0x4

    .line 4408
    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    return-object p0
.end method

.method private getEmergencyActionIntent()Landroid/content/Intent;
    .locals 3

    .line 4068
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.LAUNCH_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4069
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 4070
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "StatusBar"

    const-string v0, "Couldn\'t find an app to process the emergency intent."

    .line 4072
    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 4075
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 4077
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private static getLoggingFingerprint(IZZZZZ)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x9

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0xa

    or-int/2addr p0, p1

    shl-int/lit8 p1, p4, 0xb

    or-int/2addr p0, p1

    shl-int/lit8 p1, p5, 0xc

    or-int/2addr p0, p1

    return p0
.end method

.method public static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 3

    if-ltz p1, :cond_0

    .line 4481
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4488
    :catch_0
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method private handleStartActivityDismissingKeyguard(Landroid/content/Intent;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 3116
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method private handleTransientChanged()V
    .locals 2

    .line 2401
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTransientShown:Z

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAppearance:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->barMode(ZI)I

    move-result v0

    .line 2402
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateBarMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2403
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/LightBarController;->onStatusBarModeChanged(I)V

    .line 2404
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateBubblesVisibility()V

    :cond_0
    return-void
.end method

.method private inflateShelf()V
    .locals 2

    .line 1424
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSuperStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1425
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->getNotificationShelfController(Landroid/view/ViewGroup;)Lcom/android/systemui/statusbar/NotificationShelfController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    .line 1426
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationShelfController;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private inflateStatusBarWindow()V
    .locals 3

    .line 1472
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSuperStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    .line 1473
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarComponentBuilder:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    .line 1474
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;->statusBarWindowView(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;->build()Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent;

    move-result-object v0

    .line 1476
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent;->getNotificationShadeWindowViewController()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 1477
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setNotificationShadeView(Landroid/view/ViewGroup;)V

    .line 1478
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setupExpandedStatusBar()V

    .line 1479
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent;->getStatusBarWindowController()Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 1480
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSuperStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->getStatusBarWindowView()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPhoneStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 1481
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 1482
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent;->getLockscreenLockIconController()Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    .line 1483
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 1485
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    .line 1486
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda35;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    .line 1485
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setLaunchAffordanceListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private isGoingToSleep()Z
    .locals 1

    .line 4096
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTransientShown()Z
    .locals 0

    .line 4523
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTransientShown:Z

    return p0
.end method

.method private isWakingUpOrAwake()Z
    .locals 3

    .line 4101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 4102
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static synthetic lambda$appTransitionCancelled$29(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 0

    .line 3955
    invoke-interface {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->onAppTransitionFinished()V

    return-void
.end method

.method private static synthetic lambda$appTransitionFinished$30(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 0

    .line 3962
    invoke-interface {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->onAppTransitionFinished()V

    return-void
.end method

.method private synthetic lambda$awakenDreams$31()V
    .locals 0

    .line 4268
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4270
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$executeActionDismissingKeyguard$32(Ljava/lang/Runnable;)V
    .locals 1

    .line 4333
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4336
    :catch_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$executeActionDismissingKeyguard$33(Ljava/lang/Runnable;)Z
    .locals 2

    .line 4327
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda34;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda34;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4337
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4339
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$executeRunnableDismissingKeyguard$19(Ljava/lang/Runnable;ZZ)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 2778
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 2779
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2780
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2782
    :cond_0
    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 2786
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-nez p1, :cond_2

    .line 2787
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 p1, 0x2

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2, p2}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZZ)V

    goto :goto_1

    .line 2792
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/statusbar/phone/ShadeController;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2794
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 2795
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isLaunchTransitionFinished()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2800
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda33;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda33;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return p3
.end method

.method private synthetic lambda$fadeKeyguardAfterLaunchTransition$27(Ljava/lang/Runnable;)V
    .locals 14

    .line 3299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->setLaunchTransitionFadingAway(Z)V

    if-eqz p1, :cond_0

    .line 3301
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3303
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 3304
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateMediaMetaData(ZZ)V

    .line 3305
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setAlpha(F)V

    .line 3306
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x12c

    new-instance v6, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda14;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->fadeOut(JJLjava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 3309
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x78

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(IJJZ)V

    return-void
.end method

.method private synthetic lambda$fadeKeyguardWhilePulsing$28()V
    .locals 0

    .line 3326
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    .line 3327
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onKeyguardFadedAway()V

    return-void
.end method

.method private synthetic lambda$getStatusBarWindowTouchListener$10(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1412
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/AutoHideController;->checkUserAutoHide(Landroid/view/MotionEvent;)V

    .line 1413
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->checkRemoteInputOutside(Landroid/view/MotionEvent;)V

    .line 1414
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 1415
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz p1, :cond_0

    .line 1416
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels()V

    .line 1419
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$handleVisibleToUserChangedImpl$20(ZI)V
    .locals 0

    .line 2994
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$handleVisibleToUserChangedImpl$21()V
    .locals 0

    .line 3003
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelHidden()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$makeStatusBarView$4(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 11

    .line 1080
    check-cast p2, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    .line 1083
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 1084
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 1085
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1086
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->setPanel(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    .line 1087
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 1088
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpansionChangedListeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setExpansionChangedListeners(Ljava/util/List;)V

    .line 1090
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->initNotificationIconArea(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    .line 1098
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1099
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    .line 1101
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->setBouncerShowing(Z)V

    if-eqz p1, :cond_1

    .line 1103
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->getExpansionFraction()F

    move-result p2

    .line 1104
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->isExpanded()Z

    move-result p1

    .line 1105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, p2, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->panelExpansionChanged(FZ)V

    .line 1108
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    if-eqz p1, :cond_2

    .line 1111
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->destroy()V

    .line 1115
    :cond_2
    new-instance p2, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1117
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getController()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object v0, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 1121
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->readFrom(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    .line 1123
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightsOutNotifController:Lcom/android/systemui/statusbar/phone/LightsOutNotifController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v0, Lcom/android/systemui/R$id;->notification_lights_out:I

    .line 1124
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 1123
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->setLightsOutNotifView(Landroid/view/View;)V

    .line 1125
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setStatusBarView(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    .line 1126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    return-void
.end method

.method private synthetic lambda$makeStatusBarView$5(Ljava/lang/Integer;)V
    .locals 2

    .line 1180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setScrimsVisibility(I)V

    .line 1181
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->onScrimVisibilityChanged(Ljava/lang/Integer;)V

    return-void
.end method

.method private static synthetic lambda$makeStatusBarView$6(FLcom/android/systemui/statusbar/BackDropView;F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1204
    invoke-static {p0, v0, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    .line 1205
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 1206
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 1207
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1208
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$makeStatusBarView$7(Ljava/lang/Boolean;)V
    .locals 0

    .line 1229
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorVisible:Z

    .line 1230
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    return-void
.end method

.method private synthetic lambda$makeStatusBarView$8(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    .line 1233
    check-cast p2, Lcom/android/systemui/plugins/qs/QS;

    .line 1234
    instance-of p1, p2, Lcom/android/systemui/qs/QSFragment;

    if-eqz p1, :cond_0

    .line 1235
    check-cast p2, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {p2}, Lcom/android/systemui/qs/QSFragment;->getQSPanelController()Lcom/android/systemui/qs/QSPanelController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 1236
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSPanelController;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$makeStatusBarView$9(Landroid/view/View;)V
    .locals 4

    .line 1246
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->reportRejectedTouch()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1249
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const-string v1, "Build info: "

    .line 1250
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string v1, "ro.build.description"

    .line 1251
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string v1, "\nSerial number: "

    .line 1252
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string v1, "ro.serialno"

    .line 1253
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 1254
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1256
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "*/*"

    .line 1257
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.SUBJECT"

    const-string v3, "Rejected touch report"

    .line 1258
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    .line 1259
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 1260
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Share rejected touch report"

    .line 1256
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 1262
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 1256
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method private static synthetic lambda$maybeEscalateHeadsUp$14(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 2039
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 2040
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 2041
    iget-object v2, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    const v2, 0x8ca3

    .line 2047
    :try_start_0
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 2046
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2048
    iget-object v0, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    .line 2049
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notifyFullScreenIntentLaunched()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 3

    .line 639
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 640
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "SHADE_CLICK"

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 641
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->goToLockedShade(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    .line 852
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    const-string v1, "onBubbleExpandChanged"

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->requestNotificationUpdate(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    return-void
.end method

.method private synthetic lambda$new$2(ZLjava/lang/String;)V
    .locals 0

    .line 851
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda21;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda21;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$22()V
    .locals 2

    .line 3090
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    const-string v0, "StatusBar"

    const-string v1, "stopTracing"

    .line 3091
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->vibrate()V

    return-void
.end method

.method private synthetic lambda$onHeadsUpPinnedModeChanged$11()V
    .locals 1

    .line 1810
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setForceWindowCollapsed(Z)V

    return-void
.end method

.method private synthetic lambda$onHeadsUpPinnedModeChanged$12()V
    .locals 2

    .line 1829
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setHeadsUpShowing(Z)V

    .line 1831
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setHeadsUpGoingAway(Z)V

    .line 1833
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->onPanelCollapsed()V

    return-void
.end method

.method private synthetic lambda$postAnimateForceCollapsePanels$15()V
    .locals 2

    .line 2132
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZ)V

    return-void
.end method

.method private synthetic lambda$postQSRunnableDismissingKeyguard$23(Ljava/lang/Runnable;)V
    .locals 0

    .line 3099
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$postQSRunnableDismissingKeyguard$24(Ljava/lang/Runnable;)V
    .locals 8

    .line 3098
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    .line 3099
    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda29;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda29;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method private synthetic lambda$postStartActivityDismissingKeyguard$25(Landroid/app/PendingIntent;)V
    .locals 0

    .line 3106
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private synthetic lambda$postStartActivityDismissingKeyguard$26(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    .line 3112
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleStartActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    return-void
.end method

.method private synthetic lambda$start$3(II)V
    .locals 0

    .line 1000
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setUpDisableFlags(II)V

    return-void
.end method

.method private synthetic lambda$startActivityDismissingKeyguard$17(Landroid/content/Intent;IZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v13, p4

    .line 2715
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v1}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    const/high16 v1, 0x14000000

    .line 2716
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2718
    invoke-virtual/range {p1 .. p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2720
    new-instance v1, Landroid/app/ActivityOptions;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    move/from16 v2, p3

    .line 2722
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    .line 2724
    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v4, v2, :cond_0

    const/4 v2, 0x3

    .line 2733
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setRotationAnimationHint(I)V

    .line 2736
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.settings.panel.action.VOLUME"

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    .line 2742
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    .line 2745
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v5, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 2746
    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 2748
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x10000000

    const/4 v12, 0x0

    .line 2750
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v14

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    move-object v0, v2

    move-object v1, v3

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v4, p1

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move v8, v10

    move v9, v11

    move-object v10, v12

    move-object v11, v14

    move v12, v15

    .line 2745
    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatusBar"

    const-string v2, "Unable to start activity"

    .line 2752
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, -0x60

    :goto_0
    if-eqz v13, :cond_2

    .line 2755
    invoke-interface {v13, v0}, Lcom/android/systemui/plugins/ActivityStarter$Callback;->onActivityStarted(I)V

    :cond_2
    return-void
.end method

.method private static synthetic lambda$startActivityDismissingKeyguard$18(Lcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, -0x60

    .line 2760
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ActivityStarter$Callback;->onActivityStarted(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startPendingIntentDismissingKeyguard$34(Landroid/app/PendingIntent;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4364
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 4365
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOccluded()Z

    move-result v7

    invoke-virtual {v0, p2, v7}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->getLaunchAnimation(Landroid/view/View;Z)Landroid/view/RemoteAnimationAdapter;

    move-result-object p2

    .line 4364
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    move-result-object v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 4369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending intent failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "StatusBar"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4373
    :goto_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4374
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    :cond_0
    if-eqz p3, :cond_1

    .line 4377
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$updateHideIconsForBouncer$13()V
    .locals 2

    const/4 v0, 0x0

    .line 1939
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    .line 1940
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    return-void
.end method

.method private logStateToEventlog()V
    .locals 12

    .line 3013
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    .line 3014
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v7

    .line 3015
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v8

    .line 3016
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v9

    .line 3017
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v10

    .line 3018
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    move v2, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->getLoggingFingerprint(IZZZZZ)I

    move-result v11

    .line 3024
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastLoggedStateFingerprint:I

    if-eq v11, v1, :cond_6

    .line 3025
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    if-nez v1, :cond_0

    .line 3026
    new-instance v1, Landroid/metrics/LogMaker;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    .line 3028
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    if-eqz v8, :cond_1

    const/16 v3, 0xc5

    goto :goto_0

    :cond_1
    const/16 v3, 0xc4

    .line 3029
    :goto_0
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v2

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    .line 3030
    :goto_1
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 3031
    invoke-virtual {v2, v9}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 3028
    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3032
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    move v2, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/EventLogTags;->writeSysuiStatusBarState(IIIIII)V

    .line 3038
    iput v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastLoggedStateFingerprint:I

    .line 3040
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_3

    const-string v1, "BOUNCER"

    goto :goto_2

    :cond_3
    const-string v1, "LOCKSCREEN"

    .line 3041
    :goto_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    const-string v0, "_OPEN"

    goto :goto_3

    :cond_4
    const-string v0, "_CLOSE"

    .line 3042
    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_5

    const-string v0, "_SECURE"

    goto :goto_4

    :cond_5
    const-string v0, "_INSECURE"

    .line 3043
    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3044
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarUiEvent;->valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarUiEvent;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_6
    return-void
.end method

.method private onLaunchTransitionFadingEnded()V
    .locals 2

    .line 3274
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setAlpha(F)V

    .line 3275
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onAffordanceLaunchEnded()V

    .line 3276
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 3277
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runLaunchTransitionEndRunnable()V

    .line 3278
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->setLaunchTransitionFadingAway(Z)V

    .line 3279
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateMediaMetaData(ZZ)V

    return-void
.end method

.method private onLaunchTransitionTimeout()V
    .locals 2

    const-string v0, "StatusBar"

    const-string v1, "Launch transition: Timeout!"

    .line 3350
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onAffordanceLaunchEnded()V

    .line 3352
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 3353
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetViews(Z)V

    return-void
.end method

.method private postOnUiThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 4383
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private releaseGestureWakeLock()V
    .locals 1

    .line 3416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3417
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private runLaunchTransitionEndRunnable()V
    .locals 2

    .line 3357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3362
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 3363
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private setUpPresenter()V
    .locals 24

    move-object/from16 v14, p0

    move-object/from16 v19, p0

    .line 1335
    new-instance v7, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    move-object v15, v7

    iget-object v1, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    iget-object v3, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeDepthControllerLazy:Ldagger/Lazy;

    .line 1337
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object v0, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1338
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getNotificationListContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    move-result-object v5

    iget-object v0, v14, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 1339
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    move-object v0, v7

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Ljava/util/concurrent/Executor;)V

    iput-object v7, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 1342
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    move-object v7, v0

    iget-object v8, v14, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v9, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v10, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v11, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    iget-object v12, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v13, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object v1, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object v2, v14

    move-object v14, v1

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    move-object/from16 v16, v1

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v17, v1

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-object/from16 v18, v1

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v20, v1

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v21, v1

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mInitController:Lcom/android/systemui/InitController;

    move-object/from16 v22, v1

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    move-object/from16 v23, v1

    invoke-direct/range {v7 .. v23}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/InitController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;)V

    iput-object v0, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 1350
    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationShelfController;->setOnActivatedListener(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    .line 1351
    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v0

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/RemoteInputController;->addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    .line 1353
    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarNotificationActivityStarterBuilder:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;

    .line 1355
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;

    move-result-object v0

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 1356
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;->setActivityLaunchAnimator(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;

    move-result-object v0

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 1357
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;->setNotificationPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;

    move-result-object v0

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 1358
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;->setNotificationPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;

    move-result-object v0

    .line 1359
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;->build()Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    move-result-object v0

    iput-object v0, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    .line 1360
    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setNotificationActivityStarter(Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V

    .line 1361
    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->setNotificationActivityStarter(Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V

    .line 1363
    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubblesOptional:Ljava/util/Optional;

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1367
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getNotificationListContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    move-result-object v5

    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    iget-object v7, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .line 1363
    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->initialize(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/Optional;Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;)V

    return-void
.end method

.method private showBouncerIfKeyguard()V
    .locals 3

    .line 3574
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 3575
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3576
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    :cond_1
    return-void
.end method

.method private showTransientUnchecked()V
    .locals 1

    .line 2375
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTransientShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2376
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTransientShown:Z

    .line 2377
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    .line 2378
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleTransientChanged()V

    :cond_0
    return-void
.end method

.method private updateBarMode(I)Z
    .locals 1

    .line 2409
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    if-eq v0, p1, :cond_0

    .line 2410
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    .line 2411
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 2412
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateBubblesVisibility()V
    .locals 3

    .line 2502
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubblesOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubblesOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/bubbles/Bubbles;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowHidden:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/android/wm/shell/bubbles/Bubbles;->onStatusBarVisibilityChanged(Z)V

    :cond_1
    return-void
.end method

.method private updateDozingState()V
    .locals 5

    .line 3474
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    const-wide/16 v1, 0x1000

    const-string v3, "dozing"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-string v0, "StatusBar#updateDozingState"

    .line 3475
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3477
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 3478
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3479
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 3481
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->shouldAnimateWakeup()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 3482
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->shouldAnimateScreenOff()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    .line 3484
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setDozing(ZZLandroid/graphics/PointF;)V

    .line 3485
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    .line 3486
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private updateHideIconsForBouncer(Z)V
    .locals 4

    .line 1928
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTopHidesStatusBar:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowHidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1930
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    .line 1932
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideIconsForBouncer:Z

    if-eq v0, v1, :cond_6

    .line 1933
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideIconsForBouncer:Z

    if-nez v1, :cond_5

    .line 1934
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerWasShowingWhenHidden:Z

    if-eqz v0, :cond_5

    .line 1937
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    .line 1938
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda23;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 1943
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 1947
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerWasShowingWhenHidden:Z

    :cond_7
    return-void
.end method

.method private updateKeyguardState()V
    .locals 2

    .line 3659
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 3660
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result p0

    .line 3659
    invoke-interface {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->notifyKeyguardState(ZZ)V

    return-void
.end method

.method private updatePanelExpansionForKeyguard()V
    .locals 2

    .line 3265
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-nez v0, :cond_0

    .line 3267
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->instantExpandNotificationsPanel()V

    goto :goto_0

    .line 3268
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3269
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateQsExpansionEnabled()V
    .locals 3

    .line 1596
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v0, :cond_0

    .line 1598
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ONLY_CORE_APPS:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1603
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansionEnabled(Z)V

    .line 1604
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateQsExpansionEnabled - QS Expand enabled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StatusBar"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateReportRejectedTouchVisibility()V
    .locals 3

    .line 1641
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1645
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {p0}, Lcom/android/systemui/classifier/FalsingCollector;->isReportingEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    .line 1644
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private vibrateForCameraGesture()V
    .locals 2

    .line 3927
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrator:Landroid/os/Vibrator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraLaunchGestureVibePattern:[J

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method

.method public static viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .line 2546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2547
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abortTransient(I[I)V
    .locals 1

    .line 2384
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2387
    invoke-static {p2, p1}, Landroid/view/InsetsState;->containsType([II)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2390
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearTransient()V

    return-void
.end method

.method public addExpansionChangedListener(Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;)V
    .locals 0

    .line 4532
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpansionChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 1

    .line 1608
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelController;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1609
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelController;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->addTile(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public animateCollapsePanels(IZ)V
    .locals 2

    .line 2151
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZZF)V

    return-void
.end method

.method public animateCollapseQuickSettings()V
    .locals 3

    .line 2220
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v0, :cond_0

    .line 2221
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapsePanel(ZZF)V

    :cond_0
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 1

    .line 2192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2196
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expandWithoutQs()V

    return-void
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 1

    .line 2204
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2209
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 2212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanelController;->openDetails(Ljava/lang/String;)V

    .line 2214
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expandWithQs()V

    return-void
.end method

.method public animateKeyguardUnoccluding()V
    .locals 2

    .line 3335
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedFraction(F)V

    .line 3336
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    return-void
.end method

.method public appTransitionCancelled(I)V
    .locals 1

    .line 3954
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    if-ne p1, v0, :cond_0

    .line 3955
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSplitScreenOptional:Ljava/util/Optional;

    sget-object p1, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda40;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda40;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public appTransitionFinished(I)V
    .locals 1

    .line 3961
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    if-ne p1, v0, :cond_0

    .line 3962
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSplitScreenOptional:Ljava/util/Optional;

    sget-object p1, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda39;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda39;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public areLaunchAnimationsEnabled()Z
    .locals 0

    .line 1986
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method areNotificationAlertsDisabled()Z
    .locals 1

    .line 1737
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public awakenDreams()V
    .locals 2

    .line 4266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda22;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    .line 4285
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3ff

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4286
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 1

    .line 2512
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    if-eq p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2514
    :goto_0
    invoke-virtual {p3, p1, p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    return-void
.end method

.method public checkBarModes()V
    .locals 3

    .line 2487
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    invoke-virtual {v0}, Lcom/android/systemui/demomode/DemoModeController;->isInDemoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2488
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2489
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 2491
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarController;->checkNavBarModes(I)V

    const/4 v0, 0x0

    .line 2492
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    return-void
.end method

.method public clearNotificationEffects()V
    .locals 0

    .line 4437
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->clearNotificationEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 0

    .line 1620
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->clickTile(Landroid/content/ComponentName;)V

    return-void
.end method

.method public collapseShade()V
    .locals 1

    .line 3793
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3794
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->cancelCurrentTouch()V

    .line 3796
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v0, :cond_1

    .line 3797
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels()V

    :cond_1
    return-void
.end method

.method public createAndAddWindows(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .locals 0

    .line 2664
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeStatusBarView(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    .line 2665
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->attach()V

    .line 2666
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->attach()V

    return-void
.end method

.method protected createDefaultQSFragment()Lcom/android/systemui/plugins/qs/QS;
    .locals 1

    .line 1330
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p0

    const-class v0, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QS;

    return-object p0
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/phone/StatusBar$H;
    .locals 1

    .line 1741
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0
.end method

.method protected createNavigationBar(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .locals 1

    .line 1403
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/navigationbar/NavigationBarController;->createNavigationBars(ZLcom/android/internal/statusbar/RegisterStatusBarResult;)V

    return-void
.end method

.method public demoCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3121
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "bars"

    .line 3122
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "clock"

    .line 3123
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "operator"

    .line 3124
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public disable(IIIZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1653
    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    move/from16 v3, p1

    if-eq v3, v2, :cond_0

    return-void

    .line 1656
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->adjustDisableFlags(I)I

    move-result v2

    .line 1659
    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    xor-int/2addr v3, v1

    .line 1661
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    .line 1663
    iget v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    xor-int/2addr v4, v2

    .line 1665
    iput v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    .line 1674
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable<"

    .line 1675
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v6, 0x10000

    and-int v7, v1, v6

    if-eqz v7, :cond_1

    const/16 v8, 0x45

    goto :goto_0

    :cond_1
    const/16 v8, 0x65

    .line 1676
    :goto_0
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v6, v3

    if-eqz v6, :cond_2

    const/16 v10, 0x21

    goto :goto_1

    :cond_2
    const/16 v10, 0x20

    .line 1677
    :goto_1
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v10, 0x20000

    and-int v11, v1, v10

    const/16 v12, 0x49

    const/16 v13, 0x69

    if-eqz v11, :cond_3

    move v11, v12

    goto :goto_2

    :cond_3
    move v11, v13

    .line 1678
    :goto_2
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v10, v3

    if-eqz v10, :cond_4

    const/16 v10, 0x21

    goto :goto_3

    :cond_4
    const/16 v10, 0x20

    .line 1679
    :goto_3
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v10, 0x40000

    and-int v11, v1, v10

    if-eqz v11, :cond_5

    const/16 v11, 0x41

    goto :goto_4

    :cond_5
    const/16 v11, 0x61

    .line 1680
    :goto_4
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v10, v3

    if-eqz v10, :cond_6

    const/16 v11, 0x21

    goto :goto_5

    :cond_6
    const/16 v11, 0x20

    .line 1681
    :goto_5
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v11, 0x100000

    and-int v14, v1, v11

    const/16 v15, 0x53

    const/16 v16, 0x73

    if-eqz v14, :cond_7

    move v14, v15

    goto :goto_6

    :cond_7
    move/from16 v14, v16

    .line 1682
    :goto_6
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v11, v3

    if-eqz v11, :cond_8

    const/16 v11, 0x21

    goto :goto_7

    :cond_8
    const/16 v11, 0x20

    .line 1683
    :goto_7
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v11, 0x400000

    and-int v14, v1, v11

    if-eqz v14, :cond_9

    const/16 v14, 0x42

    goto :goto_8

    :cond_9
    const/16 v14, 0x62

    .line 1684
    :goto_8
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v11, v3

    if-eqz v11, :cond_a

    const/16 v11, 0x21

    goto :goto_9

    :cond_a
    const/16 v11, 0x20

    .line 1685
    :goto_9
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v11, 0x200000

    and-int v14, v1, v11

    if-eqz v14, :cond_b

    const/16 v14, 0x48

    goto :goto_a

    :cond_b
    const/16 v14, 0x68

    .line 1686
    :goto_a
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v11, v3

    if-eqz v11, :cond_c

    const/16 v11, 0x21

    goto :goto_b

    :cond_c
    const/16 v11, 0x20

    .line 1687
    :goto_b
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v11, 0x1000000

    and-int v14, v1, v11

    if-eqz v14, :cond_d

    const/16 v17, 0x52

    goto :goto_c

    :cond_d
    const/16 v17, 0x72

    :goto_c
    move/from16 v8, v17

    .line 1688
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int v8, v3, v11

    if-eqz v8, :cond_e

    const/16 v11, 0x21

    goto :goto_d

    :cond_e
    const/16 v11, 0x20

    .line 1689
    :goto_d
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v11, 0x800000

    and-int v17, v1, v11

    if-eqz v17, :cond_f

    const/16 v17, 0x43

    goto :goto_e

    :cond_f
    const/16 v17, 0x63

    :goto_e
    move/from16 v9, v17

    .line 1690
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int v9, v3, v11

    if-eqz v9, :cond_10

    const/16 v9, 0x21

    goto :goto_f

    :cond_10
    const/16 v9, 0x20

    .line 1691
    :goto_f
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v9, 0x2000000

    and-int/2addr v1, v9

    if-eqz v1, :cond_11

    goto :goto_10

    :cond_11
    move/from16 v15, v16

    .line 1692
    :goto_10
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int v1, v3, v9

    if-eqz v1, :cond_12

    const/16 v1, 0x21

    goto :goto_11

    :cond_12
    const/16 v1, 0x20

    .line 1693
    :goto_11
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "> disable2<"

    .line 1694
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_13

    const/16 v1, 0x51

    goto :goto_12

    :cond_13
    const/16 v1, 0x71

    .line 1695
    :goto_12
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v1, v4, 0x1

    if-eqz v1, :cond_14

    const/16 v3, 0x21

    goto :goto_13

    :cond_14
    const/16 v3, 0x20

    .line 1696
    :goto_13
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_15

    goto :goto_14

    :cond_15
    move v12, v13

    .line 1697
    :goto_14
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v4, 0x2

    if-eqz v3, :cond_16

    const/16 v3, 0x21

    goto :goto_15

    :cond_16
    const/16 v3, 0x20

    .line 1698
    :goto_15
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_17

    const/16 v3, 0x4e

    goto :goto_16

    :cond_17
    const/16 v3, 0x6e

    .line 1699
    :goto_16
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v4, 0x4

    if-eqz v3, :cond_18

    const/16 v4, 0x21

    goto :goto_17

    :cond_18
    const/16 v4, 0x20

    .line 1700
    :goto_17
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0x3e

    .line 1701
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1702
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StatusBar"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_19

    if-eqz v7, :cond_19

    .line 1706
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels()V

    :cond_19
    if-eqz v8, :cond_1a

    if-eqz v14, :cond_1a

    .line 1713
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v5, 0x3fc

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1714
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1a
    if-eqz v10, :cond_1b

    .line 1719
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->areNotificationAlertsDisabled()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1720
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    :cond_1b
    if-eqz v1, :cond_1c

    .line 1725
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    :cond_1c
    if-eqz v3, :cond_1d

    .line 1729
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    if-eqz v2, :cond_1d

    .line 1731
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels()V

    :cond_1d
    return-void
.end method

.method protected dismissKeyboardShortcuts()V
    .locals 0

    .line 4320
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 2

    .line 4292
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x403

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4293
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V
    .locals 2

    .line 2878
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2879
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 2880
    invoke-interface {v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 2881
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->isPulsing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2884
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(I)V

    .line 2887
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2888
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    goto :goto_0

    .line 2891
    :cond_1
    invoke-interface {p1}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    :goto_0
    return-void
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2872
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "clock"

    .line 3144
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3145
    sget v0, Lcom/android/systemui/R$id;->clock:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    :cond_0
    const-string v0, "bars"

    .line 3147
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "mode"

    .line 3148
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "opaque"

    .line 3149
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const-string v1, "translucent"

    .line 3150
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "semi-transparent"

    .line 3151
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const-string v1, "transparent"

    .line 3152
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "warning"

    .line 3153
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    move v0, v3

    :goto_0
    if-eq v0, v3, :cond_7

    .line 3157
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 3158
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->getBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 3159
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->getBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 3162
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/systemui/navigationbar/NavigationBarController;->transitionTo(IIZ)V

    :cond_7
    const-string v0, "operator"

    .line 3165
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3166
    sget v0, Lcom/android/systemui/R$id;->operator_name:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    :cond_8
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 3507
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3509
    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 3510
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dispatchBackKeyEventPreIme()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3511
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onBackPressed()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 2552
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Current Status Bar state:"

    .line 2553
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayMetrics="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStackScroller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStackScroller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2558
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2559
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2557
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2560
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "  mInteractingWindows="

    .line 2562
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mStatusBarWindowState="

    .line 2563
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2564
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mStatusBarMode="

    .line 2565
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2566
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mDozing="

    .line 2567
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mWallpaperSupported= "

    .line 2568
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  StatusBarWindowView: "

    .line 2570
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2571
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    if-eqz v0, :cond_0

    .line 2572
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v0, "PhoneStatusBarTransitions"

    .line 2573
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 2574
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->getBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    move-result-object v1

    .line 2573
    invoke-static {p2, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    :cond_0
    const-string v0, "  mMediaManager: "

    .line 2577
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2578
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz v0, :cond_1

    .line 2579
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationMediaManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    const-string v0, "  Panels: "

    .line 2582
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2583
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz v0, :cond_2

    .line 2584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mNotificationPanel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 2585
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 2586
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2584
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      "

    .line 2587
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2588
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_2
    const-string v0, "  mStackScroller: "

    .line 2590
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    instance-of v0, v0, Lcom/android/systemui/Dumpable;

    if-eqz v0, :cond_3

    const-string v0, "      "

    .line 2592
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2593
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_3
    const-string v0, "  Theme:"

    .line 2595
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2596
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiModeManager:Landroid/app/UiModeManager;

    if-nez v0, :cond_4

    const-string v0, "null"

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2597
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    dark theme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (auto: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", yes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", no: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2601
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    sget v3, Lcom/android/systemui/R$style;->Theme_SystemUI_Light:I

    if-ne v1, v3, :cond_5

    move v0, v2

    .line 2602
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    light wallpaper theme: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2604
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-eqz v0, :cond_6

    .line 2605
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2608
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-eqz v0, :cond_7

    .line 2609
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2612
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_8

    .line 2613
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dump(Ljava/io/PrintWriter;)V

    .line 2616
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    invoke-interface {v0, p1, p2, p3, v2}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 2636
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    if-eqz v0, :cond_9

    .line 2637
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v0, "  mHeadsUpManager: null"

    .line 2639
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2642
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    if-eqz v0, :cond_a

    .line 2643
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string v0, "  mStatusBarTouchableRegionManager: null"

    .line 2645
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2648
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v0, :cond_b

    .line 2649
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_b
    const-string p1, "SharedPreferences:"

    .line 2652
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2653
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/Prefs;->getAll(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    const-string p3, "  "

    .line 2654
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    :cond_c
    return-void

    :catchall_0
    move-exception p0

    .line 2560
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public endAffordanceLaunch()V
    .locals 0

    .line 3532
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 3533
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onAffordanceLaunchEnded()V

    return-void
.end method

.method public executeActionDismissingKeyguard(Ljava/lang/Runnable;Z)V
    .locals 1

    .line 4324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4326
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V

    return-void
.end method

.method public executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V
    .locals 1

    .line 2776
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p3, p5}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;ZZ)V

    invoke-virtual {p0, v0, p2, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 3296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3297
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 3298
    new-instance p2, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda30;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda30;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    .line 3312
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isLaunchTransitionRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3313
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3315
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public fadeKeyguardWhilePulsing()V
    .locals 6

    .line 3324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda19;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda19;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x60

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->fadeOut(JJLjava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 3328
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public finishKeyguardFadingAway()V
    .locals 1

    .line 3454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->notifyKeyguardDoneFading()V

    .line 3455
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setExpansionAffectsAlpha(Z)V

    return-void
.end method

.method public getAmbientIndicationContainer()Landroid/view/View;
    .locals 0

    .line 1894
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    return-object p0
.end method

.method protected getBouncerContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 1554
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    return-object p0
.end method

.method getDisplayDensity()F
    .locals 0

    .line 2680
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return p0
.end method

.method getDisplayHeight()F
    .locals 0

    .line 2688
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p0, p0

    return p0
.end method

.method getDisplayWidth()F
    .locals 0

    .line 2684
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    return p0
.end method

.method public getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;
    .locals 0

    .line 2312
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    return-object p0
.end method

.method public getGutsManager()Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;
    .locals 0

    .line 4519
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    return-object p0
.end method

.method public getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .locals 0

    .line 3719
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object p0

    return-object p0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 1304
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;
    .locals 1

    .line 3711
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationScrollLayout()Landroid/view/ViewGroup;
    .locals 0

    .line 1876
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-object p0
.end method

.method public getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;
    .locals 0

    .line 1542
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    return-object p0
.end method

.method public getNotificationShadeWindowViewController()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;
    .locals 0

    .line 1550
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    return-object p0
.end method

.method public getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .locals 0

    .line 4509
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-object p0
.end method

.method public getPresenter()Lcom/android/systemui/statusbar/NotificationPresenter;
    .locals 0

    .line 1994
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    return-object p0
.end method

.method getRotation()I
    .locals 0

    .line 2692
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method protected getStatusBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 0

    .line 2483
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->getBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    move-result-object p0

    return-object p0
.end method

.method protected getStatusBarView()Landroid/view/View;
    .locals 0

    .line 1538
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object p0
.end method

.method protected getStatusBarWindowTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 1411
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0
.end method

.method public getWakefulnessState()I
    .locals 0

    .line 3922
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result p0

    return p0
.end method

.method goToLockedShade(Landroid/view/View;)V
    .locals 6

    .line 3730
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-void

    .line 3734
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v0

    .line 3737
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 3738
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    .line 3739
    invoke-virtual {p1, v3, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setUserExpanded(ZZ)V

    .line 3742
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setGroupExpansionChanging(Z)V

    .line 3743
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    goto :goto_0

    :cond_1
    move-object p1, v2

    .line 3745
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 3746
    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 3747
    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowLockscreenNotifications()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 3748
    invoke-interface {v1}, Lcom/android/systemui/classifier/FalsingCollector;->shouldEnforceBouncer()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v3

    .line 3749
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move v4, v1

    .line 3752
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 3753
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    .line 3754
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncerIfKeyguard()V

    .line 3755
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 3756
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    goto :goto_4

    .line 3758
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateToFullShade(J)V

    .line 3759
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    :goto_4
    return-void
.end method

.method handlePeekToExpandTransistion()V
    .locals 2

    .line 2969
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->getActiveNotificationsCount()I

    move-result v0

    .line 2970
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public handleSystemKey(I)V
    .locals 3

    .line 2064
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2065
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2070
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x118

    const/4 v1, 0x0

    if-ne v0, p1, :cond_2

    .line 2073
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x1ed

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 2074
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->collapse(ZF)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x119

    if-ne v0, p1, :cond_5

    .line 2077
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x1ee

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 2078
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 2079
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrateOnOpening:Z

    if-eqz p1, :cond_3

    .line 2080
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    .line 2082
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expand(Z)V

    .line 2083
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setWillExpand(Z)V

    .line 2084
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll(Z)V

    .line 2085
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string p1, "panel_open"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    goto :goto_0

    .line 2086
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInSettings()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 2087
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isExpanding()Z

    move-result p1

    if-nez p1, :cond_5

    .line 2088
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    .line 2090
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string p1, "panel_open_qs"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected handleVisibleToUserChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2957
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChangedImpl(Z)V

    .line 2958
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->startNotificationLogging()V

    goto :goto_0

    .line 2960
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->stopNotificationLogging()V

    .line 2961
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChangedImpl(Z)V

    :goto_0
    return-void
.end method

.method handleVisibleToUserChangedImpl(Z)V
    .locals 3

    if-eqz p1, :cond_3

    .line 2982
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p1

    .line 2983
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 2984
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2987
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->getActiveNotificationsCount()I

    move-result v2

    if-eqz p1, :cond_2

    .line 2988
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 2992
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda32;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda32;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;ZI)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 3001
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda18;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method public headsUpShouldBeVisible()Z
    .locals 0

    .line 1952
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    move-result p0

    return p0
.end method

.method public hideKeyguard()Z
    .locals 2

    .line 3204
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setKeyguardRequested(Z)V

    .line 3205
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    move-result p0

    return p0
.end method

.method public hideKeyguardImpl()Z
    .locals 5

    const/4 v0, 0x0

    .line 3371
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    const-string v1, "StatusBar#hideKeyguard"

    .line 3372
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3373
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result v1

    .line 3374
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3379
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->updatePublicMode()V

    .line 3381
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3382
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->isKeyguardRequested()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3383
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    .line 3385
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->calculateGoingToFullShadeDelay()J

    move-result-wide v2

    .line 3386
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateToFullShade(J)V

    .line 3387
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v4, :cond_2

    .line 3388
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setUserLocked(Z)V

    const/4 v0, 0x0

    .line 3389
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 3394
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/navigationbar/NavigationBarController;->disableAnimationsDuringHide(IJ)V

    goto :goto_0

    .line 3395
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3396
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    .line 3401
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    if-eqz v0, :cond_5

    .line 3402
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelController;->refreshAllTiles()V

    .line 3404
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3405
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 3406
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onAffordanceLaunchEnded()V

    .line 3407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->cancelAnimation()V

    .line 3408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setAlpha(F)V

    .line 3409
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetViewGroupFade()V

    .line 3410
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 3411
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v1
.end method

.method public hideStatusBarIconsForBouncer()Z
    .locals 1

    .line 1914
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideIconsForBouncer:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hideStatusBarIconsWhenExpanded()Z
    .locals 0

    .line 1884
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->hideStatusBarIconsWhenExpanded()Z

    move-result p0

    return p0
.end method

.method instantCollapseNotificationPanel()V
    .locals 1

    .line 3581
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->instantCollapse()V

    .line 3582
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->runPostCollapseRunnables()V

    return-void
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 3496
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 3497
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 2294
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 2297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_2

    .line 2298
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-nez p1, :cond_2

    .line 2299
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    goto :goto_2

    .line 2301
    :cond_2
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    :cond_3
    :goto_2
    return v1
.end method

.method public isBouncerShowing()Z
    .locals 0

    .line 4451
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    return p0
.end method

.method public isBouncerShowingScrimmed()Z
    .locals 1

    .line 4458
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerNeedsScrimming()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isCameraAllowedByAdmin()Z
    .locals 4

    .line 4082
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4083
    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x0

    .line 4082
    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4085
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 4086
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    .line 4088
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4089
    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result p0

    .line 4088
    invoke-virtual {v0, v2, p0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public isDeviceInVrMode()Z
    .locals 0

    .line 1990
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isDeviceInVrMode()Z

    move-result p0

    return p0
.end method

.method public isDeviceInteractive()Z
    .locals 0

    .line 4225
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    return p0
.end method

.method public isFalsingThresholdNeeded()Z
    .locals 1

    .line 1781
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFullScreenUserSwitcherState()Z
    .locals 1

    .line 3213
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInLaunchTransition()Z
    .locals 1

    .line 3283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isLaunchTransitionRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 3284
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isLaunchTransitionFinished()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isKeyguardSecure()Z
    .locals 2

    .line 4492
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez p0, :cond_0

    .line 4496
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "StatusBar"

    const-string v1, "isKeyguardSecure() called before startKeyguard(), returning false"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0

    .line 4500
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result p0

    return p0
.end method

.method public isKeyguardShowing()Z
    .locals 1

    .line 4170
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez p0, :cond_0

    const-string p0, "StatusBar"

    const-string v0, "isKeyguardShowing() called before startKeyguard(), returning true"

    .line 4171
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 4174
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result p0

    return p0
.end method

.method public isOccluded()Z
    .locals 0

    .line 1904
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    return p0
.end method

.method public isPulsing()Z
    .locals 0

    .line 1880
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->isPulsing()Z

    move-result p0

    return p0
.end method

.method isSameStatusBarState(I)Z
    .locals 0

    .line 2308
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScreenFullyOff()Z
    .locals 0

    .line 3935
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWakeUpComingFromTouch()Z
    .locals 0

    .line 1777
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    return p0
.end method

.method public keyguardGoingAway()V
    .locals 2

    .line 3427
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->notifyKeyguardGoingAway(Z)V

    .line 3428
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionPending(IZ)V

    return-void
.end method

.method makeExpandedInvisible()V
    .locals 10

    .line 2229
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2234
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapsePanel(ZZF)V

    .line 2237
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->closeQs()V

    .line 2239
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    .line 2240
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    .line 2243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setPanelVisible(Z)V

    .line 2244
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    .line 2247
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 2250
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->runPostCollapseRunnables()V

    const/4 v0, 0x1

    .line 2251
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    .line 2252
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->isCollapsingToShowActivityOverLockscreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2253
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncerIfKeyguard()V

    .line 2257
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 2259
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->hideStatusBarIconsWhenExpanded()Z

    move-result v2

    .line 2257
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 2263
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result p0

    if-nez p0, :cond_2

    .line 2264
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p0

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method makeExpandedVisible(Z)V
    .locals 3

    if-nez p1, :cond_1

    .line 2112
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 2116
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    .line 2120
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setPanelVisible(Z)V

    .line 2122
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    .line 2123
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    xor-int/2addr p1, v0

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 2124
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    return-void
.end method

.method protected makeStatusBarView(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .locals 12

    .line 1053
    const-class v0, Lcom/android/systemui/plugins/qs/QS;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 1054
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    .line 1055
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateResources()V

    .line 1056
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTheme()V

    .line 1058
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateStatusBarWindow()V

    .line 1059
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setService(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationShadeWindowController;)V

    .line 1060
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindowTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1064
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 1065
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getNotificationStackScrollLayoutController()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1066
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getView()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1067
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1068
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getNotificationListContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    move-result-object v2

    .line 1069
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->setUpWithContainer(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V

    .line 1071
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateShelf()V

    .line 1072
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setupShelf(Lcom/android/systemui/statusbar/NotificationShelfController;)V

    .line 1073
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addExpansionListener(Lcom/android/systemui/statusbar/phone/PanelExpansionListener;)V

    .line 1076
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPluginDependencyProvider:Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v3, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-virtual {v2, v3}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    .line 1077
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPluginDependencyProvider:Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    .line 1078
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPhoneStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v2}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-string v4, "CollapsedStatusBarFragment"

    .line 1079
    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    .line 1127
    invoke-virtual {v2}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 1128
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$id;->status_bar_container:I

    new-instance v5, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;-><init>()V

    .line 1129
    invoke-virtual {v2, v3, v5, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1131
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 1133
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setup(Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;)V

    .line 1134
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->setup(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)V

    .line 1135
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1136
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getOnHeadsUpChangedListener()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1137
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1138
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    .line 1140
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->createNavigationBar(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    .line 1142
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperSupported:Z

    if-eqz p1, :cond_0

    .line 1143
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaperLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .line 1146
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 1149
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v2, Lcom/android/systemui/R$id;->ambient_indication_container:I

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    .line 1152
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$7;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/AutoHideController;->setStatusBar(Lcom/android/systemui/statusbar/AutoHideUiElement;)V

    .line 1174
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v2, Lcom/android/systemui/R$id;->scrim_behind:I

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/ScrimView;

    .line 1175
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v3, Lcom/android/systemui/R$id;->scrim_in_front:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ScrimView;

    .line 1176
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubblesManagerOptional:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1177
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubblesManagerOptional:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wmshell/BubblesManager;

    invoke-virtual {v3}, Lcom/android/systemui/wmshell/BubblesManager;->getScrimForBubble()Lcom/android/systemui/statusbar/ScrimView;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1179
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda37;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda37;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimVisibleListener(Ljava/util/function/Consumer;)V

    .line 1183
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v4, p1, v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->attachViews(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;)V

    .line 1185
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v2, Lcom/android/systemui/R$id;->light_reveal_scrim:I

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/LightRevealScrim;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    .line 1187
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/FeatureFlags;->useNewLockscreenAnimations()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1188
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1189
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    sget-object v3, Lcom/android/systemui/statusbar/LiftReveal;->INSTANCE:Lcom/android/systemui/statusbar/LiftReveal;

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealEffect(Lcom/android/systemui/statusbar/LightRevealEffect;)V

    goto :goto_1

    .line 1191
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1194
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    invoke-virtual {p1, p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initDependencies(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationShelfController;)V

    .line 1198
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v3, Lcom/android/systemui/R$id;->backdrop:I

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/BackDropView;

    .line 1199
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    sget v4, Lcom/android/systemui/R$id;->backdrop_front:I

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/widget/ImageView;

    sget v4, Lcom/android/systemui/R$id;->backdrop_back:I

    .line 1200
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    move-object v4, p1

    .line 1199
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/NotificationMediaManager;->setup(Lcom/android/systemui/statusbar/BackDropView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)V

    .line 1201
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    .line 1203
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeDepthControllerLazy:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda7;

    invoke-direct {v5, v3, p1}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda7;-><init>(FLcom/android/systemui/statusbar/BackDropView;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->addListener(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;)V

    .line 1211
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setUserSetupComplete(Z)V

    .line 1214
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v3, Lcom/android/systemui/R$id;->qs_frame:I

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1216
    invoke-static {p1}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v4

    .line 1217
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

    .line 1219
    invoke-interface {v5, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v5

    .line 1220
    invoke-interface {v5, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda41;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda41;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1221
    invoke-interface {v0, v5}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withDefault(Ljava/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    .line 1222
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    move-result-object v0

    const-string v5, "QS"

    .line 1217
    invoke-static {p1, v5, v3, v0}, Lcom/android/systemui/fragments/ExtensionFragmentListener;->attachExtensonToFragment(Landroid/view/View;Ljava/lang/String;ILcom/android/systemui/statusbar/policy/ExtensionController$Extension;)V

    .line 1223
    new-instance p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeDepthControllerLazy:Ldagger/Lazy;

    .line 1226
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

    new-instance v11, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda36;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda36;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 1232
    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v4, v5, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 1241
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v0, Lcom/android/systemui/R$id;->report_rejected_touch:I

    .line 1242
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 1244
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateReportRejectedTouchVisibility()V

    .line 1245
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1267
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1268
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1270
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    const/16 v0, 0xa

    const-string v3, "GestureWakeLock"

    invoke-virtual {p1, v0, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1272
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrator:Landroid/os/Vibrator;

    .line 1273
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$array;->config_cameraLaunchGestureVibePattern:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 1275
    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraLaunchGestureVibePattern:[J

    .line 1276
    :goto_2
    array-length v0, p1

    if-ge v2, v0, :cond_6

    .line 1277
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraLaunchGestureVibePattern:[J

    aget v3, p1, v2

    int-to-long v3, v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1281
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->registerBroadcastReceiver()V

    .line 1283
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1287
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const-string v5, "android.permission.DUMP"

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1291
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 1292
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onUserSetupChanged()V

    const-string p0, "disableProfileBars"

    const-string p1, "true"

    .line 1295
    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, 0x3fc00000    # 1.5f

    .line 1298
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ambientRatio"

    invoke-static {p1, p0}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public maybeEscalateHeadsUp()V
    .locals 2

    .line 2038
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->getAllEntries()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda38;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda38;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2054
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    return-void
.end method

.method public notifyBiometricAuthModeChanged()V
    .locals 3

    .line 4106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozing()V

    .line 4107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 4108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 4109
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 4110
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 4111
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getBiometricType()Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object p0

    .line 4108
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->onBiometricAuthModeChanged(ZZLandroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method protected notifyHeadsUpGoingToSleep()V
    .locals 0

    .line 4444
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->maybeEscalateHeadsUp()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .line 3537
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getState()Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3538
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    .line 3540
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expandWithoutQs()V

    :cond_1
    return v3

    .line 3544
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsExpanded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3545
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsDetailShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3546
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->closeQsDetail()V

    goto :goto_1

    .line 3548
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateCloseQs(Z)V

    :goto_1
    return v3

    .line 3552
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->closeUserSwitcherIfOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    return v3

    .line 3555
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v0, v3, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    .line 3556
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->canPanelBeCollapsed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3557
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels()V

    :cond_6
    return v3

    :cond_7
    return v2
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    return-void
.end method

.method public onBouncerPreHideAnimation()V
    .locals 1

    .line 4465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onBouncerPreHideAnimation()V

    .line 4466
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->onBouncerPreHideAnimation()V

    return-void
.end method

.method public onCameraHintStarted()V
    .locals 1

    .line 3687
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v0}, Lcom/android/systemui/classifier/FalsingCollector;->onCameraHintStarted()V

    .line 3688
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    sget v0, Lcom/android/systemui/R$string;->camera_hint:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .locals 9

    .line 3968
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastCameraLaunchSource:I

    .line 3969
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToSleep()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3971
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    return-void

    .line 3974
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->canCameraGestureBeLaunched()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3978
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez v0, :cond_2

    .line 3979
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x5

    const-string v5, "com.android.systemui:CAMERA_GESTURE"

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 3982
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->vibrateForCameraGesture()V

    if-ne p1, v1, :cond_3

    const-string v0, "StatusBar"

    const-string v2, "Camera launch"

    .line 3985
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3986
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onCameraLaunched()V

    .line 3989
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3990
    sget-object v3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;I)V

    goto :goto_0

    .line 3994
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez v0, :cond_5

    .line 3997
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3999
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakingUpOrAwake()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4001
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4002
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 4004
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->launchCamera(ZI)V

    .line 4006
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    goto :goto_0

    .line 4013
    :cond_7
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraWhenFinishedWaking:Z

    :goto_0
    return-void
.end method

.method public onClosingFinished()V
    .locals 1

    .line 3668
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->runPostCollapseRunnables()V

    .line 3669
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3672
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setNotificationShadeFocusable(Z)V

    :cond_0
    return-void
.end method

.method public onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0

    .line 1889
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTheme()V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 2897
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateResources()V

    .line 2898
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    .line 2904
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStates()V

    .line 2905
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest;->onConfigurationChanged()V

    return-void
.end method

.method public onDemoModeFinished()V
    .locals 1

    .line 3137
    sget v0, Lcom/android/systemui/R$id;->clock:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoModeFinishedToView(I)V

    .line 3138
    sget v0, Lcom/android/systemui/R$id;->operator_name:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoModeFinishedToView(I)V

    .line 3139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    return-void
.end method

.method public onDemoModeStarted()V
    .locals 1

    .line 3131
    sget v0, Lcom/android/systemui/R$id;->clock:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoModeStartedToView(I)V

    .line 3132
    sget v0, Lcom/android/systemui/R$id;->operator_name:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoModeStartedToView(I)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .line 1432
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 1433
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onDensityOrFontScaleChanged()V

    .line 1436
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserInfoControllerImpl:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->onDensityOrFontScaleChanged()V

    .line 1437
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->onDensityOrFontScaleChanged()V

    .line 1438
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->onDensityOrFontScaleChanged(Landroid/content/Context;)V

    .line 1439
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public onDozeAmountChanged(FF)V
    .locals 0

    .line 3622
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/FeatureFlags;->useNewLockscreenAnimations()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3623
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealAmount(F)V

    :cond_0
    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 4

    const-string v0, "StatusBar#updateDozing"

    .line 3629
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3630
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    .line 3633
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->getDozingRequested()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 3634
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3635
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetViews(Z)V

    .line 3637
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    .line 3638
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setDozing(Z)V

    if-eqz p1, :cond_1

    .line 3640
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 3641
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getLastSleepReason()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 3643
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getLastWakeReason()I

    move-result p1

    if-ne p1, v2, :cond_3

    :cond_2
    move v1, v2

    .line 3646
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    if-eqz v1, :cond_4

    .line 3647
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerButtonReveal:Lcom/android/systemui/statusbar/PowerButtonReveal;

    goto :goto_1

    .line 3648
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/LiftReveal;->INSTANCE:Lcom/android/systemui/statusbar/LiftReveal;

    .line 3646
    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealEffect(Lcom/android/systemui/statusbar/LightRevealEffect;)V

    .line 3650
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    const-string v0, "onDozingChanged"

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->requestNotificationUpdate(Ljava/lang/String;)V

    .line 3651
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozingState()V

    .line 3652
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozing()V

    .line 3653
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 3654
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateReportRejectedTouchVisibility()V

    .line 3655
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onEmergencyActionLaunchGestureDetected()V
    .locals 7

    .line 4020
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getEmergencyActionIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "StatusBar"

    const-string v0, "Couldn\'t find an app to process the emergency intent."

    .line 4023
    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4027
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToSleep()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4028
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchEmergencyActionOnFinishedGoingToSleep:Z

    return-void

    .line 4032
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez v0, :cond_2

    .line 4033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x4

    const-string v6, "com.android.systemui:EMERGENCY_GESTURE"

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 4040
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 4041
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;I)V

    return-void

    .line 4047
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez v0, :cond_4

    .line 4050
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x1770

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 4053
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakingUpOrAwake()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4054
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4055
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 4057
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 4064
    :cond_6
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchEmergencyActionWhenFinishedWaking:Z

    return-void
.end method

.method public onExpandAnimationFinished(Z)V
    .locals 1

    .line 1965
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1966
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    :cond_0
    if-eqz p1, :cond_1

    .line 1969
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    :cond_1
    return-void
.end method

.method public onExpandAnimationTimedOut()V
    .locals 1

    .line 1975
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    if-eqz v0, :cond_0

    .line 1977
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->isLaunchForActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1978
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    goto :goto_0

    .line 1980
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel(Z)V

    :goto_0
    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1800
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setHeadsUpShowing(Z)V

    .line 1801
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    .line 1802
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1807
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1808
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setForceWindowCollapsed(Z)V

    .line 1809
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 1814
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne p1, v0, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    .line 1816
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 1817
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isTracking()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    .line 1827
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setHeadsUpGoingAway(Z)V

    .line 1828
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda20;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1820
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setHeadsUpShowing(Z)V

    if-eqz p1, :cond_4

    .line 1822
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 2

    .line 1841
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    const-string v1, "onHeadsUpStateChanged"

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->requestNotificationUpdate(Ljava/lang/String;)V

    .line 1842
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1843
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setPulseSuppressed(Z)V

    .line 1844
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->fireNotificationPulse(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 1845
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->isPulsing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1846
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->cancelPendingPulseTimeout()V

    :cond_0
    if-nez p2, :cond_1

    .line 1849
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->hasNotifications()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1851
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseOutNow()V

    :cond_1
    return-void
.end method

.method public onHintFinished()V
    .locals 2

    .line 3683
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v0, 0x4b0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    return-void
.end method

.method public onInputFocusTransfer(ZZF)V
    .locals 1

    .line 2178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2183
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->startWaitingForOpenPanelGesture()V

    goto :goto_0

    .line 2185
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->stopWaitingForOpenPanelGesture(ZF)V

    :goto_0
    return-void
.end method

.method public onKeyguardViewManagerStatesUpdated()V
    .locals 0

    .line 1788
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->logStateToEventlog()V

    return-void
.end method

.method public onLaunchAnimationCancelled()V
    .locals 1

    .line 1958
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1959
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    :cond_0
    return-void
.end method

.method public onMenuPressed()Z
    .locals 2

    .line 3523
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldUnlockOnMenuPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3524
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZ)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onOverlayChanged()V
    .locals 1

    .line 1455
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 1456
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onOverlayChanged()V

    .line 1460
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onThemeChanged()V

    .line 1461
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onThemeChanged()V

    return-void
.end method

.method public onPhoneHintStarted()V
    .locals 1

    .line 3697
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v0}, Lcom/android/systemui/classifier/FalsingCollector;->onLeftAffordanceHintStarted()V

    .line 3698
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    sget v0, Lcom/android/systemui/R$string;->phone_hint:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 2

    .line 1309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1310
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    if-eqz p0, :cond_0

    .line 1311
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->firePowerSaveChanged(Z)V

    :cond_0
    return-void
.end method

.method public onRecentsAnimationStateChanged(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 2479
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    return-void
.end method

.method public onSpacePressed()Z
    .locals 2

    .line 3565
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v0, :cond_0

    .line 3566
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZ)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStateChanged(I)V
    .locals 3

    .line 3603
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    .line 3604
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateReportRejectedTouchVisibility()V

    .line 3605
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozing()V

    .line 3606
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTheme()V

    .line 3607
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/NavigationBarController;->touchAutoDim(I)V

    const-string p1, "StatusBar#updateKeyguardState"

    .line 3608
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3609
    iget p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz p1, :cond_0

    .line 3610
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removePendingHideExpandedRunnables()V

    .line 3612
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozingState()V

    .line 3613
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 3614
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 3615
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p1, v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateMediaMetaData(ZZ)V

    .line 3616
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState()V

    .line 3617
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onStatePreChange(II)V
    .locals 0

    .line 3591
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 3592
    invoke-interface {p1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->goingToFullShade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3593
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    :cond_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    .line 3596
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->onPanelCollapsed()V

    .line 3597
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->maybeEscalateHeadsUp()V

    :cond_2
    return-void
.end method

.method public onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIZ)V
    .locals 0

    .line 2348
    iget p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    if-eq p1, p5, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2352
    iget p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAppearance:I

    if-eq p5, p2, :cond_1

    .line 2353
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAppearance:I

    .line 2354
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTransientShown:Z

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->barMode(ZI)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateBarMode(I)Z

    move-result p1

    .line 2356
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    invoke-virtual {p2, p3, p1, p5, p4}, Lcom/android/systemui/statusbar/phone/LightBarController;->onStatusBarAppearanceChanged([Lcom/android/internal/view/AppearanceRegion;ZIZ)V

    .line 2359
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateBubblesVisibility()V

    .line 2360
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0, p6}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setFullscreenState(Z)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 2

    .line 1444
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_0

    .line 1445
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onThemeChanged()V

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    instance-of v1, v0, Lcom/android/systemui/AutoReinflateContainer;

    if-eqz v1, :cond_1

    .line 1448
    check-cast v0, Lcom/android/systemui/AutoReinflateContainer;

    invoke-virtual {v0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    .line 1450
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->onThemeChanged()V

    return-void
.end method

.method public onTrackingStarted()V
    .locals 0

    .line 3664
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->runPostCollapseRunnables()V

    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 2

    .line 3702
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    if-nez p1, :cond_1

    .line 3703
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3704
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    :cond_1
    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    .line 1466
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p0, :cond_0

    .line 1467
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onUiModeChanged()V

    :cond_0
    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 1

    .line 3677
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v0}, Lcom/android/systemui/classifier/FalsingCollector;->onUnlockHintStarted()V

    .line 3678
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    sget v0, Lcom/android/systemui/R$string;->keyguard_unlock:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method public onUnlockedChanged()V
    .locals 0

    .line 1793
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState()V

    .line 1794
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->logStateToEventlog()V

    return-void
.end method

.method public onVoiceAssistHintStarted()V
    .locals 1

    .line 3692
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v0}, Lcom/android/systemui/classifier/FalsingCollector;->onLeftAffordanceHintStarted()V

    .line 3693
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    sget v0, Lcom/android/systemui/R$string;->voice_hint:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method public postAnimateCollapsePanels()V
    .locals 2

    .line 2128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/statusbar/phone/ShadeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postAnimateForceCollapsePanels()V
    .locals 2

    .line 2132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postAnimateOpenPanels()V
    .locals 1

    .line 2137
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method postHideRecentApps()V
    .locals 2

    .line 2160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3fc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2162
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .locals 2

    .line 3097
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda31;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 2

    .line 3106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda25;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    .locals 2

    .line 3111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda27;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;)V

    int-to-long p0, p2

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public preloadRecentApps()V
    .locals 2

    .line 4278
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3fe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4279
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public readyForKeyguardDone()V
    .locals 0

    .line 2768
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->readyForKeyguardDone()V

    return-void
.end method

.method protected registerBroadcastReceiver()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1322
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 1323
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 1324
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    .line 1325
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1326
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v3, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 1

    .line 1614
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelController;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1615
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelController;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->removeTile(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public requestFaceAuth()V
    .locals 1

    .line 1635
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1636
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth()V

    :cond_0
    return-void
.end method

.method public requestNotificationUpdate(Ljava/lang/String;)V
    .locals 0

    .line 1628
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->requestNotificationUpdate(Ljava/lang/String;)V

    return-void
.end method

.method public resetUserExpandedStates()V
    .locals 0

    .line 2861
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->resetUserExpandedStates()V

    return-void
.end method

.method setBarStateForTest(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1999
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    return-void
.end method

.method public setBouncerHideAmount(F)V
    .locals 0

    .line 3786
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->setBouncerHideAmount(F)V

    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 2

    .line 3767
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    .line 3768
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setBouncerShowing(Z)V

    .line 3769
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setBouncerShowing(Z)V

    .line 3770
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    .line 3771
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowingScrimmed()Z

    move-result v1

    .line 3770
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->setBouncerShowingScrimmed(ZZ)V

    .line 3772
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->setBouncerShowing(Z)V

    :cond_0
    const/4 p1, 0x1

    .line 3773
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    .line 3774
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 3775
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 3776
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-nez p1, :cond_1

    .line 3777
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePanelExpansionForKeyguard()V

    :cond_1
    return-void
.end method

.method public setInteracting(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2529
    iget p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    or-int/2addr p1, p2

    goto :goto_0

    .line 2530
    :cond_0
    iget p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    if-eqz p1, :cond_1

    .line 2532
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->suspendAutoHide()V

    goto :goto_1

    .line 2534
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->resumeSuspendedAutoHide()V

    .line 2536
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    return-void
.end method

.method public setKeyguardFadingAway(JJJZ)V
    .locals 17

    move-object/from16 v0, p0

    .line 3440
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    add-long v3, p1, p5

    const-wide/16 v8, 0x78

    sub-long/2addr v3, v8

    const-wide/16 v5, 0x78

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(IJJZ)V

    .line 3443
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    const-wide/16 v3, 0x0

    cmp-long v3, p5, v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 3444
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v11, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    sub-long v12, p1, v8

    const-wide/16 v14, 0x78

    const/16 v16, 0x1

    invoke-virtual/range {v10 .. v16}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(IJJZ)V

    .line 3447
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    move/from16 v5, p7

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->notifyKeyguardFadingAway(JJZ)V

    return-void
.end method

.method public setLockscreenUser(I)V
    .locals 1

    .line 2914
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    if-eqz v0, :cond_0

    .line 2915
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->setCurrentUser(I)V

    .line 2917
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setCurrentUser(I)V

    .line 2918
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperSupported:Z

    if-eqz p1, :cond_1

    .line 2919
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;I)V
    .locals 0

    .line 4257
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;I)V

    return-void
.end method

.method public setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 0

    .line 4253
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    return-void
.end method

.method public setOccluded(Z)V
    .locals 1

    .line 1908
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    .line 1909
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardOccluded(Z)V

    const/4 p1, 0x0

    .line 1910
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    return-void
.end method

.method public setPanelExpanded(Z)V
    .locals 2

    .line 1856
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    if-eq v0, p1, :cond_0

    .line 1857
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->onPanelExpandedChanged(Z)V

    .line 1859
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    const/4 v0, 0x0

    .line 1860
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    .line 1861
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setPanelExpanded(Z)V

    .line 1862
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setPanelExpanded(Z)Z

    if-eqz p1, :cond_1

    .line 1863
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1867
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    :cond_1
    if-nez p1, :cond_2

    .line 1871
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->onPanelCollapsed()V

    :cond_2
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1

    .line 1767
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setQsExpanded(Z)V

    .line 1768
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setStatusAccessibilityImportance(I)V

    .line 1771
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1772
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->onStatusBarPanelStateChanged()V

    :cond_1
    return-void
.end method

.method public setQsScrimEnabled(Z)V
    .locals 0

    .line 2497
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsScrimEnabled(Z)V

    return-void
.end method

.method public setTopAppHidesStatusBar(Z)V
    .locals 2

    .line 4305
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTopHidesStatusBar:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 4306
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4309
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    .line 4310
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 4312
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    return-void
.end method

.method protected setUpDisableFlags(II)V
    .locals 2

    .line 1378
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/android/systemui/statusbar/CommandQueue;->disable(IIIZ)V

    return-void
.end method

.method setUserSetupForTest(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2004
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    return-void
.end method

.method public setWindowState(III)V
    .locals 3

    .line 2322
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 2326
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    if-eqz v2, :cond_4

    if-ne p2, p1, :cond_4

    iget p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    if-eq p2, p3, :cond_4

    .line 2329
    iput p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    .line 2331
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz p2, :cond_4

    if-nez v1, :cond_2

    .line 2332
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2333
    invoke-virtual {p2, v0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapsePanel(ZZF)V

    :cond_2
    const/4 p2, 0x2

    if-ne p3, p2, :cond_3

    goto :goto_1

    :cond_3
    move p1, v0

    .line 2336
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowHidden:Z

    .line 2337
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    .line 2341
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateBubblesVisibility()V

    return-void
.end method

.method public shouldIgnoreTouch()Z
    .locals 1

    .line 4178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 4179
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->getIgnoreTouchWhilePulsing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected shouldUnlockOnMenuPressed()Z
    .locals 1

    .line 3518
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 3519
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->shouldDismissOnMenuPressed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showAssistDisclosure()V
    .locals 0

    .line 4505
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    return-void
.end method

.method protected showChargingAnimation(IIJ)V
    .locals 7

    .line 2442
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2461
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBar$10;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$10;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const/4 v6, 0x0

    move v3, p2

    move v4, p1

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/charging/WirelessChargingAnimation;->makeWirelessChargingAnimation(Landroid/content/Context;Landroid/os/Looper;IILcom/android/systemui/charging/WirelessChargingAnimation$Callback;Z)Lcom/android/systemui/charging/WirelessChargingAnimation;

    move-result-object p0

    .line 2473
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/charging/WirelessChargingAnimation;->show(J)V

    goto :goto_1

    .line 2444
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBar$9;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$9;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    move v2, p2

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/charging/WirelessChargingAnimation;->makeWirelessChargingAnimation(Landroid/content/Context;Landroid/os/Looper;IILcom/android/systemui/charging/WirelessChargingAnimation$Callback;Z)Lcom/android/systemui/charging/WirelessChargingAnimation;

    move-result-object p0

    .line 2458
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/charging/WirelessChargingAnimation;->show(J)V

    :goto_1
    return-void
.end method

.method public showKeyguard()V
    .locals 2

    .line 3196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setKeyguardRequested(Z)V

    .line 3197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    const/4 v0, 0x0

    .line 3198
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    .line 3199
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    .line 3200
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->onLockscreenShown()V

    return-void
.end method

.method public showKeyguardImpl()V
    .locals 3

    const/4 v0, 0x1

    .line 3245
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    .line 3246
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isLaunchTransitionFadingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3247
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->cancelAnimation()V

    .line 3248
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionFadingEnded()V

    .line 3250
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3251
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->useFullscreenUserSwitcher()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3252
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    goto :goto_0

    .line 3253
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isWakingToShadeLocked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3254
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    .line 3256
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePanelExpansionForKeyguard()V

    .line 3257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 3258
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setUserLocked(Z)V

    .line 3259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notifyHeightChanged(Z)V

    const/4 v0, 0x0

    .line 3260
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :cond_3
    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .locals 1

    .line 2098
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2099
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->showPinningEnterExitToast(Z)V

    :cond_0
    return-void
.end method

.method public showPinningEscapeToast()V
    .locals 1

    .line 2105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->showPinningEscapeToast()V

    :cond_0
    return-void
.end method

.method public showScreenPinningRequest(I)V
    .locals 1

    .line 3940
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3945
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZ)V

    return-void
.end method

.method public showScreenPinningRequest(IZ)V
    .locals 0

    .line 3949
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/ScreenPinningRequest;->showPrompt(IZ)V

    return-void
.end method

.method public showTransient(I[I)V
    .locals 1

    .line 2365
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2368
    invoke-static {p2, p1}, Landroid/view/InsetsState;->containsType([II)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2371
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showTransientUnchecked()V

    return-void
.end method

.method public showWirelessChargingAnimation(I)V
    .locals 3

    const/4 v0, -0x1

    const-wide/16 v1, 0x0

    .line 2437
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->showChargingAnimation(IIJ)V

    return-void
.end method

.method public start()V
    .locals 10

    .line 863
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 864
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 865
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiModeManager:Landroid/app/UiModeManager;

    .line 866
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBypassHeadsUpNotifier:Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->setUp()V

    .line 867
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubblesOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubblesOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/bubbles/Bubbles;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleExpandListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/bubbles/Bubbles;->setExpandListener(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V

    .line 869
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "taskbarChanged"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 870
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTaskbarChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 874
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v8, 0x0

    invoke-interface {v0, p0, v8}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    .line 877
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    const-string v0, "dreams"

    .line 879
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 878
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 881
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    .line 882
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    .line 883
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    .line 885
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_vibrateOnIconAnimation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrateOnOpening:Z

    .line 889
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 890
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 893
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 894
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 896
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardBypassController(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    const-string v0, "statusbar"

    .line 898
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 897
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 900
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 901
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/WallpaperManager;

    .line 902
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperSupported:Z

    .line 905
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 908
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    const/4 v9, 0x0

    .line 912
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 914
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-object v0, v9

    .line 917
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createAndAddWindows(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    .line 919
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperSupported:Z

    if-eqz v1, :cond_1

    .line 921
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 922
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v1, v9, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 924
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 930
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setUpPresenter()V

    .line 932
    iget-object v1, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mTransientBarTypes:[I

    invoke-static {v1, v8}, Landroid/view/InsetsState;->containsType([II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 933
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showTransientUnchecked()V

    .line 935
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    iget v3, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mAppearance:I

    iget-object v4, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    iget-boolean v5, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mNavbarColorManagedByIme:Z

    iget v6, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mBehavior:I

    iget-boolean v7, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mAppFullscreen:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIZ)V

    .line 939
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    iget-object v3, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeToken:Landroid/os/IBinder;

    iget v4, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeWindowVis:I

    iget v5, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeBackDisposition:I

    iget-boolean v6, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mShowImeSwitcher:Z

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    .line 943
    iget-object v1, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v2, v8

    :goto_1
    if-ge v2, v1, :cond_3

    .line 945
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v4, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 958
    :cond_3
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.systemui.statusbar.banner_action_cancel"

    .line 959
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.systemui.statusbar.banner_action_setup"

    .line 960
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 961
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBannerActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.android.systemui.permission.SELF"

    invoke-virtual {v2, v3, v1, v4, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 964
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperSupported:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "wallpaper"

    .line 966
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 965
    invoke-static {v1}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 968
    :try_start_1
    invoke-interface {v1, v8, v2, v3}, Landroid/app/IWallpaperManager;->setInAmbientMode(ZJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 977
    :catch_1
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->init()V

    .line 978
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSignalPolicy:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    .line 980
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 981
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startKeyguard()V

    .line 983
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 984
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->initialize(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/View;)V

    .line 991
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 993
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-interface {v1, v2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 997
    iget v1, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags1:I

    .line 998
    iget v0, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags2:I

    .line 999
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInitController:Lcom/android/systemui/InitController;

    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda24;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda24;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;II)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/InitController;->addPostInitTask(Ljava/lang/Runnable;)V

    .line 1002
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$6;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-class v2, Lcom/android/systemui/plugins/OverlayPlugin;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1752
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    .line 1762
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;I)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZ)V
    .locals 0

    .line 1757
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZI)V
    .locals 0

    .line 1747
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZI)V

    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2704
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZI)V

    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZI)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .line 2697
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;I)V

    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;I)V
    .locals 8

    if-eqz p2, :cond_0

    .line 2710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2712
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 2713
    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v1

    .line 2712
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/ActivityIntentHelper;->wouldLaunchResolverActivity(Landroid/content/Intent;I)Z

    move-result v6

    .line 2714
    new-instance v7, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda28;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p6

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda28;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;IZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    .line 2758
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda10;

    invoke-direct {v2, p5}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/plugins/ActivityStarter$Callback;)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v7

    move v3, p3

    move v4, v6

    .line 2763
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 0

    .line 4514
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    return-void
.end method

.method protected startKeyguard()V
    .locals 10

    const-string v0, "StatusBar#startKeyguard"

    .line 1490
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1491
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 1492
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->setBiometricModeListener(Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricModeListener;)V

    .line 1520
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1521
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBouncerContainer()Landroid/view/ViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v1, Lcom/android/systemui/R$id;->lock_icon_container:I

    .line 1523
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object v3, p0

    .line 1520
    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->registerStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    .line 1525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1526
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 1527
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->setKeyguardViewController(Lcom/android/keyguard/KeyguardViewController;)V

    .line 1528
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/RemoteInputController;->addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    .line 1529
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 1531
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->setBiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 1532
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->setBiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 1533
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->setDismissHandler(Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;)V

    .line 1534
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public startLaunchTransitionTimeout()V
    .locals 3

    .line 3345
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v0, 0x3eb

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x0

    .line 4345
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 4351
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 3

    .line 4358
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 4359
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4360
    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v2

    .line 4359
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/ActivityIntentHelper;->wouldLaunchResolverActivity(Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4362
    :goto_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda26;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeActionDismissingKeyguard(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public suppressAmbientDisplay(Z)V
    .locals 0

    .line 4528
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->setDozeSuppressed(Z)V

    return-void
.end method

.method protected toggleKeyboardShortcuts(I)V
    .locals 0

    .line 4316
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->toggle(Landroid/content/Context;I)V

    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 2

    .line 4299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x402

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4300
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public togglePanel()V
    .locals 1

    .line 2142
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    if-eqz v0, :cond_0

    .line 2143
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels()V

    goto :goto_0

    .line 2145
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    :goto_0
    return-void
.end method

.method public toggleSplitScreen()V
    .locals 1

    const/4 v0, -0x1

    .line 4262
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->toggleSplitScreenMode(II)Z

    return-void
.end method

.method public toggleSplitScreenMode(II)Z
    .locals 5

    .line 1562
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1566
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;

    .line 1567
    invoke-interface {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->isDividerVisible()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v2, :cond_3

    .line 1568
    invoke-interface {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->isMinimized()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->isHomeStackResizable()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 1573
    :cond_1
    invoke-interface {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->onUndockingTask()V

    if-eq p2, v4, :cond_2

    .line 1575
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, p2}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    :cond_2
    return v3

    .line 1580
    :cond_3
    invoke-interface {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->splitPrimaryTask()Z

    move-result p2

    if-eqz p2, :cond_5

    if-eq p1, v4, :cond_4

    .line 1582
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    :cond_4
    return v3

    :cond_5
    return v1
.end method

.method updateDisplaySize()V
    .locals 2

    .line 2671
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2672
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-void
.end method

.method updateIsKeyguard()Z
    .locals 5

    .line 3217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3224
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->getDozingRequested()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v3, :cond_1

    .line 3225
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToSleep()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isScreenFullyOff()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    if-eqz v3, :cond_2

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 3226
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->isKeyguardRequested()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    if-eqz v3, :cond_5

    .line 3229
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePanelExpansionForKeyguard()V

    :cond_5
    if-eqz v2, :cond_7

    .line 3232
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 3233
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    goto :goto_3

    .line 3236
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showKeyguardImpl()V

    :goto_3
    return v1

    .line 3239
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguardImpl()Z

    move-result p0

    return p0
.end method

.method updateNotificationPanelTouchState()V
    .locals 4

    .line 3893
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToSleep()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 3894
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3895
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->isPulsing()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    .line 3897
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setTouchAndAnimationDisabled(Z)V

    .line 3898
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    xor-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setAnimationsEnabled(Z)V

    return-void
.end method

.method updateResources()V
    .locals 3

    .line 2932
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    if-eqz v0, :cond_0

    .line 2933
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelController;->updateResources()V

    .line 2936
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    if-eqz v0, :cond_1

    .line 2937
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->refreshStatusBarHeight()V

    .line 2940
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_2

    .line 2941
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateResources()V

    .line 2943
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz v0, :cond_3

    .line 2944
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateResources()V

    .line 2946
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_4

    .line 2947
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources()V

    .line 2950
    :cond_4
    new-instance v0, Lcom/android/systemui/statusbar/PowerButtonReveal;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->global_actions_top_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/PowerButtonReveal;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerButtonReveal:Lcom/android/systemui/statusbar/PowerButtonReveal;

    return-void
.end method

.method updateScrimController()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "StatusBar#updateScrimController"

    .line 4116
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 4121
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 4124
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 4125
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    move-result v3

    xor-int/2addr v1, v3

    .line 4124
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setExpansionAffectsAlpha(Z)V

    .line 4127
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 4128
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isLaunchingAffordanceWithPreview()Z

    move-result v1

    .line 4129
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setLaunchingAffordanceWithPreview(Z)V

    .line 4131
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-eqz v2, :cond_3

    .line 4135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerNeedsScrimming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4136
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 4137
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto/16 :goto_4

    .line 4138
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v2

    if-nez v2, :cond_c

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraWhenFinishedWaking:Z

    if-nez v2, :cond_c

    if-eqz v1, :cond_4

    goto/16 :goto_3

    .line 4143
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorVisible:Z

    if-eqz v1, :cond_5

    .line 4144
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto/16 :goto_4

    .line 4145
    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 4146
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto/16 :goto_4

    .line 4147
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 4149
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->getScrimCallback()Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    move-result-object p0

    .line 4148
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    goto :goto_4

    .line 4150
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->hasPendingScreenOffCallback()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->OFF:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$16;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$16;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    goto :goto_4

    .line 4157
    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v1, :cond_9

    if-nez v0, :cond_9

    .line 4158
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_4

    .line 4159
    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    if-eqz v1, :cond_a

    if-nez v0, :cond_a

    .line 4160
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_4

    .line 4161
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubblesOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubblesOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/bubbles/Bubbles;

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/Bubbles;->isStackExpanded()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    goto :goto_4

    .line 4164
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    goto :goto_4

    .line 4142
    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    .line 4166
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method protected updateTheme()V
    .locals 2

    .line 3465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3466
    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI_Light:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI:I

    .line 3467
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 3468
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 3469
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->notifyThemeChanged()V

    :cond_1
    return-void
.end method

.method protected updateVisibleToUser()V
    .locals 2

    .line 4424
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    .line 4425
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    if-eq v0, v1, :cond_1

    .line 4428
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChanged(Z)V

    :cond_1
    return-void
.end method

.method public userActivity()V
    .locals 2

    .line 3490
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3491
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method vibrate()V
    .locals 3

    .line 3073
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 3075
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v1, v2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    return-void
.end method

.method visibilityChanged(Z)V
    .locals 8

    .line 4413
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 4414
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-nez p1, :cond_0

    .line 4416
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 4420
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    return-void
.end method

.method public wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V
    .locals 4

    .line 1389
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAnimatingScreenOff()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.android.systemui:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p1, p2, v1, p4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    const/4 p1, 0x1

    .line 1392
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    .line 1393
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    invoke-virtual {p3, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1394
    new-instance p2, Landroid/graphics/PointF;

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    const/4 v0, 0x0

    aget p4, p4, v0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    int-to-float p4, p4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    aget p1, v0, p1

    .line 1395
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    int-to-float p1, p1

    invoke-direct {p2, p4, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    .line 1396
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {p0}, Lcom/android/systemui/classifier/FalsingCollector;->onScreenOnFromTouch()V

    :cond_0
    return-void
.end method
