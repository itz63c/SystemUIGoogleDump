.class public Lcom/android/systemui/navigationbar/NavigationBar;
.super Ljava/lang/Object;
.source "NavigationBar.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;
    }
.end annotation


# instance fields
.field private final mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field private mAppearance:I

.field private final mAssistContentObserver:Landroid/database/ContentObserver;

.field private mAssistHandlerViewController:Lcom/android/systemui/assist/AssistHandleViewController;

.field private final mAssistManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private mAssistantAvailable:Z

.field private final mAutoDim:Ljava/lang/Runnable;

.field private mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

.field private final mAutoHideUiElement:Lcom/android/systemui/statusbar/AutoHideUiElement;

.field private mBehavior:I

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentRotation:I

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDisabledFlags1:I

.field private mDisabledFlags2:I

.field public mDisplayId:I

.field private mForceNavBarHandleOpaque:Z

.field private final mHandler:Landroid/os/Handler;

.field public mHomeBlockedThisTouch:Z

.field private mIsCurrentUserSetup:Z

.field private mIsOnDefaultDisplay:Z

.field private mLastLockToAppLongPress:J

.field private mLayoutDirection:I

.field private mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mLocale:Ljava/util/Locale;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNavBarMode:I

.field private final mNavbarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

.field private mNavigationBarMode:I

.field private mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

.field private mNavigationBarWindowState:I

.field private mNavigationIconHints:I

.field private final mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field private final mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

.field private mOrientationHandleGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mOrientationHandleIntensityListener:Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;

.field private mOrientationParams:Landroid/view/WindowManager$LayoutParams;

.field private final mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private final mPipOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecentsOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;"
        }
    .end annotation
.end field

.field private final mRotationWatcher:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Landroid/os/Bundle;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mShowOrientedHandleForImmersiveMode:Z

.field private final mSplitScreenOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mStartingQuickSwitchRotation:I

.field private final mStatusBarLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

.field private final mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

