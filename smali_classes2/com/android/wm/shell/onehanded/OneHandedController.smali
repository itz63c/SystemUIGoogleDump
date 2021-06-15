.class public Lcom/android/wm/shell/onehanded/OneHandedController;
.super Ljava/lang/Object;
.source "OneHandedController.java"

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/onehanded/OneHandedController$IOneHandedImpl;,
        Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/wm/shell/common/RemoteCallable<",
        "Lcom/android/wm/shell/onehanded/OneHandedController;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field private final mActivatedObserver:Landroid/database/ContentObserver;

.field private mBackgroundPanelOrganizer:Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;

.field private mContext:Landroid/content/Context;

.field private mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

.field private final mEnabledObserver:Landroid/database/ContentObserver;

.field private mGestureHandler:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

.field private final mImpl:Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

.field private volatile mIsOneHandedEnabled:Z

.field private volatile mIsSwipeToNotificationEnabled:Z

.field private mLockedDisabled:Z

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMainHandler:Landroid/os/Handler;

.field private mOffSetFraction:F

.field private final mOneHandedAccessibilityUtil:Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;

.field private final mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

.field private final mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

.field private final mOverlayManager:Landroid/content/om/IOverlayManager;

.field private final mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

.field private final mState:Lcom/android/wm/shell/onehanded/OneHandedState;

.field private final mSwipeToNotificationEnabledObserver:Landroid/database/ContentObserver;

.field private final mTaskChangeExitObserver:Landroid/database/ContentObserver;

.field private mTaskChangeToExit:Z

.field private final mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

.field private final mTaskStackListenerCallback:Lcom/android/wm/shell/common/TaskStackListenerCallback;

.field private final mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

.field private final mTimeoutObserver:Landroid/database/ContentObserver;

.field private final mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

.field private final mTransitionCallBack:Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;

