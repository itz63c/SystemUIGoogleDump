.class public Lcom/android/wm/shell/onehanded/OneHandedController;
.super Ljava/lang/Object;
.source "OneHandedController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field private mBackgroundPanelOrganizer:Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;

.field private final mContext:Landroid/content/Context;

.field private mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mEnabledObserver:Landroid/database/ContentObserver;

.field private final mGestureHandler:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

.field private final mImpl:Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

.field private volatile mIsOneHandedEnabled:Z

.field private volatile mIsSwipeToNotificationEnabled:Z

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMainHandler:Landroid/os/Handler;

.field private mOffSetFraction:F

.field private final mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

.field private final mOverlayManager:Landroid/content/om/IOverlayManager;

.field private final mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

.field private final mSwipeToNotificationEnabledObserver:Landroid/database/ContentObserver;

.field private final mTaskChangeExitObserver:Landroid/database/ContentObserver;

.field private mTaskChangeToExit:Z

.field private final mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

.field private final mTaskStackListenerCallback:Lcom/android/wm/shell/common/TaskStackListenerCallback;

.field private final mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

.field private final mTimeoutObserver:Landroid/database/ContentObserver;

.field private final mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

.field private final mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;


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

.method public static synthetic $r8$lambda$OIsLMdd2jtDayXFNaXAAXvetlbU(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->onSwipeToNotificationEnabledSettingChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$PJXQgwxIYKcZHN6DCtzOR3d4C5A(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->onTaskChangeExitSettingChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$RKfgzULsn_7KVtSbUUTKz_tpyQ0(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->onTimeoutSettingChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$TIAVTrvdYRTgMXsHN_hR3QcEe6c(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->onEnabledSettingChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$Vyt1IYrk_OiVPD4P1AwCmrmcO1s(Lcom/android/wm/shell/onehanded/OneHandedController;IIILandroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/onehanded/OneHandedController;->lambda$new$0(IIILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;Landroid/content/om/IOverlayManager;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V
    .locals 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;Lcom/android/wm/shell/onehanded/OneHandedController$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mImpl:Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    .line 90
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedController-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    .line 102
    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    iput-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mAccessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 122
    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$2;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    iput-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListenerCallback:Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 186
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 187
    iput-object p3, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mBackgroundPanelOrganizer:Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;

    .line 188
    iput-object p4, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 189
    iput-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 190
    iput-object p5, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    .line 191
    iput-object p6, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    .line 192
    iput-object p7, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mGestureHandler:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

    .line 193
    iput-object p10, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 194
    iput-object p12, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 195
    iput-object p13, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainHandler:Landroid/os/Handler;

    .line 196
    iput-object p9, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    .line 197
    iput-object p11, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/wm/shell/R$fraction;->config_one_handed_offset:I

    const/4 p5, 0x1

    invoke-virtual {p3, p4, p5, p5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p3

    const/high16 p4, 0x42c80000    # 100.0f

    mul-float/2addr p3, p4

    .line 202
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    const-string p5, "persist.debug.one_handed_offset_percentage"

    .line 201
    invoke-static {p5, p3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p4

    .line 203
    iput p3, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOffSetFraction:F

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 204
    invoke-static {p3}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 207
    invoke-static {p3}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsSwipeToNotificationEnabled(Landroid/content/ContentResolver;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsSwipeToNotificationEnabled:Z

    .line 209
    iput-object p8, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    .line 211
    new-instance p3, Lcom/android/wm/shell/onehanded/OneHandedController-$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/onehanded/OneHandedController-$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    invoke-direct {p0, p3}, Lcom/android/wm/shell/onehanded/OneHandedController;->getObserver(Ljava/lang/Runnable;)Landroid/database/ContentObserver;

    move-result-object p3

    iput-object p3, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mEnabledObserver:Landroid/database/ContentObserver;

    .line 212
    new-instance p3, Lcom/android/wm/shell/onehanded/OneHandedController-$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/onehanded/OneHandedController-$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    invoke-direct {p0, p3}, Lcom/android/wm/shell/onehanded/OneHandedController;->getObserver(Ljava/lang/Runnable;)Landroid/database/ContentObserver;

    move-result-object p3

    iput-object p3, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutObserver:Landroid/database/ContentObserver;

    .line 213
    new-instance p3, Lcom/android/wm/shell/onehanded/OneHandedController-$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/onehanded/OneHandedController-$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    invoke-direct {p0, p3}, Lcom/android/wm/shell/onehanded/OneHandedController;->getObserver(Ljava/lang/Runnable;)Landroid/database/ContentObserver;

    move-result-object p3

    iput-object p3, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskChangeExitObserver:Landroid/database/ContentObserver;

    .line 214
    new-instance p3, Lcom/android/wm/shell/onehanded/OneHandedController-$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/onehanded/OneHandedController-$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    .line 215
    invoke-direct {p0, p3}, Lcom/android/wm/shell/onehanded/OneHandedController;->getObserver(Ljava/lang/Runnable;)Landroid/database/ContentObserver;

    move-result-object p3

    iput-object p3, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mSwipeToNotificationEnabledObserver:Landroid/database/ContentObserver;

    .line 217
    invoke-virtual {p2, v0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    .line 219
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setupCallback()V

    .line 220
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setupSettingObservers()V

    .line 221
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setupTimeoutListener()V

    .line 222
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setupGesturalOverlay()V

    .line 223
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateSettings()V

    const-string p2, "accessibility"

    .line 226
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 227
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mAccessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/wm/shell/onehanded/OneHandedController;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/onehanded/OneHandedController;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/wm/shell/onehanded/OneHandedController;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/wm/shell/onehanded/OneHandedController;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/wm/shell/onehanded/OneHandedController;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsSwipeToNotificationEnabled:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/wm/shell/onehanded/OneHandedController;Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->registerGestureCallback(Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/wm/shell/onehanded/OneHandedController;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->setThreeButtonModeEnabled(Z)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/internal/logging/UiEventLogger;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)Lcom/android/wm/shell/onehanded/OneHandedController;
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v12, p4

    const-string v0, "ro.support_one_handed_mode"

    const/4 v1, 0x0

    .line 144
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OneHandedController"

    const-string v1, "Device doesn\'t support OneHanded feature"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 149
    :cond_0
    new-instance v9, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    invoke-direct {v9, v12}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 150
    new-instance v10, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-direct {v10, v7, v12}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 152
    new-instance v3, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    invoke-direct {v3, v7}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance v11, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    invoke-direct {v11, v9, v12}, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;-><init>(Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 156
    new-instance v13, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

    invoke-direct {v13, v7, v8, v12}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 158
    new-instance v14, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;

    invoke-direct {v14, v7, v8, v12}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Ljava/util/concurrent/Executor;)V

    .line 160
    new-instance v15, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v10

    move-object v5, v14

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/onehanded/OneHandedAnimationController;Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 163
    new-instance v6, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    const-string v0, "overlay"

    .line 165
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v16

    .line 166
    new-instance v17, Lcom/android/wm/shell/onehanded/OneHandedController;

    move-object/from16 v0, v17

    move-object v3, v14

    move-object v4, v15

    move-object v5, v11

    move-object v11, v6

    move-object v6, v10

    move-object v7, v13

    move-object v8, v9

    move-object v9, v11

    move-object/from16 v10, v16

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lcom/android/wm/shell/onehanded/OneHandedController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;Landroid/content/om/IOverlayManager;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V

    return-object v17
.end method

.method private getDisplaySize()Landroid/graphics/Point;
    .locals 3

    .line 424
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 425
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 426
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_0
    return-object v0
.end method

.method private getObserver(Ljava/lang/Runnable;)Landroid/database/ContentObserver;
    .locals 2

    .line 340
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedController$3;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$3;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private synthetic lambda$new$0(IIILandroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->onRotateDisplay(IILandroid/window/WindowContainerTransaction;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupCallback$1()V
    .locals 1

    const/4 v0, 0x2

    .line 306
    invoke-direct {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded(I)V

    return-void
.end method

.method private synthetic lambda$setupTimeoutListener$2(I)V
    .locals 0

    const/4 p1, 0x6

    .line 414
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded(I)V

    return-void
.end method

.method private onEnabledSettingChanged()V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 350
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 349
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 351
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setOneHandedEnabled(Z)V

    if-nez v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 360
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 359
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsSwipeToNotificationEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 358
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setEnabledGesturalOverlay(Z)V

    return-void
.end method

.method private onSwipeToNotificationEnabledSettingChanged()V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 404
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 403
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsSwipeToNotificationEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 405
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setSwipeToNotificationEnabled(Z)V

    if-nez v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 410
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 409
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 408
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setEnabledGesturalOverlay(Z)V

    return-void
.end method

.method private onTaskChangeExitSettingChanged()V
    .locals 3

    .line 392
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 393
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 392
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsTapsAppToExit(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 394
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :cond_0
    const/16 v2, 0xb

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    .line 398
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setTaskChangeToExit(Z)V

    return-void
.end method

.method private onTimeoutSettingChanged()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 365
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 364
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeTimeout(Landroid/content/ContentResolver;)I

    move-result v0

    .line 366
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

    .line 384
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    .line 386
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    if-eqz p0, :cond_4

    .line 387
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->setTimeout(I)V

    :cond_4
    return-void
.end method

.method private registerGestureCallback(Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;)V
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mGestureHandler:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->setGestureEventListener(Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;)V

    return-void
.end method

.method private setEnabledGesturalOverlay(Z)V
    .locals 2

    .line 469
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

    .line 471
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private setThreeButtonModeEnabled(Z)V
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mGestureHandler:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->onThreeButtonModeEnabled(Z)V

    return-void
.end method

.method private setupCallback()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/onehanded/OneHandedController-$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->registerTouchEventListener(Lcom/android/wm/shell/onehanded/OneHandedTouchHandler$OneHandedTouchEventCallback;)V

    .line 307
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    .line 308
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mGestureHandler:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    .line 309
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    .line 310
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mBackgroundPanelOrganizer:Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    .line 311
    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskChangeToExit:Z

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListenerCallback:Lcom/android/wm/shell/common/TaskStackListenerCallback;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    :cond_0
    return-void
.end method

.method private setupGesturalOverlay()V
    .locals 4

    const-string v0, "com.android.internal.systemui.onehanded.gestural"

    .line 449
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 456
    :try_start_0
    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const/4 v3, -0x2

    invoke-interface {v2, v0, v3}, Landroid/content/om/IOverlayManager;->setHighestPriority(Ljava/lang/String;I)Z

    .line 457
    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {v2, v0, v3}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v1, :cond_1

    .line 460
    invoke-virtual {v1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 462
    invoke-direct {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setEnabledGesturalOverlay(Z)V

    :cond_1
    return-void
.end method

.method private setupSettingObservers()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 318
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mEnabledObserver:Landroid/database/ContentObserver;

    const-string v2, "one_handed_mode_enabled"

    .line 317
    invoke-static {v2, v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;)Landroid/net/Uri;

    .line 319
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 320
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutObserver:Landroid/database/ContentObserver;

    const-string v2, "one_handed_mode_timeout"

    .line 319
    invoke-static {v2, v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;)Landroid/net/Uri;

    .line 321
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 322
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskChangeExitObserver:Landroid/database/ContentObserver;

    const-string v2, "taps_app_to_exit"

    .line 321
    invoke-static {v2, v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;)Landroid/net/Uri;

    .line 323
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 325
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mSwipeToNotificationEnabledObserver:Landroid/database/ContentObserver;

    const-string v1, "swipe_bottom_to_notification_enabled"

    .line 323
    invoke-static {v1, v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;)Landroid/net/Uri;

    return-void
.end method

.method private setupTimeoutListener()V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/onehanded/OneHandedController-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->registerTimeoutListener(Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler$TimeoutListener;)V

    return-void
.end method

.method private stopOneHanded(I)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->isInOneHanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->scheduleOffset(II)V

    .line 286
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->removeTimer()V

    .line 287
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    :cond_0
    return-void
.end method

.method private updateOneHandedEnabled()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->isInOneHanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded()V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->unregisterOrganizer()V

    .line 437
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mBackgroundPanelOrganizer:Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->unregisterOrganizer()V

    .line 438
    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->registerOrganizer(I)Ljava/util/List;

    .line 441
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mBackgroundPanelOrganizer:Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->registerOrganizer(I)Ljava/util/List;

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    iget-boolean v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->onOneHandedEnabled(Z)V

    .line 445
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mGestureHandler:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;

    iget-boolean v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    if-nez v1, :cond_3

    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsSwipeToNotificationEnabled:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->onOneHandedEnabled(Z)V

    return-void
.end method

.method private updateSettings()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 330
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 329
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setOneHandedEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 332
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeTimeout(Landroid/content/ContentResolver;)I

    move-result v1

    .line 331
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->setTimeout(I)V

    .line 333
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 334
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsTapsAppToExit(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 333
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setTaskChangeToExit(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    .line 336
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsSwipeToNotificationEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 335
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setSwipeToNotificationEnabled(Z)V

    return-void
.end method


# virtual methods
.method public asOneHanded()Lcom/android/wm/shell/onehanded/OneHanded;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mImpl:Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "OneHandedControllerstates: "

    .line 477
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mOffSetFraction="

    .line 478
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 479
    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOffSetFraction:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 481
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->dump(Ljava/io/PrintWriter;)V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    if-eqz v0, :cond_1

    .line 486
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->dump(Ljava/io/PrintWriter;)V

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    if-eqz v0, :cond_2

    .line 490
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->dump(Ljava/io/PrintWriter;)V

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    if-eqz v0, :cond_3

    .line 494
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->dump(Ljava/io/PrintWriter;)V

    .line 497
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "  "

    invoke-static {p1, v1, v0}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 499
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.internal.systemui.onehanded.gestural"

    const/4 v2, -0x2

    .line 502
    invoke-interface {p0, v1, v2}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v0, :cond_4

    .line 506
    invoke-virtual {v0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "  OverlayInfo="

    .line 507
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    return-void
.end method

.method setOneHandedEnabled(Z)V
    .locals 0

    .line 239
    iput-boolean p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    .line 240
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateOneHandedEnabled()V

    return-void
.end method

.method setSwipeToNotificationEnabled(Z)V
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsSwipeToNotificationEnabled:Z

    .line 260
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateOneHandedEnabled()V

    return-void
.end method

.method setTaskChangeToExit(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListenerCallback:Lcom/android/wm/shell/common/TaskStackListenerCallback;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListenerCallback:Lcom/android/wm/shell/common/TaskStackListenerCallback;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->removeListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    .line 252
    :goto_0
    iput-boolean p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskChangeToExit:Z

    return-void
.end method

.method startOneHanded()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->isInOneHanded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOffSetFraction:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 267
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->scheduleOffset(II)V

    .line 268
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->resetTimer()V

    .line 270
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    :cond_0
    return-void
.end method

.method stopOneHanded()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->isInOneHanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->scheduleOffset(II)V

    .line 279
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->removeTimer()V

    :cond_0
    return-void
.end method