.field private mTransientShown:Z

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mUserSetupListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$57P4EYjTmWpaqBJPIG1lCPB_CAQ(Lcom/android/systemui/navigationbar/NavigationBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onVerticalChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$5UChUAThWb4OuTE4Ic4dh9abk90(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->lambda$initSecondaryHomeHandleForRotation$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$GMUrRGBTIpUp-9f8LwOrFGf5HW8(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onAccessibilityClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HPyc8leQZCHqPWbDVB3bTeaa9y4(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onLongPressBackHome(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IJ8n67jK2SaOovl5IoUoNpdsAns(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onAccessibilityLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$J0Eup4yr5Un7SiVZkodFWTR5yRU(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBar;->onRecentsTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$K7I0ugGK4L7biKOJxfyYbDfOVmU(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onLongPressBackRecents(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Lc81b84naHtaxRAuqpMeFxBuvqs(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onRecentsClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Psk_Mm9yhFViVv7cQ5RLwq1E0_U(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->lambda$onLongPressRecents$2(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T2khzvKue7NVudfy9B8kqnm8JdU(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$VrI4zrbcfOFCHLZFpE7EgZyajyg(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fs805I_nlDE2lInNm_PUQoQyORY(Lcom/android/systemui/navigationbar/NavigationBar;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->lambda$new$4(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h1tdKzbIORPPk7SyQu-hJ3_4vdc(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBar;->onNavigationTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$po5AJR_uHONyA4OMvm6Xxqvj5rY(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBar;->onHomeTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qeEfKGBIbGBT3aa91cZnujfqeow(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->lambda$disableAnimationsDuringHide$3()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Ldagger/Lazy;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/accessibility/SystemActions;Landroid/os/Handler;Lcom/android/systemui/navigationbar/NavigationBarOverlayController;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/WindowManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/model/SysUiState;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/accessibility/SystemActions;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/navigationbar/NavigationBarOverlayController;",
            "Lcom/android/internal/logging/UiEventLogger;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p9

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 198
    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    const/4 v2, 0x0

    .line 200
    iput v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    .line 202
    iput v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    .line 224
    iput v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    const/4 v2, -0x1

    .line 245
    iput v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    .line 273
    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/NavigationBar$1;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideUiElement:Lcom/android/systemui/statusbar/AutoHideUiElement;

    .line 295
    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/NavigationBar$2;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 366
    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/NavigationBar$3;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandleIntensityListener:Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;

    .line 374
    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoDim:Ljava/lang/Runnable;

    .line 376
    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar$4;

    new-instance v3, Landroid/os/Handler;

    .line 377
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/navigationbar/NavigationBar$4;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistContentObserver:Landroid/database/ContentObserver;

    .line 389
    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/NavigationBar$5;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 400
    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/NavigationBar$6;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mUserSetupListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 1507
    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 1538
    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mRotationWatcher:Ljava/util/function/Consumer;

    .line 1545
    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/NavigationBar$7;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object v2, p1

    .line 430
    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    move-object v2, p2

    .line 431
    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    move-object v2, p4

    .line 432
    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object v2, p5

    .line 433
    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    move-object v2, p6

    .line 434
    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object v2, p10

    .line 435
    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object v2, p7

    .line 436
    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object v2, p3

    .line 437
    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistManagerLazy:Ldagger/Lazy;

    move-object/from16 v2, p11

    .line 438
    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

    move-object/from16 v2, p17

    .line 439
    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    move-object/from16 v2, p18

    .line 440
    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v2, p19

    .line 441
    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object v2, p8

    .line 442
    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 443
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 444
    invoke-virtual {p9, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    move-object/from16 v1, p12

    .line 445
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v1, p13

    .line 446
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v1, p14

    .line 447
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mPipOptional:Ljava/util/Optional;

    move-object/from16 v1, p15

    .line 448
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mSplitScreenOptional:Ljava/util/Optional;

    move-object/from16 v1, p16

    .line 449
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mRecentsOptional:Ljava/util/Optional;

    move-object/from16 v1, p20

    .line 450
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

    move-object/from16 v1, p21

    .line 451
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    move-object/from16 v1, p22

    .line 452
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    move-object/from16 v1, p23

    .line 453
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/navigationbar/NavigationBar;)Z
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->isTransientShown()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->orientSecondaryHomeHandle()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/navigationbar/NavigationBar;)Ldagger/Lazy;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistManagerLazy:Ldagger/Lazy;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/navigationbar/NavigationBar;)Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsCurrentUserSetup:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/navigationbar/NavigationBar;Z)Z
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsCurrentUserSetup:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/navigationbar/NavigationBar;)I
    .locals 0

    .line 158
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/navigationbar/NavigationBar;)Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mForceNavBarHandleOpaque:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/navigationbar/NavigationBar;Z)Z
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mForceNavBarHandleOpaque:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->notifyNavigationBarScreenOn()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->clearTransient()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/navigationbar/NavigationBarView;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateScreenPinningGestures()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/navigationbar/NavigationBar;)Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistantAvailable:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/navigationbar/NavigationBar;Z)Z
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistantAvailable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/navigationbar/NavigationBar;Z)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->sendAssistantAvailability(Z)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/systemui/navigationbar/NavigationBar;I)I
    .locals 0

    .line 158
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/systemui/navigationbar/NavigationBar;Z)Z
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mShowOrientedHandleForImmersiveMode:Z

    return p1
.end method

.method private allowSystemGestureIgnoringBarVisibility()Z
    .locals 1

    .line 1456
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBehavior:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static barMode(ZI)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    and-int/lit8 p0, p1, 0x6

    const/4 v1, 0x6

    if-ne p0, v1, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    and-int/lit8 p0, p1, 0x4

    if-eqz p0, :cond_2

    return v1

    :cond_2
    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    and-int/lit8 p0, p1, 0x40

    if-eqz p0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private canShowSecondaryHandle()Z
    .locals 2

    .line 1535
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkBarModes()V
    .locals 1

    .line 1444
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    if-eqz v0, :cond_0

    .line 1445
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    goto :goto_0

    .line 1447
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->checkNavBarModes()V

    :goto_0
    return-void
.end method

.method private clearTransient()V
    .locals 1

    .line 964
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 965
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    .line 966
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->handleTransientChanged()V

    :cond_0
    return-void
.end method

.method private deltaRotation(II)I
    .locals 0

    sub-int/2addr p2, p1

    if-gez p2, :cond_0

    add-int/lit8 p2, p2, 0x4

    :cond_0
    return p2
.end method

.method private handleTransientChanged()V
    .locals 2

    .line 971
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz v0, :cond_1

    .line 975
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->onTransientStateChanged(Z)V

    .line 977
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    invoke-static {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->barMode(ZI)I

    move-result v0

    .line 978
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateBarMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz p0, :cond_2

    .line 979
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationBarModeChanged(I)V

    :cond_2
    return-void
.end method

.method private initSecondaryHomeHandleForRotation()V
    .locals 8

    .line 669
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    new-instance v1, Landroid/os/Handler;

    .line 674
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 676
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    .line 677
    sget v1, Lcom/android/systemui/R$id;->secondary_home_handle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 679
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandleIntensityListener:Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->addDarkIntensityListener(Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;)F

    .line 680
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x7e8

    const v6, 0x20000138

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationParams:Landroid/view/WindowManager$LayoutParams;

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecondaryHomeHandle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 690
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 693
    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandleGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 705
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandleGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private isTransientShown()Z
    .locals 0

    .line 1439
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    return p0
.end method

.method private synthetic lambda$disableAnimationsDuringHide$3()V
    .locals 1

    .line 1480
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$initSecondaryHomeHandleForRotation$1()V
    .locals 3

    .line 695
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->computeHomeHandleBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 700
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->mapRectFromViewToScreenCoords(Landroid/graphics/RectF;Z)V

    .line 701
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 702
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 703
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setOrientedHandleSamplingRegion(Landroid/graphics/Rect;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 374
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->setAutoDim(Z)V

    return-void
.end method

.method private synthetic lambda$new$4(Ljava/lang/Integer;)V
    .locals 1

    .line 1539
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz v0, :cond_0

    .line 1540
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->needsReorient(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1541
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->repositionNavigationBar()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onLongPressRecents$2(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)Ljava/lang/Boolean;
    .locals 0

    .line 1301
    invoke-interface {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isSplitScreenFeasible()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private notifyNavigationBarScreenOn()V
    .locals 0

    .line 1099
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method private onAccessibilityClick(Landroid/view/View;)V
    .locals 0

    .line 1311
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    .line 1312
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    .line 1313
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1312
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V

    return-void
.end method

.method private onAccessibilityLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1317
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    .line 1318
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1319
    const-class v0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    .line 1320
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1321
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0
.end method

.method private onHomeTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1122
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeBlockedThisTouch:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 1128
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 1144
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    goto :goto_0

    .line 1130
    :cond_2
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeBlockedThisTouch:Z

    .line 1131
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    .line 1132
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    if-eqz p1, :cond_3

    .line 1133
    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1134
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "NavigationBar"

    const-string p2, "Ignoring HOME; there\'s a ringing incoming call. No heads up"

    .line 1135
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeBlockedThisTouch:Z

    return v0

    :cond_3
    :goto_0
    return p2
.end method

.method private onLongPressBackHome(Landroid/view/View;)Z
    .locals 2

    .line 1210
    sget v0, Lcom/android/systemui/R$id;->back:I

    sget v1, Lcom/android/systemui/R$id;->home:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->onLongPressNavigationButtons(Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method private onLongPressBackRecents(Landroid/view/View;)Z
    .locals 2

    .line 1214
    sget v0, Lcom/android/systemui/R$id;->back:I

    sget v1, Lcom/android/systemui/R$id;->recent_apps:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->onLongPressNavigationButtons(Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method private onLongPressNavigationButtons(Landroid/view/View;II)Z
    .locals 9

    const/4 v0, 0x0

    .line 1235
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    .line 1236
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    .line 1237
    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->isInLockTaskMode()Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 1241
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1245
    iget-wide v5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLastLockToAppLongPress:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v5, v2, v5

    const-wide/16 v7, 0xc8

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 1277
    :try_start_2
    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V

    .line 1279
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return v4

    .line 1248
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p2, :cond_2

    .line 1249
    sget p2, Lcom/android/systemui/R$id;->recent_apps:I

    if-ne p3, p2, :cond_1

    .line 1250
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p2

    goto :goto_0

    .line 1251
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p2

    .line 1252
    :goto_0
    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->isPressed()Z

    move-result p2

    if-nez p2, :cond_2

    move p2, v4

    goto :goto_1

    :cond_2
    move p2, v0

    .line 1258
    :goto_1
    iput-wide v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLastLockToAppLongPress:J

    goto :goto_3

    .line 1261
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v5, p2, :cond_4

    move p2, v4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 1277
    :try_start_4
    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V

    .line 1279
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    return v4

    .line 1268
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p2, p3, :cond_7

    .line 1269
    sget p1, Lcom/android/systemui/R$id;->recent_apps:I

    if-ne p3, p1, :cond_6

    .line 1270
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->onLongPressRecents()Z

    move-result p0

    goto :goto_2

    .line 1271
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 1272
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p1

    .line 1271
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onHomeLongClick(Landroid/view/View;)Z

    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    return p0

    :cond_7
    move p2, v0

    :goto_3
    if-eqz p2, :cond_8

    .line 1284
    :try_start_6
    check-cast p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    const/16 p0, 0x80

    .line 1285
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(II)V

    const/4 p0, 0x2

    .line 1286
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    return v4

    :catchall_0
    move-exception p0

    .line 1281
    throw p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "NavigationBar"

    const-string p2, "Unable to reach activity manager"

    .line 1290
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    return v0
.end method

.method private onLongPressRecents()Z
    .locals 2

    .line 1296
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mRecentsOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1297
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 1299
    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSplitScreenOptional:Ljava/util/Optional;

    sget-object v1, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda17;->INSTANCE:Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda17;

    .line 1300
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 1302
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1306
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const/16 v0, 0x10f

    const/16 v1, 0x11e

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->toggleSplitScreenMode(II)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private onNavigationTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1155
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-eqz p0, :cond_0

    .line 1156
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/AutoHideController;->checkUserAutoHide(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onRecentsClick(Landroid/view/View;)V
    .locals 1

    .line 1201
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1202
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 1205
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    .line 1206
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->toggleRecentApps()V

    return-void
.end method

.method private onRecentsTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1187
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    if-nez p2, :cond_0

    .line 1189
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->preloadRecentApps()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 1191
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->cancelPreloadRecentApps()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 1193
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1194
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->cancelPreloadRecentApps()V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private onVerticalChanged(Z)V
    .locals 0

    .line 1151
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setQsScrimEnabled(Z)V

    return-void
.end method

.method private orientSecondaryHomeHandle()V
    .locals 7

    .line 710
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->canShowSecondaryHandle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 714
    :cond_0
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSplitScreenOptional:Ljava/util/Optional;

    sget-object v2, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda18;->INSTANCE:Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda18;

    .line 715
    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 720
    :cond_1
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentRotation:I

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/navigationbar/NavigationBar;->deltaRotation(II)I

    move-result v0

    .line 721
    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    if-eq v2, v1, :cond_2

    if-ne v0, v1, :cond_3

    .line 723
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secondary nav delta rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavigationBar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 730
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-virtual {v2, v0}, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->setDeltaRotation(I)V

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    if-eq v0, v2, :cond_4

    move v1, v4

    move v5, v1

    goto :goto_0

    .line 734
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 735
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    goto :goto_0

    .line 740
    :cond_5
    iget-boolean v5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mShowOrientedHandleForImmersiveMode:Z

    if-nez v5, :cond_6

    .line 741
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->resetSecondaryHandle()V

    return-void

    .line 744
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 745
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 749
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_7

    const/16 v2, 0x50

    goto :goto_1

    :cond_7
    if-ne v0, v3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v2, 0x5

    .line 751
    :goto_1
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 752
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 753
    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 754
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-interface {v0, v1, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 756
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 718
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->resetSecondaryHandle()V

    :goto_3
    return-void
.end method

.method private prepareNavigationBarView()V
    .locals 2

    .line 1103
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reorient()V

    .line 1105
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    .line 1106
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1107
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1109
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    .line 1110
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1111
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1113
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    .line 1114
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1115
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1116
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    .line 1118
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateScreenPinningGestures()V

    return-void
.end method

.method private refreshLayout(I)V
    .locals 0

    .line 1055
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz p0, :cond_0

    .line 1056
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method private registerAction(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1360
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

    invoke-virtual {p0, p2}, Lcom/android/systemui/accessibility/SystemActions;->register(I)V

    goto :goto_0

    .line 1362
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

    invoke-virtual {p0, p2}, Lcom/android/systemui/accessibility/SystemActions;->unregister(I)V

    :goto_0
    return-void
.end method

.method private repositionNavigationBar()V
    .locals 2

    .line 1066
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1068
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->prepareNavigationBarView()V

    .line 1070
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 1071
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 1070
    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private resetSecondaryHandle()V
    .locals 2

    .line 761
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 764
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 767
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 768
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->setOrientedHandleSamplingRegion(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private sendAssistantAvailability(Z)V
    .locals 1

    .line 1399
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1401
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    .line 1402
    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1401
    :goto_0
    invoke-interface {v0, p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onAssistantAvailable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "NavigationBar"

    const-string p1, "Unable to send assistant availability data to launcher"

    .line 1404
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private setDisabled2Flags(I)V
    .locals 0

    .line 1047
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz p0, :cond_0

    .line 1048
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/navigationbar/RotationButtonController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->onDisable2FlagChanged(I)V

    :cond_0
    return-void
.end method

.method private shouldDisableNavbarGestures()Z
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags1:I

    const/high16 v0, 0x2000000

    and-int/2addr p0, v0

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

.method private updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 4

    .line 1326
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    new-array v0, p1, [Z

    .line 1330
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->getA11yButtonState([Z)I

    move-result v0

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move p1, v2

    .line 1334
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v2, v1, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setAccessibilityButtonState(ZZ)V

    .line 1336
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateSystemUiStateFlags(I)V

    return-void
.end method

.method private updateBarMode(I)Z
    .locals 2

    .line 985
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarMode:I

    if-eq v0, p1, :cond_3

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->hideRecentsOnboarding()V

    .line 990
    :cond_1
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarMode:I

    .line 991
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->checkNavBarModes()V

    .line 992
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-eqz p0, :cond_2

    .line 993
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private updateScreenPinningGestures()V
    .locals 4

    .line 1075
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-nez v0, :cond_0

    return-void

    .line 1080
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v0

    .line 1081
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v1

    .line 1082
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 1084
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/NavigationBarView;->isRecentsButtonVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1086
    new-instance v3, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    goto :goto_0

    .line 1087
    :cond_1
    new-instance v3, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    .line 1085
    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1088
    new-instance v3, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 1090
    invoke-virtual {v1, p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1091
    invoke-virtual {v2, p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1094
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setLongClickable(Z)V

    .line 1095
    invoke-virtual {v2, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setLongClickable(Z)V

    return-void
.end method


# virtual methods
.method public abortTransient(I[I)V
    .locals 1

    .line 954
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 957
    invoke-static {p2, p1}, Landroid/view/InsetsState;->containsType([II)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 960
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->clearTransient()V

    return-void
.end method

.method public checkNavBarModes()V
    .locals 2

    .line 1463
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1465
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object v1

    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarMode:I

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    return-void
.end method

.method public createView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 461
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e3

    const v4, 0x20840068

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 471
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->nav_bar:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 474
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 475
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 477
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->navigation_bar_window:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarFrame;

    .line 479
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$layout;->navigation_bar:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 481
    invoke-virtual {v2, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 484
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    const-class v4, Landroid/view/WindowManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3, v1, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    .line 486
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    .line 488
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 489
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/assist/AssistManager;

    const/4 v4, -0x2

    .line 490
    invoke-virtual {v1, v4}, Lcom/android/systemui/assist/AssistManager;->getAssistInfoForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistantAvailable:Z

    .line 491
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "assistant"

    .line 493
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistContentObserver:Landroid/database/ContentObserver;

    const/4 v6, -0x1

    .line 492
    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    if-eqz p1, :cond_2

    const-string v1, "disabled_state"

    .line 497
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags1:I

    const-string v1, "disabled2_state"

    .line 498
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    const-string v1, "appearance"

    .line 499
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    const-string v1, "behavior"

    .line 500
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBehavior:I

    const-string v1, "transient_state"

    .line 501
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    .line 503
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSavedState:Landroid/os/Bundle;

    .line 504
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->addCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 507
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    const-string p1, "systemui"

    const-string v0, "nav_bar_handle_force_opaque"

    .line 509
    invoke-static {p1, v0, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mForceNavBarHandleOpaque:Z

    .line 513
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    .line 514
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/mediarouter/media/MediaRoute2Provider-$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroidx/mediarouter/media/MediaRoute2Provider-$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 513
    invoke-static {p1, v1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 516
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsCurrentUserSetup:Z

    .line 517
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mUserSetupListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-object v2
.end method

.method public destroyView()V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 524
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 525
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 524
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 526
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->removeListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)V

    .line 528
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->removeCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 529
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 530
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mUserSetupListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 532
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {p0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public disable(IIIZ)V
    .locals 0

    .line 1019
    iget p4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-eq p1, p4, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x3600000

    and-int/2addr p1, p2

    .line 1027
    iget p4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags1:I

    if-eq p1, p4, :cond_2

    .line 1028
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags1:I

    .line 1029
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz p1, :cond_1

    .line 1030
    invoke-virtual {p1, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->setDisabledFlags(I)V

    .line 1032
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateScreenPinningGestures()V

    .line 1036
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    if-eqz p1, :cond_3

    and-int/lit8 p1, p3, 0x10

    .line 1038
    iget p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    if-eq p1, p2, :cond_3

    .line 1039
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    .line 1040
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->setDisabled2Flags(I)V

    :cond_3
    return-void
.end method

.method public disableAnimationsDuringHide(J)V
    .locals 4

    .line 1479
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    .line 1480
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    const-wide/16 v2, 0x1c0

    add-long/2addr p1, v2

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavigationBar (displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStartingQuickSwitchRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz v0, :cond_0

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNavigationBarWindowState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    .line 785
    invoke-static {v1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 784
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNavigationBarMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarMode:I

    .line 787
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 786
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object v0

    const-string v1, "mNavigationBarView"

    invoke-static {p1, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 789
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    const-string p0, "  mNavigationBarView=null"

    .line 791
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public finishBarAnimations()V
    .locals 0

    .line 1504
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    return-void
.end method

.method public getA11yButtonState([Z)I
    .locals 7

    .line 1375
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, -0x1

    .line 1376
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 1378
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x0

    .line 1379
    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object p0

    .line 1381
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    .line 1382
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v1

    :goto_0
    const/16 v5, 0x10

    if-ltz v2, :cond_1

    .line 1383
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1384
    iget v6, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    if-eqz v6, :cond_0

    if-eq v6, v5, :cond_0

    move v4, v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1391
    aput-boolean v4, p1, v1

    :cond_2
    if-lt p0, v3, :cond_3

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    const/4 p1, 0x2

    if-lt p0, p1, :cond_4

    const/16 v1, 0x20

    :cond_4
    or-int p0, v5, v1

    return p0
.end method

.method public getAssistHandlerViewController()Lcom/android/systemui/assist/AssistHandleViewController;
    .locals 0

    .line 1486
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistHandlerViewController:Lcom/android/systemui/assist/AssistHandleViewController;

    return-object p0
.end method

.method public getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;
    .locals 0

    .line 1500
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object p0

    return-object p0
.end method

.method getNavigationIconHints()I
    .locals 0

    .line 1566
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    return-object p0
.end method

.method public isNavBarWindowVisible()Z
    .locals 0

    .line 1452
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 653
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 654
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    .line 655
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLayoutDirection:I

    if-eq v0, v1, :cond_1

    .line 661
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLocale:Ljava/util/Locale;

    .line 662
    iput v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLayoutDirection:I

    .line 663
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->refreshLayout(I)V

    .line 665
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->repositionNavigationBar()V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    .line 1522
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->canShowSecondaryHandle()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1526
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1527
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    .line 1528
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentRotation:I

    if-eq p1, v0, :cond_1

    .line 1529
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentRotation:I

    .line 1530
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->orientSecondaryHomeHandle()V

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method onHomeLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1163
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isRecentsButtonVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1164
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onLongPressBackHome(Landroid/view/View;)Z

    move-result p0

    return p0

    .line 1167
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->shouldDisableNavbarGestures()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1170
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0xef

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 1171
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;->NAVBAR_ASSIST_LONGPRESS:Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 1172
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x5

    const-string v1, "invocation_type"

    .line 1173
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1175
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    .line 1176
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    .line 1178
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz p0, :cond_2

    .line 1179
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->abortCurrentGesture()V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 1470
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    .line 1471
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateScreenPinningGestures()V

    .line 1473
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->canShowSecondaryHandle()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1474
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->resetSecondaryHandle()V

    :cond_0
    return-void
.end method

.method public onRecentsAnimationStateChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 892
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->setButtonState(ZZ)V

    :cond_0
    return-void
.end method

.method public onRotationProposal(IZ)V
    .locals 2

    .line 858
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-nez v0, :cond_0

    return-void

    .line 866
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 867
    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    .line 868
    invoke-static {v1}, Lcom/android/systemui/navigationbar/RotationButtonController;->hasDisable2RotateSuggestionFlag(I)Z

    move-result v1

    .line 869
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 870
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/navigationbar/RotationButtonController;

    move-result-object p0

    .line 871
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->getRotationButton()Lcom/android/systemui/navigationbar/RotationButton;

    if-eqz v1, :cond_1

    return-void

    .line 886
    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/navigationbar/RotationButtonController;->onRotationProposal(IIZ)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 639
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags1:I

    const-string v1, "disabled_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 640
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    const-string v1, "disabled2_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 641
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    const-string v1, "appearance"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 642
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBehavior:I

    const-string v1, "behavior"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 643
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    const-string v1, "transient_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 644
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz p0, :cond_0

    .line 645
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->saveState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIZ)V
    .locals 0

    .line 914
    iget p3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 918
    iget p3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    if-eq p3, p2, :cond_2

    .line 919
    iput p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    .line 920
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 923
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    invoke-static {p1, p2}, Lcom/android/systemui/navigationbar/NavigationBar;->barMode(ZI)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateBarMode(I)Z

    move-result p1

    .line 925
    :cond_2
    iget-object p3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz p3, :cond_3

    .line 926
    iget p6, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarMode:I

    invoke-virtual {p3, p2, p1, p6, p4}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationBarAppearanceChanged(IZIZ)V

    .line 929
    :cond_3
    iget p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBehavior:I

    if-eq p1, p5, :cond_5

    .line 930
    iput p5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBehavior:I

    .line 931
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz p1, :cond_4

    .line 932
    invoke-virtual {p1, p5}, Lcom/android/systemui/navigationbar/NavigationBarView;->setBehavior(I)V

    :cond_4
    const/4 p1, -0x1

    .line 934
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateSystemUiStateFlags(I)V

    :cond_5
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 5

    .line 537
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 538
    sget v1, Lcom/android/systemui/R$id;->navigation_bar_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 539
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setComponents(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 540
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags1:I

    invoke-virtual {p1, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setDisabledFlags(I)V

    .line 541
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setOnVerticalChangedListener(Lcom/android/systemui/navigationbar/NavigationBarView$OnVerticalChangedListener;)V

    .line 542
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 543
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSavedState:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 544
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->restoreState(Landroid/os/Bundle;)V

    .line 546
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    invoke-virtual {p1, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setNavigationIconHints(I)V

    .line 547
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->isNavBarWindowVisible()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setWindowVisible(Z)V

    .line 548
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBehavior:I

    invoke-virtual {p1, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setBehavior(I)V

    .line 549
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSplitScreenOptional:Ljava/util/Optional;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda15;

    invoke-direct {v2, v1}, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 550
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mPipOptional:Ljava/util/Optional;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda16;

    invoke-direct {v2, v1}, Lcom/android/systemui/navigationbar/NavigationBar-$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 552
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->prepareNavigationBarView()V

    .line 553
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->checkNavBarModes()V

    .line 555
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 556
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 557
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 559
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 558
    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    .line 560
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->notifyNavigationBarScreenOn()V

    .line 562
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    const/4 p1, -0x1

    .line 563
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateSystemUiStateFlags(I)V

    .line 566
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    if-eqz p1, :cond_1

    .line 567
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 568
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/navigationbar/RotationButtonController;

    move-result-object p1

    .line 569
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mRotationWatcher:Ljava/util/function/Consumer;

    invoke-virtual {p1, v1}, Lcom/android/systemui/navigationbar/RotationButtonController;->addRotationCallback(Ljava/util/function/Consumer;)V

    if-eqz v0, :cond_2

    .line 573
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->isRotationLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 574
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotationLockedAtAngle(I)V

    goto :goto_0

    .line 577
    :cond_1
    iget p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    .line 579
    :cond_2
    :goto_0
    iget p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->setDisabled2Flags(I)V

    .line 580
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    if-eqz p1, :cond_3

    .line 581
    new-instance p1, Lcom/android/systemui/assist/AssistHandleViewController;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/assist/AssistHandleViewController;-><init>(Landroid/os/Handler;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistHandlerViewController:Lcom/android/systemui/assist/AssistHandleViewController;

    .line 583
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistHandlerViewController:Lcom/android/systemui/assist/AssistHandleViewController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->addDarkIntensityListener(Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;)F

    .line 586
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->initSecondaryHomeHandleForRotation()V

    .line 591
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    if-eqz p1, :cond_4

    .line 592
    const-class p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    goto :goto_1

    .line 593
    :cond_4
    new-instance p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 594
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    const-class v2, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 595
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryController;

    const-class v3, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 596
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/LightBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/navigationbar/NavigationModeController;)V

    .line 597
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->setLightBarController(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    .line 603
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    if-eqz p1, :cond_5

    .line 604
    const-class p1, Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/AutoHideController;

    goto :goto_2

    .line 605
    :cond_5
    new-instance p1, Lcom/android/systemui/statusbar/phone/AutoHideController;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    const-class v2, Landroid/view/IWindowManager;

    .line 606
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowManager;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AutoHideController;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IWindowManager;)V

    .line 607
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    .line 608
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->restoreAppearanceAndTransientState()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 613
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 614
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    if-eqz v1, :cond_0

    .line 615
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistHandlerViewController:Lcom/android/systemui/assist/AssistHandleViewController;

    .line 616
    invoke-virtual {p1, v1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->removeDarkIntensityListener(Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;)V

    .line 617
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistHandlerViewController:Lcom/android/systemui/assist/AssistHandleViewController;

    .line 619
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->destroy()V

    .line 620
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->destroy(Landroid/content/Context;)V

    .line 622
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 623
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 624
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    if-eqz p1, :cond_2

    .line 625
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->resetSecondaryHandle()V

    .line 626
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 627
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandleIntensityListener:Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;

    invoke-virtual {p1, v1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->removeDarkIntensityListener(Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;)V

    .line 628
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-interface {p1, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 629
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandleGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 632
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoDim:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 633
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 634
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    return-void
.end method

.method public restoreAppearanceAndTransientState()V
    .locals 4

    .line 898
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    invoke-static {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->barMode(ZI)I

    move-result v0

    .line 899
    iput v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarMode:I

    .line 900
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->checkNavBarModes()V

    .line 901
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-eqz v1, :cond_0

    .line 902
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    .line 904
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v1, :cond_1

    .line 905
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationBarAppearanceChanged(IZIZ)V

    :cond_1
    return-void
.end method

.method public setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V
    .locals 1

    .line 1431
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-eqz p1, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideUiElement:Lcom/android/systemui/statusbar/AutoHideUiElement;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->setNavigationBar(Lcom/android/systemui/statusbar/AutoHideUiElement;)V

    .line 1435
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    return-void
.end method

.method public setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 1

    .line 800
    iget p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    and-int/lit8 p2, p3, 0x2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 804
    :goto_0
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    if-eqz p4, :cond_3

    if-eq p4, p3, :cond_3

    if-eq p4, p1, :cond_3

    const/4 p2, 0x3

    if-eq p4, p2, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    and-int/lit8 p2, v0, -0x2

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_2

    or-int/lit8 p2, v0, 0x1

    :goto_1
    if-eqz p5, :cond_4

    or-int/2addr p1, p2

    goto :goto_2

    :cond_4
    and-int/lit8 p1, p2, -0x3

    :goto_2
    if-ne p1, v0, :cond_5

    return-void

    .line 826
    :cond_5
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    .line 828
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz p2, :cond_6

    .line 829
    invoke-virtual {p2, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setNavigationIconHints(I)V

    .line 831
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->checkBarModes()V

    const/4 p1, -0x1

    .line 832
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateSystemUiStateFlags(I)V

    return-void
.end method

.method public setLightBarController(Lcom/android/systemui/statusbar/phone/LightBarController;)V
    .locals 0

    .line 1422
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz p1, :cond_0

    .line 1424
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 1425
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p0

    .line 1424
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->setNavigationBar(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    :cond_0
    return-void
.end method

.method public setWindowState(III)V
    .locals 1

    .line 838
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    iget p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    if-eq p2, p3, :cond_2

    .line 841
    iput p3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    const/4 p2, -0x1

    .line 842
    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/NavigationBar;->updateSystemUiStateFlags(I)V

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 843
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mShowOrientedHandleForImmersiveMode:Z

    .line 844
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    if-eq p1, p2, :cond_1

    .line 846
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->orientSecondaryHomeHandle()V

    .line 850
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz p1, :cond_2

    .line 851
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->isNavBarWindowVisible()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->setWindowVisible(Z)V

    :cond_2
    return-void
.end method

.method public showTransient(I[I)V
    .locals 1

    .line 940
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 943
    invoke-static {p2, p1}, Landroid/view/InsetsState;->containsType([II)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 946
    :cond_1
    iget-boolean p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    if-nez p2, :cond_2

    .line 947
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    .line 948
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->handleTransientChanged()V

    :cond_2
    return-void
.end method

.method public touchAutoDim()V
    .locals 3

    .line 1413
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->setAutoDim(Z)V

    .line 1414
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoDim:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1415
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoDim:Ljava/lang/Runnable;

    const-wide/16 v1, 0x8ca

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public transitionTo(IZ)V
    .locals 0

    .line 1496
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    return-void
.end method

.method public updateSystemUiStateFlags(I)V
    .locals 6

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1341
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->getA11yButtonState([Z)I

    move-result p1

    :cond_0
    and-int/lit8 v0, p1, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/16 v3, 0x20

    and-int/2addr p1, v3

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    .line 1346
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

    const/16 v5, 0x10

    invoke-virtual {v4, v5, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v4

    .line 1347
    invoke-virtual {v4, v3, p1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v3

    const/4 v4, 0x2

    .line 1348
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->isNavBarWindowVisible()Z

    move-result v5

    xor-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v3

    const/high16 v4, 0x40000

    iget v5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_3

    move v1, v2

    .line 1349
    :cond_3
    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v1

    const/high16 v2, 0x20000

    .line 1352
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->allowSystemGestureIgnoringBarVisibility()Z

    move-result v3

    .line 1351
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    .line 1353
    invoke-virtual {v1, v2}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    const/16 v1, 0xb

    .line 1354
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->registerAction(ZI)V

    const/16 v0, 0xc

    .line 1355
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->registerAction(ZI)V

    return-void
.end method
