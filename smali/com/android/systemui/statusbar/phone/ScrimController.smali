.class public Lcom/android/systemui/statusbar/phone/ScrimController;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;,
        Lcom/android/systemui/statusbar/phone/ScrimController$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG_END_ALPHA:I

.field static final TAG_KEY_ANIM:I

.field private static final TAG_START_ALPHA:I


# instance fields
.field private mAnimateChange:Z

.field private mAnimationDelay:J

.field private mAnimationDuration:J

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mBehindAlpha:F

.field private mBehindTint:I

.field private mBlankScreen:Z

.field private mBlankingTransitionRunnable:Ljava/lang/Runnable;

.field private mBubbleAlpha:F

.field private mBubbleTint:I

.field private mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

.field private mClipsQsScrim:Z

.field private mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field private mDarkenWhileDragging:Z

.field private final mDefaultScrimAlpha:F

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mExpansionAffectsAlpha:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInFrontAlpha:F

.field private mInFrontTint:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mKeyguardOccluded:Z

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardVisibilityCallback:Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private mNeedsDrawableColorUpdate:Z

.field private mNotificationsAlpha:F

.field private mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

.field private mNotificationsTint:I

.field private mPanelExpansion:F

.field private mPendingFrameCallback:Ljava/lang/Runnable;

.field private mQsBottomVisible:Z

.field private mQsExpansion:F

.field private mScreenBlankingCallbackCalled:Z

.field private mScreenOn:Z

.field private mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

.field private mScrimBehindAlphaKeyguard:F

.field private mScrimBehindChangeRunnable:Ljava/lang/Runnable;

.field private mScrimForBubble:Lcom/android/systemui/scrim/ScrimView;

.field private mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

.field private final mScrimStateListener:Lcom/android/internal/util/function/TriConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/systemui/statusbar/phone/ScrimState;",
            "Ljava/lang/Float;",
            "Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;",
            ">;"
        }
    .end annotation
.end field

.field private mScrimVisibleListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScrimsVisibility:I

.field private mState:Lcom/android/systemui/statusbar/phone/ScrimState;

.field private final mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

.field private mTracking:Z

.field private mUpdatePending:Z

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

.field private mWakeLockHeld:Z

.field private mWallpaperSupportsAmbientMode:Z

.field private mWallpaperVisibilityTimedOut:Z


