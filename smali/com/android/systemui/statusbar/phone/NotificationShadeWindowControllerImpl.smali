.class public Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;
.super Ljava/lang/Object;
.source "NotificationShadeWindowControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationShadeWindowController;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;
    }
.end annotation


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mFaceAuthDisplayBrightness:F

.field private mForcePluginOpenListener:Lcom/android/systemui/statusbar/NotificationShadeWindowController$ForcePluginOpenListener;

.field private mHasTopUi:Z

.field private mHasTopUiChanged:Z

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardDisplayMode:Landroid/view/Display$Mode;

.field private final mKeyguardScreenRotation:Z

.field private final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mListener:Lcom/android/systemui/statusbar/NotificationShadeWindowController$OtherwisedCollapsedListener;

.field private final mLockScreenDisplayTimeout:J

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private final mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private mNotificationShadeView:Landroid/view/ViewGroup;

.field private mScreenBrightnessDoze:F

.field private mScrimsVisibilityListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$4GEOtct8MaLc3iZElS09aCo88IY(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->lambda$apply$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$fEqQB4HajyV7qytPhI-kXM4Jfz4(ILandroid/view/Display$Mode;Landroid/view/Display$Mode;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->lambda$new$0(ILandroid/view/Display$Mode;Landroid/view/Display$Mode;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/dump/DumpManager;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    .line 101
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    const/high16 v0, -0x40800000    # -1.0f

    .line 104
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mFaceAuthDisplayBrightness:F

    .line 762
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 114
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 116
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mActivityManager:Landroid/app/IActivityManager;

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->shouldEnableKeyguardScreenRotation()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardScreenRotation:Z

    .line 118
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 119
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getScreenBrightnessDoze()F

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mScreenBrightnessDoze:F

    .line 120
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 121
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 122
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 123
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 124
    const-class p2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p10, p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$integer;->config_lockScreenDisplayTimeout:I

    .line 127
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLockScreenDisplayTimeout:J

    .line 128
    check-cast p5, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 p2, 0x1

    .line 129
    invoke-interface {p5, v0, p2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    .line 131
    invoke-interface {p6, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p2

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p3

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcom/android/systemui/R$integer;->config_keyguardRefreshRate:I

    .line 139
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 141
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p4, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl-$$ExternalSyntheticLambda1;

    invoke-direct {p4, p1, p3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl-$$ExternalSyntheticLambda1;-><init>(ILandroid/view/Display$Mode;)V

    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 145
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Display$Mode;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardDisplayMode:Landroid/view/Display$Mode;

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->setStatusBarState(I)V

    return-void
.end method

.method private adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 1

    .line 285
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, -0x1

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_1

    .line 286
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardScreenRotation:Z

    if-eqz p1, :cond_2

    .line 287
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, 0x2

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_1

    .line 289
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, 0x5

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :goto_1
    return-void
.end method

.method private apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 2

    .line 393
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 394
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyFocusableFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 395
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyForceShowNavigationFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 396
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 397
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyVisibility(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 398
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 399
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyInputFeatures(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 400
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 401
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyModalFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 402
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyBrightness(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 403
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyHasTopUi(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 404
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyNotTouchable(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 405
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyStatusBarColorSpaceAgnosticFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 406
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 407
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUi:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    if-eq p1, v0, :cond_1

    .line 410
    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl-$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)V

    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/lang/Runnable;)V

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->notifyStateChangedCallbacks()V

    return-void
.end method

.method private applyBrightness(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 0

    .line 443
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceDozeBrightness:Z

    if-eqz p1, :cond_0

    .line 444
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mScreenBrightnessDoze:F

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 446
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mFaceAuthDisplayBrightness:F

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :goto_0
    return-void
.end method

.method private applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 1

    .line 352
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFitsSystemWindows()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 356
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    :cond_0
    return-void
.end method

.method private applyFocusableFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 3

    .line 297
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mNotificationShadeFocusable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mPanelExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 298
    :goto_0
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    const v2, -0x20001

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardOccluded:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardNeedsInput:Z

    if-nez v1, :cond_2

    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mRemoteInputActive:Z

    if-eqz v1, :cond_3

    .line 300
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    .line 301
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 302
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_1

    .line 311
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    .line 312
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 303
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 305
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardNeedsInput:Z

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 306
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 308
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 315
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/16 p1, 0x10

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-void
.end method

.method private applyForceShowNavigationFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 1

    .line 319
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mPanelExpanded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mRemoteInputActive:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, -0x800001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_1

    .line 321
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_1
    return-void
.end method

.method private applyHasTopUi(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 1

    .line 451
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mComponentsForcingTopUi:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    return-void
.end method

.method private applyInputFeatures(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 2

    .line 372
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mQsExpanded:Z

    if-nez v0, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceUserActivity:Z

    if-nez p1, :cond_0

    .line 375
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_0

    .line 378
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    :goto_0
    return-void
.end method

.method private applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 5

    .line 255
    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mScrimsVisibility:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 257
    :goto_0
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardShowing:Z

    if-nez v3, :cond_2

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 258
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v1

    :goto_2
    if-eqz v3, :cond_3

    .line 259
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBackdropShowing:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_3

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x100001

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 265
    :goto_3
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    if-eqz v0, :cond_4

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x80000

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_4

    .line 268
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v4, -0x80001

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 271
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardDisplayMode:Landroid/view/Display$Mode;

    if-eqz v0, :cond_8

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mStatusBarState:I

    if-ne v0, v1, :cond_5

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardFadingAway:Z

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardGoingAway:Z

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    .line 275
    :goto_5
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    if-nez p1, :cond_7

    if-eqz v1, :cond_6

    goto :goto_6

    .line 278
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    goto :goto_7

    .line 276
    :cond_7
    :goto_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardDisplayMode:Landroid/view/Display$Mode;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 280
    :goto_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    int-to-long p0, p0

    const-string v0, "display_mode_id"

    invoke-static {v0, p0, p1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    :cond_8
    return-void
.end method

.method private applyModalFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 0

    .line 435
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mHeadsUpShowing:Z

    if-eqz p1, :cond_0

    .line 436
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 438
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void
.end method

.method private applyNotTouchable(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 0

    .line 455
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mNotTouchable:Z

    if-eqz p1, :cond_0

    .line 456
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 458
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void
.end method

.method private applyStatusBarColorSpaceAgnosticFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 1

    .line 384
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 385
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x1000000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 387
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, -0x1000001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_0
    return-void
.end method

.method private applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 2

    .line 361
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mQsExpanded:Z

    if-nez v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x2710

    goto :goto_0

    .line 365
    :cond_0
    iget-wide p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLockScreenDisplayTimeout:J

    :goto_0
    iput-wide p0, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_1

    .line 367
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    :goto_1
    return-void
.end method

.method private applyVisibility(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 1

    .line 328
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result v0

    .line 329
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForcePluginOpen:Z

    if-eqz p1, :cond_1

    .line 330
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mListener:Lcom/android/systemui/statusbar/NotificationShadeWindowController$OtherwisedCollapsedListener;

    if-eqz p1, :cond_0

    .line 331
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController$OtherwisedCollapsedListener;->setWouldOtherwiseCollapse(Z)V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 336
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 338
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private isExpanded(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z
    .locals 0

    .line 343
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceCollapsed:Z

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mPanelVisible:Z

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardFadingAway:Z

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mHeadsUpShowing:Z

    if-nez p0, :cond_2

    iget p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mScrimsVisibility:I

    if-nez p0, :cond_2

    :cond_0
    iget p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBackgroundBlurRadius:I

    if-gtz p0, :cond_2

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mLaunchingActivity:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$apply$1()V
    .locals 3

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mActivityManager:Landroid/app/IActivityManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setHasTopUi(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NotificationShadeWindowController"

    const-string v2, "Failed to call setHasTopUi"

    .line 414
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUi:Z

    return-void
.end method

.method private static synthetic lambda$new$0(ILandroid/view/Display$Mode;Landroid/view/Display$Mode;)Z
    .locals 1

    .line 142
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    float-to-int v0, v0

    if-ne v0, p0, :cond_0

    .line 143
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 144
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setKeyguardDark(Z)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x10

    or-int/lit16 p1, p1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, -0x11

    and-int/lit16 p1, p1, -0x2001

    .line 251
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    return-void
.end method

.method private setStatusBarState(I)V
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mStatusBarState:I

    .line 567
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method private shouldEnableKeyguardScreenRotation()Z
    .locals 2

    .line 174
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "lockscreen.rot_override"

    const/4 v1, 0x0

    .line 175
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/systemui/R$bool;->config_enableLockScreenRotation:I

    .line 176
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public attach()V
    .locals 7

    .line 187
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7f8

    const v4, -0x7f7bffb8

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 197
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 199
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const-string v1, "NotificationShade"

    .line 201
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 208
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 209
    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    const/4 v2, 0x2

    iput v2, v1, Landroid/view/InsetsFlags;->behavior:I

    .line 211
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->onThemeChanged()V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->setKeyguardShowing(Z)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "NotificationShadeWindowController:"

    .line 652
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mKeyguardDisplayMode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardDisplayMode:Landroid/view/Display$Mode;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 655
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    const-string p1, "  "

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getForcePluginOpen()Z
    .locals 0

    .line 623
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForcePluginOpen:Z

    return p0
.end method

.method public isShowingWallpaper()Z
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBackdropShowing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public notifyStateChangedCallbacks()V
    .locals 5

    const/4 v0, 0x0

    .line 424
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    if-eqz v1, :cond_0

    .line 427
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardShowing:Z

    iget-boolean v4, v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardOccluded:Z

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    invoke-interface {v1, v3, v4, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;->onStateChanged(ZZZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRemoteInputActive(Z)V
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mRemoteInputActive:Z

    .line 590
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    .line 671
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->setKeyguardDark(Z)V

    return-void
.end method

.method public registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V
    .locals 2

    const/4 v0, 0x0

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBackdropShowing(Z)V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBackdropShowing:Z

    .line 502
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setBackgroundBlurRadius(I)V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBackgroundBlurRadius:I

    if-ne v1, p1, :cond_0

    return-void

    .line 546
    :cond_0
    iput p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBackgroundBlurRadius:I

    .line 547
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    .line 496
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 233
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mScreenBrightnessDoze:F

    return-void
.end method

.method public setDozing(Z)V
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    .line 606
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setFaceAuthDisplayBrightness(F)V
    .locals 0

    .line 238
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mFaceAuthDisplayBrightness:F

    .line 239
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setForceDozeBrightness(Z)V
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceDozeBrightness:Z

    .line 600
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setForcePluginOpen(Z)V
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForcePluginOpen:Z

    .line 612
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 613
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mForcePluginOpenListener:Lcom/android/systemui/statusbar/NotificationShadeWindowController$ForcePluginOpenListener;

    if-eqz p0, :cond_0

    .line 614
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController$ForcePluginOpenListener;->onChange(Z)V

    :cond_0
    return-void
.end method

.method public setForcePluginOpenListener(Lcom/android/systemui/statusbar/NotificationShadeWindowController$ForcePluginOpenListener;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mForcePluginOpenListener:Lcom/android/systemui/statusbar/NotificationShadeWindowController$ForcePluginOpenListener;

    return-void
.end method

.method public setForceWindowCollapsed(Z)V
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceCollapsed:Z

    .line 578
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setHeadsUpShowing(Z)V
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mHeadsUpShowing:Z

    .line 553
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setKeyguardFadingAway(Z)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardFadingAway:Z

    .line 508
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setKeyguardGoingAway(Z)V
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardGoingAway:Z

    .line 680
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setKeyguardNeedsInput(Z)V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardNeedsInput:Z

    .line 477
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardOccluded:Z

    .line 471
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardShowing:Z

    .line 465
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setLaunchingActivity(Z)V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mLaunchingActivity:Z

    .line 526
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setNotTouchable(Z)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mNotTouchable:Z

    .line 629
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setNotificationShadeFocusable(Z)V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mNotificationShadeFocusable:Z

    .line 490
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setNotificationShadeView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    return-void
.end method

.method public setPanelExpanded(Z)V
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mPanelExpanded:Z

    .line 584
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setPanelVisible(Z)V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mPanelVisible:Z

    .line 483
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mNotificationShadeFocusable:Z

    .line 484
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mQsExpanded:Z

    .line 514
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setRequestTopUi(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 691
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mComponentsForcingTopUi:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 693
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mComponentsForcingTopUi:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 695
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setScrimsVisibility(I)V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mScrimsVisibility:I

    .line 532
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 533
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mScrimsVisibilityListener:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public setScrimsVisibilityListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mScrimsVisibilityListener:Ljava/util/function/Consumer;

    if-eq v0, p1, :cond_0

    .line 169
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mScrimsVisibilityListener:Ljava/util/function/Consumer;

    :cond_0
    return-void
.end method

.method public setStateListener(Lcom/android/systemui/statusbar/NotificationShadeWindowController$OtherwisedCollapsedListener;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mListener:Lcom/android/systemui/statusbar/NotificationShadeWindowController$OtherwisedCollapsedListener;

    return-void
.end method

.method public setWallpaperSupportsAmbientMode(Z)V
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mWallpaperSupportsAmbientMode:Z

    .line 559
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method
