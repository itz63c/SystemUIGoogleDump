.class public Lcom/android/systemui/recents/OverviewProxyService;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "OverviewProxyService.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/settings/CurrentUserTracker;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;",
        ">;",
        "Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# instance fields
.field private mActiveNavBarRegion:Landroid/graphics/Region;

.field private mBound:Z

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mConnectionBackoffAttempts:I

.field private final mConnectionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBoundedUserId:I

.field private final mDeferredConnectionCallback:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mInputFocusTransferStartMillis:J

.field private mInputFocusTransferStartY:F

.field private mInputFocusTransferStarted:Z

.field private mIsEnabled:Z

.field private final mLauncherStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mLegacySplitScreenOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mNavBarButtonAlpha:F

.field private final mNavBarControllerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            ">;"
        }
    .end annotation
.end field

.field private mNavBarMode:I

.field private final mOneHandedOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;"
        }
    .end annotation
.end field

.field private mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

.field private final mOverviewServiceConnection:Landroid/content/ServiceConnection;

.field private final mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

.field private final mPipOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;"
        }
    .end annotation
.end field

.field private final mQuickStepIntent:Landroid/content/Intent;

.field private final mRecentsComponentName:Landroid/content/ComponentName;

.field private final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field private final mShellTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

.field private final mSplitScreenBoundsChangeListener:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mSplitScreenOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartingSurface:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/startingsurface/StartingSurface;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarOptionalLazy:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStatusBarWinController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field private final mStatusBarWindowCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

.field private mSupportsRoundedCornersOnWindows:Z

.field public mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSysUiState:Lcom/android/systemui/model/SysUiState;

.field private mWindowCornerRadius:F