# direct methods
.method public static synthetic $r8$lambda$MhbYV3H8loW5FcDIoWsRbggtkbI(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->lambda$blankDisplay$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$YkN2ZjNfF7noPWKkUZ7H47zo0yw(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->lambda$transitionTo$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$f0G2QI2eYzDpTbnVP2yGZobIUoY(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimController;->lambda$startScrimAnimation$2(Landroid/view/View;ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vtIElQhFiBfGhO53Q_NwM0KVixU(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->lambda$blankDisplay$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$wvnwwFvDJQuQcFI3VtYSHK0voOs(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->lambda$applyAndDispatchExpansion$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ScrimController"

    const/4 v1, 0x3

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    .line 136
    sget v0, Lcom/android/systemui/R$id;->scrim:I

    sput v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    .line 137
    sget v0, Lcom/android/systemui/R$id;->scrim_alpha_start:I

    sput v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    .line 138
    sget v0, Lcom/android/systemui/R$id;->scrim_alpha_end:I

    sput v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_END_ALPHA:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljava/util/concurrent/Executor;)V
    .locals 4

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    const v0, 0x3e4ccccd    # 0.2f

    .line 163
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 167
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelExpansion:F

    const/4 v1, 0x1

    .line 172
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    const-wide/16 v2, -0x1

    .line 176
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    .line 179
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v2, -0x40800000    # -1.0f

    .line 181
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    .line 182
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    .line 183
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    .line 184
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleAlpha:F

    .line 215
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimStateListener:Lcom/android/internal/util/function/TriConsumer;

    .line 216
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    .line 217
    sget-object p1, Lcom/android/systemui/statusbar/phone/ScrimState;->BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;->setBubbleAlpha(F)V

    .line 219
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 220
    invoke-interface {p4}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    .line 221
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 222
    new-instance p1, Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

    const/4 p7, 0x0

    invoke-direct {p1, p0, p7}, Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/ScrimController$1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardVisibilityCallback:Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

    .line 223
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    .line 224
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 225
    new-instance p1, Lcom/android/systemui/util/AlarmTimeout;

    new-instance p7, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda1;

    invoke-direct {p7, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    const-string p10, "hide_aod_wallpaper"

    invoke-direct {p1, p3, p7, p10, p6}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    .line 227
    invoke-virtual {p5, p6}, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->setHandler(Landroid/os/Handler;)Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;

    move-result-object p1

    const-string p3, "Scrims"

    invoke-virtual {p1, p3}, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->setTag(Ljava/lang/String;)Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->build()Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 230
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 231
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 232
    new-instance p1, Lcom/android/systemui/statusbar/phone/ScrimController$1;

    invoke-direct {p1, p0, p4}, Lcom/android/systemui/statusbar/phone/ScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    invoke-interface {p4, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 239
    new-instance p1, Lcom/android/systemui/statusbar/phone/ScrimController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$2;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    invoke-interface {p9, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 256
    new-instance p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/ScrimController;ZJ)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardFadingAway(ZJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onThemeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/ScrimController$Callback;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->onFinished(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/ScrimController;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    return p1
.end method

.method private applyAndDispatchExpansion()V
    .locals 1

    .line 662
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyExpansionToAlpha()V

    .line 663
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    if-eqz v0, :cond_0

    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOrAdaptCurrentAnimation(Landroid/view/View;)V

    .line 667
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOrAdaptCurrentAnimation(Landroid/view/View;)V

    .line 668
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOrAdaptCurrentAnimation(Landroid/view/View;)V

    .line 669
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/scrim/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOrAdaptCurrentAnimation(Landroid/view/View;)V

    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchBackScrimState(F)V

    .line 674
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 675
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    .line 676
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private applyExpansionToAlpha()V
    .locals 6

    .line 587
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    if-nez v0, :cond_0

    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    const-wide v2, 0x3fe99999a0000000L    # 0.800000011920929

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-ne v0, v1, :cond_2

    .line 593
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolatedFraction()F

    move-result v0

    float-to-double v0, v0

    .line 594
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 595
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mClipsQsScrim:Z

    if-eqz v1, :cond_1

    .line 596
    iput v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    .line 597
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    goto :goto_0

    .line 599
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    .line 600
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    .line 602
    :goto_0
    iput v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    goto/16 :goto_6

    .line 603
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_3

    .line 605
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolatedFraction()F

    move-result v0

    float-to-double v0, v0

    .line 606
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 607
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    .line 608
    iput v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    goto/16 :goto_6

    .line 609
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_c

    .line 613
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolatedFraction()F

    move-result v0

    .line 614
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mClipsQsScrim:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getNotifAlpha()F

    move-result v1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha()F

    move-result v1

    .line 616
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    if-eqz v2, :cond_6

    .line 617
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    invoke-static {v2, v1, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    goto :goto_2

    .line 620
    :cond_6
    invoke-static {v5, v1, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    .line 623
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ScrimState;->getFrontAlpha()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    .line 625
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mClipsQsScrim:Z

    if-eqz v2, :cond_7

    .line 626
    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ScrimState;->getNotifTint()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 627
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ScrimState;->getNotifTint()I

    move-result v3

    .line 626
    invoke-static {v2, v3, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    goto :goto_3

    .line 629
    :cond_7
    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindTint()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 630
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindTint()I

    move-result v3

    .line 629
    invoke-static {v2, v3, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 632
    :goto_3
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsExpansion:F

    cmpl-float v3, v2, v5

    if-lez v3, :cond_9

    .line 633
    iget v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    invoke-static {v1, v3, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    .line 634
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mClipsQsScrim:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ScrimState;->getNotifTint()I

    move-result v2

    goto :goto_4

    .line 635
    :cond_8
    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindTint()I

    move-result v2

    .line 636
    :goto_4
    iget v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsExpansion:F

    invoke-static {v0, v2, v3}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 638
    :cond_9
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mClipsQsScrim:Z

    if-eqz v2, :cond_a

    .line 639
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    .line 640
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsTint:I

    .line 641
    iput v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    const/high16 v0, -0x1000000

    .line 642
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindTint:I

    goto :goto_6

    .line 644
    :cond_a
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    .line 645
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v1, v2, :cond_b

    .line 647
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolatedFraction()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    goto :goto_5

    .line 649
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolatedFraction()F

    move-result v1

    sub-float/2addr v4, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsExpansion:F

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    .line 651
    :goto_5
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindTint:I

    .line 654
    :cond_c
    :goto_6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 655
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scrim opacity is NaN for state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", front: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", back: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", notif: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blankDisplay()V
    .locals 3

    .line 1051
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x1000000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    .line 1055
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    .line 1077
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->doOnTheNextFrame(Ljava/lang/Runnable;)V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/ValueAnimator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1046
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private dispatchBackScrimState(F)V
    .locals 2

    .line 790
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mClipsQsScrim:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsBottomVisible:Z

    if-eqz v0, :cond_0

    .line 791
    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimStateListener:Lcom/android/internal/util/function/TriConsumer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p0}, Lcom/android/systemui/scrim/ScrimView;->getColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p0

    invoke-interface {v0, v1, p1, p0}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private dispatchScrimsVisible()V
    .locals 3

    .line 797
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mClipsQsScrim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    .line 799
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    goto :goto_1

    .line 801
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x2

    .line 807
    :goto_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimsVisibility:I

    if-eq v1, v0, :cond_4

    .line 808
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimsVisibility:I

    .line 809
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimVisibleListener:Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private getCurrentScrimAlpha(Landroid/view/View;)F
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_0

    .line 903
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    return p0

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_1

    .line 905
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    return p0

    .line 906
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_2

    .line 907
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    return p0

    .line 908
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_3

    .line 909
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleAlpha:F

    return p0

    .line 911
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown scrim view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getCurrentScrimTint(Landroid/view/View;)I
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_0

    .line 917
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontTint:I

    return p0

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_1

    .line 919
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindTint:I

    return p0

    .line 920
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_2

    .line 921
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsTint:I

    return p0

    .line 922
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_3

    .line 923
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleTint:I

    return p0

    .line 925
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown scrim view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getInterpolatedFraction()F
    .locals 0

    .line 814
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelExpansion:F

    invoke-static {p0}, Lcom/android/systemui/animation/Interpolators;->getNotificationScrimAlpha(F)F

    move-result p0

    return p0
.end method

.method private getScrimName(Lcom/android/systemui/scrim/ScrimView;)Ljava/lang/String;
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_0

    const-string p0, "front_scrim"

    return-object p0

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_1

    const-string p0, "behind_scrim"

    return-object p0

    .line 832
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_2

    const-string p0, "notifications_scrim"

    return-object p0

    .line 834
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, p0, :cond_3

    const-string p0, "bubble_scrim"

    return-object p0

    :cond_3
    const-string/jumbo p0, "unknown_scrim"

    return-object p0
.end method

.method private holdWakeLock()V
    .locals 3

    .line 469
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    if-nez v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string v1, "ScrimController"

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 471
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    .line 472
    invoke-interface {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "Cannot hold wake lock, it has not been set yet"

    .line 474
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private isAnimating(Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 991
    sget p0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$applyAndDispatchExpansion$1()V
    .locals 3

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getWallpaperAodDuration()J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    return-void
.end method

.method private synthetic lambda$blankDisplay$3()V
    .locals 1

    const/4 v0, 0x0

    .line 1062
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    .line 1063
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 1064
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    .line 1066
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    return-void
.end method

.method private synthetic lambda$blankDisplay$4()V
    .locals 4

    .line 1056
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v0, :cond_0

    .line 1057
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onDisplayBlanked()V

    const/4 v0, 0x1

    .line 1058
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    .line 1061
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    .line 1071
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOn:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x1f4

    .line 1072
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1073
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fading out scrims with delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScrimController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$startScrimAnimation$2(Landroid/view/View;ILandroid/animation/ValueAnimator;)V
    .locals 4

    .line 867
    sget v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 868
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 869
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v1

    .line 870
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v2

    .line 871
    invoke-static {v0, v2, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 872
    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 873
    invoke-static {p2, v1, p3}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

    .line 874
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    .line 875
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    return-void
.end method

.method private synthetic lambda$transitionTo$0()V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getWallpaperAodDuration()J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    return-void
.end method

.method private onFinished()V
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onFinished(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    return-void
.end method

.method private onFinished(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V
    .locals 3

    .line 945
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    return-void

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 951
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    .line 952
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/scrim/ScrimView;

    .line 953
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 961
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 962
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string v2, "ScrimController"

    invoke-interface {v0, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    .line 963
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    :cond_2
    if-eqz p1, :cond_3

    .line 967
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onFinished()V

    .line 969
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 970
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 976
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_4

    .line 977
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontTint:I

    .line 978
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindTint()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindTint:I

    .line 979
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getNotifTint()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsTint:I

    .line 980
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleTint:I

    .line 981
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontTint:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    .line 982
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindTint:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    .line 983
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsTint:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    .line 984
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/scrim/ScrimView;

    if-eqz p1, :cond_4

    .line 985
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleAlpha:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleTint:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    .line 954
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eq p1, p0, :cond_6

    .line 957
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onFinished()V

    :cond_6
    return-void
.end method

.method private onThemeChanged()V
    .locals 0

    .line 1119
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateThemeColors()V

    .line 1120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method private setKeyguardFadingAway(ZJ)V
    .locals 3

    .line 1228
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 1229
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimState;->setKeyguardFadingAway(ZJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setOrAdaptCurrentAnimation(Landroid/view/View;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 568
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v0

    .line 569
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsBottomVisible:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 570
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 572
    sget p0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    .line 573
    sget v1, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_END_ALPHA:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 574
    sget v3, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float v2, v0, v2

    add-float/2addr v4, v2

    .line 577
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 578
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 579
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_1

    .line 582
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    :goto_1
    return-void
.end method

.method private setScrimAlpha(Lcom/android/systemui/scrim/ScrimView;F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 819
    invoke-virtual {p1, v1}, Lcom/android/systemui/scrim/ScrimView;->setClickable(Z)V

    goto :goto_0

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/systemui/scrim/ScrimView;->setClickable(Z)V

    .line 824
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrim(Lcom/android/systemui/scrim/ScrimView;F)V

    return-void
.end method

.method private shouldFadeAwayWallpaper()Z
    .locals 3

    .line 421
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperSupportsAmbientMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 426
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-interface {p0}, Lcom/android/systemui/dock/DockManager;->isDocked()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private shouldUpdateFrontScrimAlpha()Z
    .locals 3

    .line 704
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 705
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-interface {v0}, Lcom/android/systemui/dock/DockManager;->isDocked()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    .line 709
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p0, v0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private startScrimAnimation(Landroid/view/View;F)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 860
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 861
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v1, :cond_0

    .line 862
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 864
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/scrim/ScrimView;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/scrim/ScrimView;->getTint()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 866
    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 877
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 878
    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 879
    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 880
    new-instance v1, Lcom/android/systemui/statusbar/phone/ScrimController$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$3;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 894
    sget v1, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 895
    sget p2, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_END_ALPHA:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 897
    sget p0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 898
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateScrim(Lcom/android/systemui/scrim/ScrimView;F)V
    .locals 6

    .line 1000
    invoke-virtual {p1}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result v0

    .line 1002
    sget v1, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 1008
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    .line 1011
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    return-void

    .line 1014
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    if-eqz v1, :cond_2

    .line 1016
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->blankDisplay()V

    return-void

    .line 1018
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 1021
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v1, :cond_3

    .line 1022
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onDisplayBlanked()V

    .line 1023
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    .line 1027
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v1, :cond_4

    .line 1028
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchBackScrimState(F)V

    :cond_4
    cmpl-float v1, p2, v0

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    move v1, v3

    .line 1032
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/scrim/ScrimView;->getTint()I

    move-result v4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v5

    if-eq v4, v5, :cond_6

    goto :goto_1

    :cond_6
    move v2, v3

    :goto_1
    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    .line 1035
    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    if-eqz v1, :cond_8

    .line 1036
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->startScrimAnimation(Landroid/view/View;F)V

    goto :goto_2

    .line 1039
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    :cond_9
    :goto_2
    return-void
.end method

.method private updateScrimColor(Landroid/view/View;FI)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 841
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 842
    instance-of v0, p1, Lcom/android/systemui/scrim/ScrimView;

    if-eqz v0, :cond_0

    .line 843
    check-cast p1, Lcom/android/systemui/scrim/ScrimView;

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimName(Lcom/android/systemui/scrim/ScrimView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_alpha"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimName(Lcom/android/systemui/scrim/ScrimView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_tint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 849
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 848
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 851
    invoke-virtual {p1, p3}, Lcom/android/systemui/scrim/ScrimView;->setTint(I)V

    .line 852
    invoke-virtual {p1, p2}, Lcom/android/systemui/scrim/ScrimView;->setViewAlpha(F)V

    goto :goto_0

    .line 854
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 856
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    return-void
.end method

.method private updateThemeColors()V
    .locals 5

    .line 1107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-nez v0, :cond_0

    return-void

    .line 1108
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10104e2

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1109
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 1110
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 1111
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v2, v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 1112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 1113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 1114
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v1

    const-wide/high16 v3, 0x4012000000000000L    # 4.5

    cmpl-double v1, v1, v3

    const/4 v2, 0x1

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1113
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 1115
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    return-void
.end method


# virtual methods
.method public attachViews(Lcom/android/systemui/scrim/ScrimView;Lcom/android/systemui/scrim/ScrimView;Lcom/android/systemui/scrim/ScrimView;Lcom/android/systemui/scrim/ScrimView;)V
    .locals 6

    .line 264
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 265
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    .line 266
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    .line 267
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/scrim/ScrimView;

    .line 268
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateThemeColors()V

    .line 270
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mClipsQsScrim:Z

    invoke-virtual {p1, p2}, Lcom/android/systemui/scrim/ScrimView;->enableBottomEdgeConcave(Z)V

    .line 271
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/systemui/scrim/ScrimView;->enableRoundedCorners(Z)V

    .line 273
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindChangeRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 274
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mMainExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, p3}, Lcom/android/systemui/scrim/ScrimView;->setChangeRunnable(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x0

    .line 275
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindChangeRunnable:Ljava/lang/Runnable;

    .line 278
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    .line 279
    :goto_0
    array-length p4, p1

    if-ge p3, p4, :cond_1

    .line 280
    aget-object v0, p1, p3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/scrim/ScrimView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ScrimState;->init(Lcom/android/systemui/scrim/ScrimView;Lcom/android/systemui/scrim/ScrimView;Lcom/android/systemui/scrim/ScrimView;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/dock/DockManager;)V

    .line 282
    aget-object p4, p1, p3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;->setScrimBehindAlphaKeyguard(F)V

    .line 283
    aget-object p4, p1, p3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;->setDefaultScrimAlpha(F)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 286
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    .line 287
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    .line 288
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    .line 289
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/scrim/ScrimView;

    if-eqz p1, :cond_2

    .line 290
    invoke-virtual {p1, p2}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    .line 292
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    .line 293
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardVisibilityCallback:Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected doOnTheNextFrame(Ljava/lang/Runnable;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1089
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    const-wide/16 v0, 0x20

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, " ScrimController: "

    .line 1125
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  state: "

    .line 1126
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1127
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  frontScrim:"

    .line 1129
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " viewAlpha="

    .line 1130
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1131
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p3}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(F)V

    const-string p3, " alpha="

    .line 1132
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1133
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " tint=0x"

    .line 1134
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1135
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/scrim/ScrimView;->getTint()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  behindScrim:"

    .line 1137
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1139
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1140
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1141
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1142
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1143
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/scrim/ScrimView;->getTint()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  notificationsScrim:"

    .line 1145
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1147
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1148
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1149
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1150
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1151
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/scrim/ScrimView;->getTint()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  bubbleScrim:"

    .line 1153
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1155
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(F)V

    .line 1156
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1157
    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleAlpha:F

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(F)V

    .line 1158
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1159
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/scrim/ScrimView;->getTint()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mTracking="

    .line 1161
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1162
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mDefaultScrimAlpha="

    .line 1163
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1164
    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(F)V

    const-string p1, "  mExpansionFraction="

    .line 1165
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1166
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelExpansion:F

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(F)V

    return-void
.end method

.method public getClipQsScrim()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 560
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mClipsQsScrim:Z

    return p0
.end method

.method public getState()Lcom/android/systemui/statusbar/phone/ScrimState;
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    return-object p0
.end method

.method public onExpandingFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 452
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    return-void
.end method

.method protected onHideWallpaperTimeout()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_0

    return-void

    .line 461
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->holdWakeLock()V

    const/4 v0, 0x1

    .line 462
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    .line 463
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getWallpaperFadeOutDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    .line 465
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    .line 932
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    .line 933
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v0, :cond_0

    .line 934
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onStart()V

    .line 936
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    const/4 p0, 0x1

    return p0
.end method

.method public onScreenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    .line 1192
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOn:Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    const/4 v0, 0x1

    .line 1181
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOn:Z

    .line 1182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1183
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScrimController"

    const-string v1, "Shorter blanking because screen turned on. All good."

    .line 1184
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1187
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public onTrackingStarted()V
    .locals 2

    const/4 v0, 0x1

    .line 447
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    .line 448
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    return-void
.end method

.method protected scheduleUpdate()V
    .locals 1

    .line 738
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 741
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 742
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    .line 743
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    :cond_1
    :goto_0
    return-void
.end method

.method setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 996
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public setAodFrontScrimAlpha(F)V
    .locals 1

    .line 694
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->shouldUpdateFrontScrimAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    .line 696
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    .line 699
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setAodFrontScrimAlpha(F)V

    .line 700
    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setAodFrontScrimAlpha(F)V

    return-void
.end method

.method public setClipsQsScrim(Z)V
    .locals 4

    .line 546
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mClipsQsScrim:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 549
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mClipsQsScrim:Z

    .line 550
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 551
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mClipsQsScrim:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimState;->setClipQsScrim(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-eqz p1, :cond_2

    .line 554
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mClipsQsScrim:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/scrim/ScrimView;->enableBottomEdgeConcave(Z)V

    :cond_2
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0

    return-void
.end method

.method public setExpansionAffectsAlpha(Z)V
    .locals 0

    .line 1196
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    if-eqz p1, :cond_0

    .line 1198
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyAndDispatchExpansion()V

    :cond_0
    return-void
.end method

.method public setHasBackdrop(Z)V
    .locals 4

    .line 1208
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1209
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setHasBackdrop(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1214
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_2

    .line 1215
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha()F

    move-result p1

    .line 1216
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1220
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 1221
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    .line 1222
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    :cond_2
    return-void

    .line 1217
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scrim opacity is NaN for state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", back: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKeyguardOccluded(Z)V
    .locals 0

    .line 1203
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardOccluded:Z

    .line 1204
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    return-void
.end method

.method public setLaunchingAffordanceWithPreview(Z)V
    .locals 3

    .line 1234
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 1235
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setLaunchingAffordanceWithPreview(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setNotificationsBounds(FFFF)V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/scrim/ScrimView;->setDrawableBounds(FFFF)V

    .line 511
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mClipsQsScrim:Z

    if-eqz p1, :cond_0

    .line 512
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Lcom/android/systemui/scrim/ScrimView;->setBottomEdgePosition(I)V

    :cond_0
    return-void
.end method

.method public setPanelExpansion(F)V
    .locals 1

    .line 488
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    .line 491
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelExpansion:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_3

    .line 492
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelExpansion:F

    .line 494
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 499
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    if-nez p1, :cond_2

    goto :goto_2

    .line 502
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyAndDispatchExpansion()V

    nop

    :cond_3
    :goto_2
    return-void

    .line 489
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fraction should not be NaN"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setQsPosition(FI)V
    .locals 3

    .line 523
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    .line 527
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsExpansion:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsBottomVisible:Z

    if-eq v2, p2, :cond_6

    .line 528
    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsExpansion:F

    .line 529
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsBottomVisible:Z

    .line 530
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object p2, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, p2, :cond_4

    sget-object p2, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, p2, :cond_4

    sget-object p2, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, p2, :cond_4

    sget-object p2, Lcom/android/systemui/statusbar/phone/ScrimState;->BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    .line 534
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    if-nez p1, :cond_5

    goto :goto_2

    .line 537
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyAndDispatchExpansion()V

    :cond_6
    :goto_2
    return-void
.end method

.method public setScrimBehindChangeRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-nez v0, :cond_0

    .line 1096
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindChangeRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 1098
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mMainExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/scrim/ScrimView;->setChangeRunnable(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_0
    return-void
.end method

.method protected setScrimBehindValues(F)V
    .locals 3

    .line 438
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    .line 439
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    const/4 v1, 0x0

    .line 440
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 441
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setScrimBehindAlphaKeyguard(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method public setScrimCornerRadius(I)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/scrim/ScrimView;->setCornerRadius(I)V

    .line 304
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/scrim/ScrimView;->setCornerRadius(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method setScrimVisibleListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimVisibleListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public setWakeLockScreenSensorActive(Z)V
    .locals 4

    .line 720
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 721
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setWakeLockScreenSensorActive(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 724
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_2

    .line 725
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha()F

    move-result p1

    .line 726
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 727
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    .line 728
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_1

    .line 732
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    goto :goto_1

    .line 729
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scrim opacity is NaN for state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", back: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public setWallpaperSupportsAmbientMode(Z)V
    .locals 2

    .line 1170
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperSupportsAmbientMode:Z

    .line 1171
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p0

    const/4 v0, 0x0

    .line 1172
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1173
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setWallpaperSupportsAmbientMode(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 1

    const/4 v0, 0x0

    .line 312
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    return-void
.end method

.method public transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V
    .locals 5

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 318
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eq p0, p2, :cond_0

    .line 319
    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onFinished()V

    :cond_0
    return-void

    .line 322
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State changed to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrimController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_e

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 331
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    const-wide/16 v1, 0x1000

    .line 332
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const-string v4, "scrim_state"

    invoke-static {v1, v2, v4, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 334
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v1, :cond_3

    .line 335
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onCancelled()V

    .line 337
    :cond_3
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 339
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;->prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    const/4 p2, 0x0

    .line 340
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    const-wide/16 v1, 0x0

    .line 341
    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 342
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBlanksScreen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    .line 343
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getAnimateChange()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 344
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getAnimationDuration()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    .line 346
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getFrontTint()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontTint:I

    .line 347
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindTint()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindTint:I

    .line 348
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getNotifTint()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsTint:I

    .line 349
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBubbleTint()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleTint:I

    .line 351
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getFrontAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    .line 352
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    .line 353
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBubbleAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleAlpha:F

    .line 354
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getNotifAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    .line 355
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_d

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_d

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_d

    .line 360
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyExpansionToAlpha()V

    .line 364
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->isLowPowerState()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 365
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->isLowPowerState()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 366
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->isLowPowerState()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 369
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 370
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v4, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 371
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    .line 373
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 374
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 375
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    .line 380
    :cond_5
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v1, :cond_6

    goto :goto_0

    :cond_6
    move v3, p2

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    .line 386
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->isLowPowerState()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 387
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->holdWakeLock()V

    .line 392
    :cond_7
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    .line 393
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->shouldFadeAwayWallpaper()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 394
    new-instance p1, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 399
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda7;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/util/AlarmTimeout;)V

    invoke-static {p2}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 402
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object p2, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, p2, :cond_9

    const-wide/16 p1, 0x64

    .line 403
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    goto :goto_2

    .line 405
    :cond_9
    sget-object p1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, p1, :cond_a

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 406
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p2, v0, :cond_b

    :cond_a
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p2, p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 407
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    if-nez p1, :cond_c

    .line 411
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onPreDraw()Z

    goto :goto_2

    .line 414
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 417
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchBackScrimState(F)V

    return-void

    .line 356
    :cond_d
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scrim opacity is NaN for state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", front: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", back: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", notif: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 327
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot change to UNINITIALIZED."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected updateScrims()V
    .locals 8

    .line 748
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 749
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    .line 751
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 752
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v4}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result v4

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 753
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v5}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result v5

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    if-nez v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    .line 756
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v6, v7, v0}, Lcom/android/systemui/scrim/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 757
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, v6, v4}, Lcom/android/systemui/scrim/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 758
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/scrim/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 760
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchBackScrimState(F)V

    .line 765
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v4, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v4, :cond_4

    sget-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v5, :cond_5

    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    if-eqz v5, :cond_5

    move v5, v2

    goto :goto_3

    :cond_5
    move v5, v3

    .line 768
    :goto_3
    sget-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v6, :cond_6

    if-ne v0, v4, :cond_7

    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardOccluded:Z

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v3

    :goto_4
    if-nez v5, :cond_8

    if-eqz v0, :cond_9

    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 771
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    .line 773
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlpha(Lcom/android/systemui/scrim/ScrimView;F)V

    .line 774
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlpha(Lcom/android/systemui/scrim/ScrimView;F)V

    .line 775
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlpha(Lcom/android/systemui/scrim/ScrimView;F)V

    .line 777
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/scrim/ScrimView;

    if-eqz v0, :cond_b

    .line 778
    invoke-virtual {v0}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    move v2, v3

    .line 779
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/scrim/ScrimView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/scrim/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 780
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimForBubble:Lcom/android/systemui/scrim/ScrimView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBubbleAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlpha(Lcom/android/systemui/scrim/ScrimView;F)V

    .line 783
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onFinished()V

    .line 784
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    return-void
.end method