.field private final mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$71uyfUc5Z-spLxYexezB6Jzdb3U(Lcom/android/wm/shell/onehanded/OneHandedController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->lambda$setupTimeoutListener$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ATS_-SYfDEdXE49yQIVOUaqWFOk(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->lambda$setupCallback$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Vyt1IYrk_OiVPD4P1AwCmrmcO1s(Lcom/android/wm/shell/onehanded/OneHandedController;IIILandroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/onehanded/OneHandedController;->lambda$new$0(IIILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tF38Rrv2YMu-fFWmDFWEva2mu1M(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->lambda$updateOneHandedEnabled$3()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;Lcom/android/wm/shell/onehanded/OneHandedState;Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;Landroid/content/om/IOverlayManager;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V
    .locals 8

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p8

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v3, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;Lcom/android/wm/shell/onehanded/OneHandedController$1;)V

    iput-object v3, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mImpl:Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    .line 110
    new-instance v3, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    iput-object v3, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    .line 119
    new-instance v4, Lcom/android/wm/shell/onehanded/OneHandedController$1;

    invoke-direct {v4, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    iput-object v4, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    .line 144
    new-instance v5, Lcom/android/wm/shell/onehanded/OneHandedController$2;

    invoke-direct {v5, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$2;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    iput-object v5, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mAccessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 169
    new-instance v5, Lcom/android/wm/shell/onehanded/OneHandedController$3;

    invoke-direct {v5, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$3;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    iput-object v5, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTransitionCallBack:Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;

    .line 184
    new-instance v5, Lcom/android/wm/shell/onehanded/OneHandedController$4;

    invoke-direct {v5, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$4;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    iput-object v5, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListenerCallback:Lcom/android/wm/shell/common/TaskStackListenerCallback;

    move-object v5, p1

    .line 263
    iput-object v5, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 264
    iput-object v2, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    move-object/from16 v6, p9

    .line 265
    iput-object v6, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedAccessibilityUtil:Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;

    move-object v6, p3

    .line 266
    iput-object v6, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mBackgroundPanelOrganizer:Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;

    move-object v6, p4

    .line 267
    iput-object v6, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 268
    iput-object v1, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object v6, p5

    .line 269
    iput-object v6, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    move-object/from16 v6, p11

    .line 270
    iput-object v6, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    move-object v6, p6

    .line 271
    iput-object v6, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    move-object v6, p7

    .line 272
    iput-object v6, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mGestureHandler:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

    move-object/from16 v6, p13

    .line 273
    iput-object v6, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    move-object/from16 v6, p15

    .line 274
    iput-object v6, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v6, p16

    .line 275
    iput-object v6, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v6, p12

    .line 276
    iput-object v6, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    move-object/from16 v6, p14

    .line 277
    iput-object v6, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    .line 279
    invoke-virtual {p2, v4}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 280
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/android/wm/shell/R$fraction;->config_one_handed_offset:I

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v4, v6

    .line 283
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const-string v7, "persist.debug.one_handed_offset_percentage"

    .line 282
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 284
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    iput v7, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    .line 285
    iput v4, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOffSetFraction:F

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v6, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    .line 286
    invoke-virtual {v2, v4, v6}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v6, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    .line 289
    invoke-virtual {v2, v4, v6}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsSwipeToNotificationEnabled(Landroid/content/ContentResolver;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsSwipeToNotificationEnabled:Z

    move-object/from16 v2, p10

    .line 291
    iput-object v2, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    .line 293
    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    invoke-direct {p0, v2}, Lcom/android/wm/shell/onehanded/OneHandedController;->getObserver(Ljava/lang/Runnable;)Landroid/database/ContentObserver;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mActivatedObserver:Landroid/database/ContentObserver;

    .line 294
    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    invoke-direct {p0, v2}, Lcom/android/wm/shell/onehanded/OneHandedController;->getObserver(Ljava/lang/Runnable;)Landroid/database/ContentObserver;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mEnabledObserver:Landroid/database/ContentObserver;

    .line 295
    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    invoke-direct {p0, v2}, Lcom/android/wm/shell/onehanded/OneHandedController;->getObserver(Ljava/lang/Runnable;)Landroid/database/ContentObserver;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutObserver:Landroid/database/ContentObserver;

    .line 296
    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    invoke-direct {p0, v2}, Lcom/android/wm/shell/onehanded/OneHandedController;->getObserver(Ljava/lang/Runnable;)Landroid/database/ContentObserver;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskChangeExitObserver:Landroid/database/ContentObserver;

    .line 297
    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    .line 298
    invoke-direct {p0, v2}, Lcom/android/wm/shell/onehanded/OneHandedController;->getObserver(Ljava/lang/Runnable;)Landroid/database/ContentObserver;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mSwipeToNotificationEnabledObserver:Landroid/database/ContentObserver;

    .line 300
    invoke-virtual {p2, v3}, Lcom/android/wm/shell/common/DisplayController;->addDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    .line 301
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setupCallback()V

    .line 302
    iget v1, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-direct {p0, v1}, Lcom/android/wm/shell/onehanded/OneHandedController;->registerSettingObservers(I)V

    .line 303
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setupTimeoutListener()V

    .line 304
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setupGesturalOverlay()V

    .line 305
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateSettings()V

    .line 307
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 308
    iget-object v0, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mAccessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/wm/shell/onehanded/OneHandedController;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isInitialized()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/wm/shell/onehanded/OneHandedController;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/wm/shell/onehanded/OneHandedController;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsSwipeToNotificationEnabled:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/wm/shell/onehanded/OneHandedController;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->onUserSwitch(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/wm/shell/onehanded/OneHandedController;Landroid/content/res/Configuration;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->onConfigChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/wm/shell/onehanded/OneHandedController;Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->registerGestureCallback(Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/wm/shell/onehanded/OneHandedController;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->setThreeButtonModeEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/wm/shell/onehanded/OneHandedController;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateDisplayLayout(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/wm/shell/onehanded/OneHandedController;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/wm/shell/onehanded/OneHandedController;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/wm/shell/onehanded/OneHandedController;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedState;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/wm/shell/onehanded/OneHandedController;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded(I)V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/internal/logging/UiEventLogger;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)Lcom/android/wm/shell/onehanded/OneHandedController;
    .locals 25

    move-object/from16 v9, p0

    move-object/from16 v2, p3

    move-object/from16 v10, p6

    const-string v0, "ro.support_one_handed_mode"

    const/4 v1, 0x0

    .line 214
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OneHandedController"

    const-string v1, "Device doesn\'t support OneHanded feature"

    .line 215
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 219
    :cond_0
    new-instance v3, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    move-object/from16 v16, v3

    invoke-direct {v3}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;-><init>()V

    .line 220
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;

    move-object/from16 v17, v0

    invoke-direct {v0, v9}, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;-><init>(Landroid/content/Context;)V

    .line 221
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    move-object/from16 v18, v0

    invoke-direct {v0, v10}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 222
    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedState;

    move-object/from16 v19, v1

    invoke-direct {v1}, Lcom/android/wm/shell/onehanded/OneHandedState;-><init>()V

    .line 223
    new-instance v5, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    move-object v14, v5

    move-object/from16 v1, p1

    invoke-direct {v5, v9, v2, v1, v10}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Landroid/view/WindowManager;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 225
    new-instance v4, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    invoke-direct {v4, v9}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;-><init>(Landroid/content/Context;)V

    .line 227
    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    move-object v13, v1

    invoke-direct {v1, v0, v10}, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;-><init>(Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 229
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

    move-object v15, v0

    .line 230
    invoke-static/range {p0 .. p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-direct {v0, v9, v2, v1, v10}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Landroid/view/ViewConfiguration;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 231
    new-instance v6, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;

    move-object v11, v6

    invoke-direct {v6, v9, v2, v10}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Ljava/util/concurrent/Executor;)V

    .line 233
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    move-object v12, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;Lcom/android/wm/shell/onehanded/OneHandedAnimationController;Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 236
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    move-object/from16 v20, v0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    const-string v0, "overlay"

    .line 238
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 237
    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v21

    .line 239
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedController;

    move-object v8, v0

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v22, p4

    move-object/from16 v23, p6

    move-object/from16 v24, p7

    invoke-direct/range {v8 .. v24}, Lcom/android/wm/shell/onehanded/OneHandedController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;Lcom/android/wm/shell/onehanded/OneHandedState;Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;Landroid/content/om/IOverlayManager;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V

    return-object v0
.end method

.method private getObserver(Ljava/lang/Runnable;)Landroid/database/ContentObserver;
    .locals 2

    .line 473
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedController$5;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$5;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private isInitialized()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mGestureHandler:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string p0, "OneHandedController"

    const-string v0, "Components may not initialized yet!"

    .line 200
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(IIILandroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->onRotateDisplay(Landroid/content/Context;ILandroid/window/WindowContainerTransaction;)V

    .line 116
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mGestureHandler:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->onRotateDisplay(Lcom/android/wm/shell/common/DisplayLayout;)V

    return-void
.end method

.method private synthetic lambda$setupCallback$1()V
    .locals 1

    const/4 v0, 0x2

    .line 417
    invoke-direct {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded(I)V

    return-void
.end method

.method private synthetic lambda$setupTimeoutListener$2(I)V
    .locals 0

    const/4 p1, 0x6

    .line 571
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded(I)V

    return-void
.end method

.method private synthetic lambda$updateOneHandedEnabled$3()V
    .locals 0

    .line 587
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded()V

    return-void
.end method

.method private onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    if-eqz v0, :cond_1

    .line 653
    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 657
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method private onUserSwitch(I)V
    .locals 0

    .line 662
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->unregisterSettingObservers()V

    .line 663
    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    .line 664
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->registerSettingObservers(I)V

    .line 665
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateSettings()V

    .line 666
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateOneHandedEnabled()V

    return-void
.end method

.method private registerGestureCallback(Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;)V
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mGestureHandler:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->setGestureEventListener(Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;)V

    return-void
.end method

.method private registerSettingObservers(I)V
    .locals 4

    .line 429
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 431
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mActivatedObserver:Landroid/database/ContentObserver;

    const-string v3, "one_handed_mode_activated"

    .line 429
    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;I)Landroid/net/Uri;

    .line 432
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 433
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mEnabledObserver:Landroid/database/ContentObserver;

    const-string v3, "one_handed_mode_enabled"

    .line 432
    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;I)Landroid/net/Uri;

    .line 434
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 435
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutObserver:Landroid/database/ContentObserver;

    const-string v3, "one_handed_mode_timeout"

    .line 434
    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;I)Landroid/net/Uri;

    .line 436
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 437
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskChangeExitObserver:Landroid/database/ContentObserver;

    const-string v3, "taps_app_to_exit"

    .line 436
    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;I)Landroid/net/Uri;

    .line 438
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 440
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mSwipeToNotificationEnabledObserver:Landroid/database/ContentObserver;

    const-string v2, "swipe_bottom_to_notification_enabled"

    .line 438
    invoke-virtual {v0, v2, v1, p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;I)Landroid/net/Uri;

    return-void
.end method

.method private setEnabledGesturalOverlay(Z)V
    .locals 2

    .line 632
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string v0, "com.android.internal.systemui.onehanded.gestural"

    const/4 v1, -0x2

    invoke-interface {p0, v0, p1, v1}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 634
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private setThreeButtonModeEnabled(Z)V
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mGestureHandler:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->onThreeButtonModeEnabled(Z)V

    return-void
.end method

.method private setupCallback()V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->registerTouchEventListener(Lcom/android/wm/shell/onehanded/OneHandedTouchHandler$OneHandedTouchEventCallback;)V

    .line 418
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    .line 419
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mGestureHandler:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    .line 420
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    .line 421
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mBackgroundPanelOrganizer:Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    .line 422
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTransitionCallBack:Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    .line 423
    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskChangeToExit:Z

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListenerCallback:Lcom/android/wm/shell/common/TaskStackListenerCallback;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    :cond_0
    return-void
.end method

.method private setupGesturalOverlay()V
    .locals 4

    const-string v0, "com.android.internal.systemui.onehanded.gestural"

    .line 612
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 613
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    .line 612
    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 619
    :try_start_0
    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const/4 v3, -0x2

    invoke-interface {v2, v0, v3}, Landroid/content/om/IOverlayManager;->setHighestPriority(Ljava/lang/String;I)Z

    .line 620
    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {v2, v0, v3}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v1, :cond_1

    .line 623
    invoke-virtual {v1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 625
    invoke-direct {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setEnabledGesturalOverlay(Z)V

    :cond_1
    return-void
.end method

.method private setupTimeoutListener()V
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->registerTimeoutListener(Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler$TimeoutListener;)V

    return-void
.end method

.method private stopOneHanded(I)V
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedState;->isTransitioning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedState;->setState(I)V

    .line 395
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedAccessibilityUtil:Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;

    .line 396
    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->getOneHandedStopDescription()Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->announcementForScreenReader(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->scheduleOffset(II)V

    .line 398
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->removeTimer()V

    .line 399
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private unregisterSettingObservers()V
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->unregisterSettingsKeyObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 446
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->unregisterSettingsKeyObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 448
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskChangeExitObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->unregisterSettingsKeyObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 450
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mSwipeToNotificationEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->unregisterSettingsKeyObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateDisplayLayout(I)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    .line 467
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->setDisplayLayout(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 468
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mGestureHandler:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 469
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;)V

    return-void
.end method

.method private updateOneHandedEnabled()V
    .locals 3

    .line 586
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedState;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    invoke-interface {v0, v2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    iget-boolean v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->onOneHandedEnabled(Z)V

    .line 591
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mGestureHandler:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

    iget-boolean v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsSwipeToNotificationEnabled:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->onGestureEnabled(Z)V

    .line 593
    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    if-nez v0, :cond_4

    .line 594
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->unregisterOrganizer()V

    .line 595
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mBackgroundPanelOrganizer:Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->unregisterOrganizer()V

    return-void

    .line 600
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->getDisplayAreaTokenMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 601
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->registerOrganizer(I)Ljava/util/List;

    .line 605
    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mBackgroundPanelOrganizer:Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->getBackgroundSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_6

    .line 606
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mBackgroundPanelOrganizer:Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->registerOrganizer(I)Ljava/util/List;

    :cond_6
    return-void
.end method

.method private updateSettings()V
    .locals 4

    .line 455
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 456
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    move-result v0

    .line 455
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setOneHandedEnabled(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 458
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeTimeout(Landroid/content/ContentResolver;I)I

    move-result v1

    .line 457
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->setTimeout(I)V

    .line 459
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 460
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsTapsAppToExit(Landroid/content/ContentResolver;I)Z

    move-result v0

    .line 459
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setTaskChangeToExit(Z)V

    .line 461
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 462
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsSwipeToNotificationEnabled(Landroid/content/ContentResolver;I)Z

    move-result v0

    .line 461
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setSwipeToNotificationEnabled(Z)V

    return-void
.end method


# virtual methods
.method public asOneHanded()Lcom/android/wm/shell/onehanded/OneHanded;
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mImpl:Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 671
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "OneHandedController"

    .line 672
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mOffSetFraction="

    .line 673
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 674
    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOffSetFraction:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, "  mLockedDisabled="

    .line 675
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 676
    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mLockedDisabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mUserId="

    .line 677
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 678
    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 680
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mBackgroundPanelOrganizer:Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->dump(Ljava/io/PrintWriter;)V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    if-eqz v0, :cond_1

    .line 685
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->dump(Ljava/io/PrintWriter;)V

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mGestureHandler:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

    if-eqz v0, :cond_2

    .line 689
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->dump(Ljava/io/PrintWriter;)V

    .line 692
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    if-eqz v0, :cond_3

    .line 693
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->dump(Ljava/io/PrintWriter;)V

    .line 696
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    if-eqz v0, :cond_4

    .line 697
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->dump(Ljava/io/PrintWriter;)V

    .line 700
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    if-eqz v0, :cond_5

    .line 701
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedState;->dump(Ljava/io/PrintWriter;)V

    .line 704
    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    if-eqz v0, :cond_6

    .line 705
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->dump(Ljava/io/PrintWriter;)V

    .line 708
    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedAccessibilityUtil:Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;

    if-eqz v0, :cond_7

    .line 709
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->dump(Ljava/io/PrintWriter;)V

    .line 712
    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    const-string v3, "  "

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/ContentResolver;I)V

    .line 714
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.internal.systemui.onehanded.gestural"

    const/4 v2, -0x2

    .line 717
    invoke-interface {p0, v1, v2}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v0, :cond_8

    .line 721
    invoke-virtual {v0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "  OverlayInfo="

    .line 722
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method isLockedDisabled()Z
    .locals 0

    .line 577
    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mLockedDisabled:Z

    return p0
.end method

.method isOneHandedEnabled()Z
    .locals 0

    .line 582
    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    return p0
.end method

.method notifyShortcutState(I)V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 357
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    .line 356
    invoke-virtual {v0, v1, p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->setOneHandedModeActivated(Landroid/content/ContentResolver;II)Z

    return-void
.end method

.method onActivatedActionChanged()V
    .locals 4

    .line 483
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedState;->isTransitioning()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isOneHandedEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedState;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 488
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 489
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    .line 488
    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getOneHandedModeActivated(Landroid/content/ContentResolver;I)Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    .line 494
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->startOneHanded()V

    goto :goto_1

    .line 496
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded()V

    :cond_3
    :goto_1
    return-void
.end method

.method onEnabledSettingChanged()V
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 504
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    .line 503
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    move-result v0

    .line 505
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    .line 509
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setOneHandedEnabled(Z)V

    if-nez v0, :cond_2

    .line 512
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 514
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    .line 513
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsSwipeToNotificationEnabled(Landroid/content/ContentResolver;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 512
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setEnabledGesturalOverlay(Z)V

    return-void
.end method

.method onSwipeToNotificationEnabledSettingChanged()V
    .locals 3

    .line 559
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 561
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    .line 560
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsSwipeToNotificationEnabled(Landroid/content/ContentResolver;I)Z

    move-result v0

    .line 562
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setSwipeToNotificationEnabled(Z)V

    if-nez v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 567
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    .line 566
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 565
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setEnabledGesturalOverlay(Z)V

    return-void
.end method

.method onTaskChangeExitSettingChanged()V
    .locals 3

    .line 548
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 549
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    .line 548
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsTapsAppToExit(Landroid/content/ContentResolver;I)Z

    move-result v0

    .line 550
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :cond_0
    const/16 v2, 0xb

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    .line 554
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setTaskChangeToExit(Z)V

    return-void
.end method

.method onTimeoutSettingChanged()V
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 520
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    .line 519
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeTimeout(Landroid/content/ContentResolver;I)I

    move-result v0

    .line 521
    sget-object v1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->INVALID:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    invoke-virtual {v1}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->getId()I

    move-result v1

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    goto :goto_0

    :cond_1
    const/16 v1, 0x10

    goto :goto_0

    :cond_2
    const/16 v1, 0xf

    goto :goto_0

    :cond_3
    const/16 v1, 0xe

    .line 539
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    .line 541
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    if-eqz p0, :cond_4

    .line 542
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->setTimeout(I)V

    :cond_4
    return-void
.end method

.method registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    return-void
.end method

.method setLockedDisabled(ZZ)V
    .locals 3

    .line 640
    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsSwipeToNotificationEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-ne p2, v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    move p1, v1

    .line 645
    :goto_2
    iput-boolean p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mLockedDisabled:Z

    .line 648
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mGestureHandler:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

    if-nez p1, :cond_4

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->onGestureEnabled(Z)V

    return-void
.end method

.method setOneHandedEnabled(Z)V
    .locals 0

    .line 330
    iput-boolean p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    .line 331
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateOneHandedEnabled()V

    return-void
.end method

.method setSwipeToNotificationEnabled(Z)V
    .locals 0

    .line 350
    iput-boolean p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsSwipeToNotificationEnabled:Z

    .line 351
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateOneHandedEnabled()V

    return-void
.end method

.method setTaskChangeToExit(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListenerCallback:Lcom/android/wm/shell/common/TaskStackListenerCallback;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListenerCallback:Lcom/android/wm/shell/common/TaskStackListenerCallback;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->removeListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    .line 343
    :goto_0
    iput-boolean p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskChangeToExit:Z

    return-void
.end method

.method startOneHanded()V
    .locals 3

    .line 362
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isLockedDisabled()Z

    move-result v0

    const-string v1, "OneHandedController"

    if-eqz v0, :cond_0

    const-string p0, "Temporary lock disabled"

    .line 363
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedState;->isTransitioning()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedState;->isInOneHanded()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->rotation()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const-string p0, "One handed mode only support portrait mode"

    .line 371
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedState;->setState(I)V

    .line 375
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 376
    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOffSetFraction:F

    mul-float/2addr v0, v1

    .line 375
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 377
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedAccessibilityUtil:Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;

    .line 378
    invoke-virtual {v1}, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->getOneHandedStartDescription()Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->announcementForScreenReader(Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->scheduleOffset(II)V

    .line 380
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->resetTimer()V

    .line 381
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method stopOneHanded()V
    .locals 1

    const/4 v0, 0x1

    .line 387
    invoke-direct {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded(I)V

    return-void
.end method