# direct methods
.method public static synthetic $r8$lambda$5woo0ZUfUI59FZVuoOikLBgk2hQ(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->internalConnectToCurrentUser()V

    return-void
.end method

.method public static synthetic $r8$lambda$BaF-uB_VKFOEOVnRby-e2hfBUy8(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$E2kpKu45zlhkn_A2qdV6zeoFrl0(Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->lambda$new$1(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bTS8OIyX-ukIR3cfygXFXYgSWrE(Lcom/android/systemui/recents/OverviewProxyService;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/recents/OverviewProxyService;->onStatusBarStateChanged(ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$jzVdSKvIoISe-Rco2ootorQN2Jw(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->lambda$cleanupAfterDeath$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$p-CmI7KzEPqQWtwJ1fqq6-JsER0(Lcom/android/systemui/recents/OverviewProxyService;Ldagger/Lazy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->lambda$cleanupAfterDeath$2(Ldagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tqExWmIHLOupi7KtfDqmGsaEm7A(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->lambda$cleanupAfterDeath$4(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zhQ-o-xDJ5Q9exIJnaLTc1_-AzM(Lcom/android/systemui/recents/OverviewProxyService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifySystemUiStateFlags(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Ldagger/Lazy;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/model/SysUiState;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/wm/shell/transition/ShellTransitions;Ljava/util/Optional;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            ">;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/model/SysUiState;",
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
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/wm/shell/transition/ShellTransitions;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/startingsurface/StartingSurface;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    move-object/from16 v6, p12

    .line 590
    invoke-direct {p0, v6}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 142
    new-instance v6, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v6, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    .line 144
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    const/4 v6, -0x1

    .line 158
    iput v6, v0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    const/4 v6, 0x0

    .line 165
    iput v6, v0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    .line 167
    new-instance v7, Lcom/android/systemui/recents/OverviewProxyService$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/recents/OverviewProxyService$1;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v7, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    .line 471
    new-instance v7, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v7, v0, Lcom/android/systemui/recents/OverviewProxyService;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    .line 477
    new-instance v7, Lcom/android/systemui/recents/OverviewProxyService$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/recents/OverviewProxyService$2;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v7, v0, Lcom/android/systemui/recents/OverviewProxyService;->mLauncherStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 487
    new-instance v8, Lcom/android/systemui/recents/OverviewProxyService$3;

    invoke-direct {v8, p0}, Lcom/android/systemui/recents/OverviewProxyService$3;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v8, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceConnection:Landroid/content/ServiceConnection;

    .line 568
    new-instance v8, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v8, v0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWindowCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    .line 569
    new-instance v9, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda6;

    invoke-direct {v9, p0}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v9, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSplitScreenBoundsChangeListener:Ljava/util/function/BiConsumer;

    .line 573
    new-instance v9, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v9, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    .line 591
    iput-object v1, v0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    move-object/from16 v9, p7

    .line 592
    iput-object v9, v0, Lcom/android/systemui/recents/OverviewProxyService;->mPipOptional:Ljava/util/Optional;

    move-object/from16 v9, p10

    .line 593
    iput-object v9, v0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarOptionalLazy:Ljava/util/Optional;

    .line 594
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, v0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    move-object v9, p3

    .line 595
    iput-object v9, v0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarControllerLazy:Ldagger/Lazy;

    .line 596
    iput-object v3, v0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWinController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 597
    iput v6, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    const v9, 0x104026e

    .line 598
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    .line 600
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.QUICKSTEP_SERVICE"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/recents/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    .line 602
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/res/Resources;)F

    move-result v10

    iput v10, v0, Lcom/android/systemui/recents/OverviewProxyService;->mWindowCornerRadius:F

    .line 604
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v10

    iput-boolean v10, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSupportsRoundedCornersOnWindows:Z

    .line 605
    iput-object v4, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 606
    new-instance v10, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    invoke-virtual {v4, v10}, Lcom/android/systemui/model/SysUiState;->addCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V

    move-object/from16 v4, p11

    .line 607
    iput-object v4, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOneHandedOptional:Ljava/util/Optional;

    move-object/from16 v4, p13

    .line 608
    iput-object v4, v0, Lcom/android/systemui/recents/OverviewProxyService;->mShellTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 611
    iput v4, v0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarButtonAlpha:F

    move-object/from16 v4, p4

    .line 614
    invoke-virtual {v4, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v4

    iput v4, v0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    .line 615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OverviewProxyService: mode="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v10, "OverviewProxyService b/182478748"

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-instance v4, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v4, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v10, "package"

    .line 619
    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    .line 622
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p1, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 626
    invoke-interface {v3, v8}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V

    .line 627
    new-instance v3, Lcom/android/internal/util/ScreenshotHelper;

    invoke-direct {v3, p1}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/systemui/recents/OverviewProxyService;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 630
    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/OverviewProxyService$4;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 637
    iput-object v2, v0, Lcom/android/systemui/recents/OverviewProxyService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v1, p9

    .line 639
    iput-object v1, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSplitScreenOptional:Ljava/util/Optional;

    .line 640
    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    invoke-virtual {v5, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 642
    iput-object v5, v0, Lcom/android/systemui/recents/OverviewProxyService;->mLegacySplitScreenOptional:Ljava/util/Optional;

    .line 645
    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 648
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->updateEnabledState()V

    .line 649
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->startConnectionToCurrentUser()V

    move-object/from16 v1, p14

    .line 650
    iput-object v1, v0, Lcom/android/systemui/recents/OverviewProxyService;->mStartingSurface:Ljava/util/Optional;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarOptionalLazy:Ljava/util/Optional;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/recents/OverviewProxyService;Landroid/os/Bundle;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyStartAssistant(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/recents/OverviewProxyService;F)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyAssistantGestureCompletion(F)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/recents/OverviewProxyService;F)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyAssistantProgress(F)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/recents/OverviewProxyService;FZ)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService;->notifyNavBarButtonAlphaChanged(FZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/List;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/recents/OverviewProxyService;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/recents/OverviewProxyService;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/recents/OverviewProxyService;)F
    .locals 0

    .line 120
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartY:F

    return p0
.end method

.method static synthetic access$1602(Lcom/android/systemui/recents/OverviewProxyService;F)F
    .locals 0

    .line 120
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartY:F

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/recents/OverviewProxyService;)J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartMillis:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/recents/OverviewProxyService;J)J
    .locals 0

    .line 120
    iput-wide p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartMillis:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->updateEnabledState()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/systemui/recents/OverviewProxyService;I)I
    .locals 0

    .line 120
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/lang/Runnable;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->disconnectFromLauncherService()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->retryConnectionWithBackoff()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/shared/recents/IOverviewProxy;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/shared/recents/IOverviewProxy;)Lcom/android/systemui/shared/recents/IOverviewProxy;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/recents/OverviewProxyService;)F
    .locals 0

    .line 120
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mWindowCornerRadius:F

    return p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/recents/OverviewProxyService;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSupportsRoundedCornersOnWindows:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSplitScreenOptional:Ljava/util/Optional;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOneHandedOptional:Ljava/util/Optional;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/wm/shell/transition/ShellTransitions;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mShellTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mLegacySplitScreenOptional:Ljava/util/Optional;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStartingSurface:Ljava/util/Optional;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->dispatchNavButtonBounds()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->updateSystemUiStateFlags()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/model/SysUiState;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/recents/OverviewProxyService;I)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifySystemUiStateFlags(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifyConnectionChanged()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/recents/OverviewProxyService;F)F
    .locals 0

    .line 120
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarButtonAlpha:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mPipOptional:Ljava/util/Optional;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/internal/util/ScreenshotHelper;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/statusbar/CommandQueue;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/recents/OverviewProxyService;)I
    .locals 0

    .line 120
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/systemui/recents/OverviewProxyService;I)I
    .locals 0

    .line 120
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/recents/OverviewProxyService;I)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyQuickSwitchToNewTask(I)V

    return-void
.end method

.method private disconnectFromLauncherService()V
    .locals 3

    .line 827
    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OverviewProxyService.disconnect: curUser="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OverviewProxyService b/182478748"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 833
    iput-boolean v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_1

    .line 837
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 838
    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 839
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyNavBarButtonAlphaChanged(FZ)V

    .line 840
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifyConnectionChanged()V

    :cond_1
    return-void
.end method

.method private dispatchNavButtonBounds()V
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mActiveNavBarRegion:Landroid/graphics/Region;

    if-eqz p0, :cond_0

    .line 727
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OverviewProxyService"

    const-string v1, "Failed to call onActiveNavBarRegionChanges()"

    .line 729
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private internalConnectToCurrentUser()V
    .locals 6

    .line 760
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->disconnectFromLauncherService()V

    .line 763
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result v0

    const-string v1, "OverviewProxyService"

    if-nez v0, :cond_0

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot attempt connection, is enabled "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 768
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.QUICKSTEP_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    .line 769
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 771
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceConnection:Landroid/content/ServiceConnection;

    const v4, 0x2000001

    .line 774
    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 771
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    const-string v0, "OverviewProxyService b/182478748"

    .line 775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OverviewProxyService.connect: bound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Unable to bind because of security error"

    .line 777
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 784
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->retryConnectionWithBackoff()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$cleanupAfterDeath$2(Ldagger/Lazy;)V
    .locals 2

    const/4 v0, 0x0

    .line 738
    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    .line 739
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onInputFocusTransfer(ZZF)V

    return-void
.end method

.method private synthetic lambda$cleanupAfterDeath$3()V
    .locals 2

    .line 737
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarOptionalLazy:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$cleanupAfterDeath$4(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 1

    const/4 v0, 0x0

    .line 748
    invoke-interface {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->setMinimized(Z)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const-string v0, "OverviewProxyService"

    const-string v1, "Binder supposed established connection but actual connection to service timed out, trying again"

    .line 472
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->retryConnectionWithBackoff()V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 0

    .line 641
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSplitScreenBoundsChangeListener:Ljava/util/function/BiConsumer;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->registerBoundsChangeListener(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private notifyAssistantGestureCompletion(F)V
    .locals 2

    .line 881
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 882
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onAssistantGestureCompletion(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyAssistantProgress(F)V
    .locals 2

    .line 875
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 876
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onAssistantProgress(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyConnectionChanged()V
    .locals 4

    .line 851
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 852
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2, v3}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onConnectionChanged(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyNavBarButtonAlphaChanged(FZ)V
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 846
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onNavBarButtonAlphaChanged(FZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyQuickSwitchToNewTask(I)V
    .locals 2

    .line 863
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 864
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onQuickSwitchToNewTask(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyStartAssistant(Landroid/os/Bundle;)V
    .locals 2

    .line 887
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 888
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->startAssistant(Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifySystemUiStateFlags(I)V
    .locals 1

    .line 698
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p0, :cond_0

    .line 699
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onSystemUiStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "OverviewProxyService"

    const-string v0, "Failed to notify sysui state change"

    .line 702
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private onStatusBarStateChanged(ZZZ)V
    .locals 5

    .line 708
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/16 v4, 0x40

    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v0

    const/16 v3, 0x200

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 710
    :goto_1
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object p1

    const/16 p2, 0x8

    .line 712
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 713
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void
.end method

.method private retryConnectionWithBackoff()V
    .locals 4

    .line 789
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 792
    iget v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 793
    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    const v1, 0x49127c00    # 600000.0f

    .line 792
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-long v0, v0

    .line 794
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 795
    iget v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect on attempt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " will try again in "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OverviewProxyService"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateEnabledState()V
    .locals 4

    .line 952
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result v0

    .line 953
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    const/high16 v3, 0x100000

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OverviewProxyService.updateEnabledState: curUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " enabled="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OverviewProxyService b/182478748"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSystemUiStateFlags()V
    .locals 3

    .line 671
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarControllerLazy:Ldagger/Lazy;

    .line 672
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarController;->getDefaultNavigationBar()Lcom/android/systemui/navigationbar/NavigationBar;

    move-result-object v0

    .line 673
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarControllerLazy:Ldagger/Lazy;

    .line 674
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarController;

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    .line 681
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/NavigationBar;->updateSystemUiStateFlags(I)V

    :cond_0
    if-eqz v1, :cond_1

    .line 684
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updatePanelSystemUiStateFlags()V

    .line 685
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateDisabledSystemUiStateFlags()V

    .line 687
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWinController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    if-eqz p0, :cond_2

    .line 688
    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->notifyStateChangedCallbacks()V

    :cond_2
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V
    .locals 2

    .line 802
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-interface {p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onConnectionChanged(Z)V

    .line 806
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarButtonAlpha:F

    invoke-interface {p1, p0, v1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onNavBarButtonAlphaChanged(FZ)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 119
    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method

.method public cleanupAfterDeath()V
    .locals 2

    .line 735
    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 744
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->startConnectionToCurrentUser()V

    .line 747
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mLegacySplitScreenOptional:Ljava/util/Optional;

    sget-object v0, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda9;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "OverviewProxyService state:"

    .line 967
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  isConnected="

    .line 968
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mIsEnabled="

    .line 969
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mRecentsComponentName="

    .line 970
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mQuickStepIntent="

    .line 971
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mBound="

    .line 972
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mCurrentBoundedUserId="

    .line 973
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mConnectionBackoffAttempts="

    .line 974
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mInputFocusTransferStarted="

    .line 975
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mInputFocusTransferStartY="

    .line 976
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartY:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, "  mInputFocusTransferStartMillis="

    .line 977
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartMillis:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  mWindowCornerRadius="

    .line 978
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mWindowCornerRadius:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, "  mSupportsRoundedCornersOnWindows="

    .line 979
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSupportsRoundedCornersOnWindows:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mNavBarButtonAlpha="

    .line 980
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarButtonAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, "  mActiveNavBarRegion="

    .line 981
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mActiveNavBarRegion:Landroid/graphics/Region;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mNavBarMode="

    .line 982
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 983
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/model/SysUiState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;
    .locals 0

    .line 823
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 819
    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    return p0
.end method

.method public notifyAssistantVisibilityChanged(F)V
    .locals 1

    const-string v0, "OverviewProxyService"

    .line 900
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p0, :cond_0

    .line 901
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onAssistantVisibilityChanged(F)V

    goto :goto_0

    :cond_0
    const-string p0, "Failed to get overview proxy for assistant visibility."

    .line 903
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to call notifyAssistantVisibilityChanged()"

    .line 906
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public notifyBackAction(ZIIZZ)V
    .locals 6

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 663
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onBackAction(ZIIZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "OverviewProxyService"

    const-string p2, "Failed to notify back action"

    .line 666
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 7

    const-string v0, "OverviewProxyService"

    .line 939
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v1, :cond_0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 940
    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onImeWindowStatusChanged(ILandroid/os/IBinder;IIZ)V

    goto :goto_0

    :cond_0
    const-string p0, "Failed to get overview proxy for setting IME status."

    .line 943
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to call notifyImeWindowStatus()"

    .line 946
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public notifySplitScreenBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "OverviewProxyService"

    .line 919
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p0, :cond_0

    .line 920
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onSplitScreenSecondaryBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const-string p0, "Failed to get overview proxy for split screen bounds."

    .line 923
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to call onSplitScreenSecondaryBoundsChanged()"

    .line 926
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public notifySwipeToHomeFinishedInternal()V
    .locals 2

    .line 893
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 894
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onSwipeToHomeFinished()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method notifyToggleRecentApps()V
    .locals 2

    .line 931
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 932
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onToggleRecentApps()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mActiveNavBarRegion:Landroid/graphics/Region;

    .line 721
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->dispatchNavButtonBounds()V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 1

    .line 961
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    .line 962
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OverviewProxyService.onNavModeChanged: mode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OverviewProxyService b/182478748"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUserSwitched(I)V
    .locals 0

    const/4 p1, 0x0

    .line 655
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 656
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->internalConnectToCurrentUser()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V
    .locals 0

    .line 811
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 119
    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method

.method public shouldShowSwipeUpUI()Z
    .locals 1

    .line 815
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isLegacyMode(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startConnectionToCurrentUser()V
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 755
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->internalConnectToCurrentUser()V

    :goto_0
    return-void
.end method
