.class public abstract Lcom/android/systemui/statusbar/phone/PanelViewController;
.super Ljava/lang/Object;
.source "PanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;,
        Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;,
        Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected final mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field private mAnimateAfterExpanding:Z

.field private mAnimatingOnDown:Z

.field mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mBounceInterpolator:Landroid/view/animation/Interpolator;

.field private mClosing:Z

.field private mCollapsedAndHeadsUpOnDown:Z

.field protected mDownTime:J

.field private final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field private mExpandLatencyTracking:Z

.field private mExpandedFraction:F

.field protected mExpandedHeight:F

.field protected mExpanding:Z

.field protected mExpansionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/PanelExpansionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFixedDuration:I

.field private mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field private mFlingAnimationUtilsClosing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field private mFlingAnimationUtilsDismissing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field private final mFlingCollapseRunnable:Ljava/lang/Runnable;

.field private mFlingTarget:F

.field private mFlingVelocity:F

.field private mGestureWaitForTouchSlop:Z

.field private mHandlingPointerUp:Z

.field private mHasLayoutedSinceDown:Z

.field protected mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mHeightAnimator:Landroid/animation/ValueAnimator;

.field protected mHintAnimationRunning:Z

.field private mHintDistance:F

.field private mIgnoreXTouchSlop:Z

.field private mInitialOffsetOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInstantExpanding:Z

.field private mIsFlinging:Z

.field protected mIsLaunchAnimationRunning:Z

.field protected mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field protected final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private mMinExpandHeight:F

.field private mMotionAborted:Z

.field private mNextCollapseSpeedUpFactor:F

.field private mNotificationsDragEnabled:Z

.field private mOverExpandedBeforeFling:Z

.field private mPanelClosedOnDown:Z

.field private mPanelUpdateWhenAnimatorEnds:Z

.field protected final mPostCollapseRunnable:Ljava/lang/Runnable;

.field protected final mResources:Landroid/content/res/Resources;

.field private mSlopMultiplier:F

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field protected final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field protected final mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

.field private mTouchAboveFalsingThreshold:Z

.field private mTouchDisabled:Z

.field private mTouchSlop:I

.field private mTouchSlopExceeded:Z

.field protected mTouchSlopExceededBeforeDown:Z

.field private mTouchStartedInEmptyArea:Z

.field protected mTracking:Z

.field private mTrackingPointer:I

.field private mUnlockFalsingThreshold:I

.field private mUpdateFlingOnLayout:Z

.field private mUpdateFlingVelocity:F

.field private mUpwardsWhenThresholdReached:Z

.field private final mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVibrateOnOpening:Z

.field private final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field private final mView:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mViewName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$6EsfRZOWOBTl5bO0sUMfpd2u0wc(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->lambda$createHeightAnimator$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jrtj9F5YwAeTjd4kWpBdylI2PAI(Lcom/android/systemui/statusbar/phone/PanelViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->lambda$setExpandedHeightInternal$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$_m58bvWEDC7UwezPoc3RxMBJyxw(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->lambda$springBack$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eSEmw4TX0_Q9GLYNGrJsgpxez7c(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->lambda$startUnlockHintAnimationPhase1$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yshDweK71RGc6jsp16uB86ZasnI(Lcom/android/systemui/statusbar/phone/PanelViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->lambda$startUnlockHintAnimation$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/internal/util/LatencyTracker;Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFixedDuration:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    .line 101
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    .line 123
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 157
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mNextCollapseSpeedUpFactor:F

    .line 811
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelViewController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController$4;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    .line 1024
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelViewController$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController$8;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPostCollapseRunnable:Ljava/lang/Runnable;

    .line 205
    iput-object p11, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 206
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 207
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 208
    new-instance p7, Lcom/android/systemui/statusbar/phone/PanelViewController$1;

    invoke-direct {p7, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController$1;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    invoke-virtual {p1, p7}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->createLayoutChangeListener()Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;

    move-result-object p7

    invoke-virtual {p1, p7}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->createTouchHandler()Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;

    move-result-object p7

    invoke-virtual {p1, p7}, Lcom/android/systemui/statusbar/phone/PanelView;->setOnTouchListener(Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->createOnConfigurationChangedListener()Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;

    move-result-object p7

    invoke-virtual {p1, p7}, Lcom/android/systemui/statusbar/phone/PanelView;->setOnConfigurationChangedListener(Lcom/android/systemui/statusbar/phone/PanelView$OnConfigurationChangedListener;)V

    .line 223
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    .line 224
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 225
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 227
    invoke-virtual {p9}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->reset()Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-result-object p4

    const p5, 0x3f19999a    # 0.6f

    .line 228
    invoke-virtual {p4, p5}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->setMaxLengthSeconds(F)Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-result-object p4

    .line 229
    invoke-virtual {p4, p5}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->setSpeedUpFactor(F)Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-result-object p4

    .line 230
    invoke-virtual {p4}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->build()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 232
    invoke-virtual {p9}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->reset()Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-result-object p4

    const/high16 p7, 0x3f000000    # 0.5f

    .line 233
    invoke-virtual {p4, p7}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->setMaxLengthSeconds(F)Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-result-object p4

    .line 234
    invoke-virtual {p4, p5}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->setSpeedUpFactor(F)Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-result-object p4

    .line 235
    invoke-virtual {p4}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->build()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtilsClosing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 237
    invoke-virtual {p9}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->reset()Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-result-object p4

    .line 238
    invoke-virtual {p4, p7}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->setMaxLengthSeconds(F)Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-result-object p4

    .line 239
    invoke-virtual {p4, p5}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->setSpeedUpFactor(F)Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-result-object p4

    .line 240
    invoke-virtual {p4, p5}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->setX2(F)Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-result-object p4

    const p5, 0x3f570a3d    # 0.84f

    .line 241
    invoke-virtual {p4, p5}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->setY2(F)Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-result-object p4

    .line 242
    invoke-virtual {p4}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->build()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtilsDismissing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 243
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 244
    new-instance p4, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {p4}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    .line 245
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 246
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 247
    sget p2, Lcom/android/systemui/R$bool;->config_enableNotificationShadeDrag:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mNotificationsDragEnabled:Z

    .line 249
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 250
    sget p2, Lcom/android/systemui/R$bool;->config_vibrateOnIconAnimation:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVibrateOnOpening:Z

    .line 251
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    return-void
.end method

.method private abortAnimations()V
    .locals 2

    .line 878
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 879
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/PanelViewController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mViewName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Lcom/android/systemui/statusbar/phone/PanelView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mNotificationsDragEnabled:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchDisabled:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mMotionAborted:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mMotionAborted:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PanelViewController;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTrackingPointer:I

    return p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/phone/PanelViewController;I)I
    .locals 0

    .line 68
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTrackingPointer:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAnimatingOnDown:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAnimatingOnDown:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mMinExpandHeight:F

    return p0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F
    .locals 0

    .line 68
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mMinExpandHeight:F

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceeded:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchY:F

    return p0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F
    .locals 0

    .line 68
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchY:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingVelocity:F

    return p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchX:F

    return p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F
    .locals 0

    .line 68
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchX:F

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchStartedInEmptyArea:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchStartedInEmptyArea:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelClosedOnDown:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    return p0
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHasLayoutedSinceDown:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingOnLayout:Z

    return p0
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingOnLayout:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchAboveFalsingThreshold:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/view/VelocityTracker;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mGestureWaitForTouchSlop:Z

    return p0
.end method

.method static synthetic access$2902(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mGestureWaitForTouchSlop:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PanelViewController;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->springBack()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mIgnoreXTouchSlop:Z

    return p0
.end method

.method static synthetic access$3002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mIgnoreXTouchSlop:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startOpening(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$3202(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHandlingPointerUp:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;FFZ)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->endMotionEvent(Landroid/view/MotionEvent;FFZ)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialOffsetOnTouch:F

    return p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/phone/PanelViewController;)I
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getFalsingThreshold()I

    move-result p0

    return p0
.end method

.method static synthetic access$3602(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpwardsWhenThresholdReached:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/PanelViewController;FF)Z
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isDirectionUpwards(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/PanelViewController;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->abortAnimations()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingVelocity:F

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onFlingEnd(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mNextCollapseSpeedUpFactor:F

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInstantExpanding:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInstantExpanding:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAnimateAfterExpanding:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PanelViewController;Ljava/lang/Runnable;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addMovement(Landroid/view/MotionEvent;)V
    .locals 3

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 275
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 276
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float p0, v0

    neg-float v0, v1

    .line 277
    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method private createHeightAnimator(F)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 987
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 988
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private endClosing()V
    .locals 1

    .line 452
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 453
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    .line 454
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onClosingFinished()V

    :cond_0
    return-void
.end method

.method private endMotionEvent(Landroid/view/MotionEvent;FFZ)V
    .locals 7

    const/4 v0, -0x1

    .line 353
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTrackingPointer:I

    .line 354
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceeded:Z

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchX:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchY:F

    sub-float v0, p3, v0

    .line 355
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    .line 399
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 400
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowingAlternateAuthOrAnimating()Z

    move-result p1

    if-nez p1, :cond_c

    .line 401
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchX:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onEmptySpaceClick(F)Z

    move-result p1

    .line 402
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    goto/16 :goto_5

    .line 357
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 359
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 360
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-double v2, v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    float-to-double v4, v4

    .line 359
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 362
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 363
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v4

    .line 366
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v1, :cond_5

    if-eqz p4, :cond_4

    goto :goto_2

    .line 375
    :cond_4
    invoke-virtual {p0, v0, v2, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->flingExpands(FFFF)Z

    move-result p1

    goto :goto_3

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    move p1, v5

    goto :goto_3

    .line 372
    :cond_6
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelClosedOnDown:Z

    xor-int/2addr p1, v5

    .line 378
    :goto_3
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchAboveFalsingThreshold:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 379
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isFalsingThresholdNeeded()Z

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v6

    .line 378
    invoke-virtual {p4, p1, v1, v2, v6}, Lcom/android/systemui/doze/DozeLog;->traceFling(ZZZZ)V

    if-nez p1, :cond_7

    if-eqz v3, :cond_7

    .line 382
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result p4

    .line 383
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchY:F

    sub-float v1, p3, v1

    div-float/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    div-float p4, v0, p4

    .line 384
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    float-to-int p4, p4

    .line 385
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v3, 0xba

    invoke-virtual {v2, v3, v1, p4}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 386
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    sget-object v1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_UNLOCK:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    invoke-virtual {p4, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->log(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;)V

    :cond_7
    const/4 p4, 0x0

    cmpl-float p4, v0, p4

    if-nez p4, :cond_8

    const/4 p4, 0x7

    goto :goto_4

    :cond_8
    if-lez p4, :cond_9

    move p4, v4

    goto :goto_4

    .line 390
    :cond_9
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p4}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result p4

    if-eqz p4, :cond_a

    const/4 p4, 0x4

    goto :goto_4

    :cond_a
    const/16 p4, 0x8

    .line 393
    :goto_4
    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFalseTouch(FFI)Z

    move-result p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fling(FZZ)V

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    if-eqz p1, :cond_b

    .line 395
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelClosedOnDown:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHasLayoutedSinceDown:Z

    if-nez p1, :cond_b

    move v4, v5

    :cond_b
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingOnLayout:Z

    if-eqz v4, :cond_c

    .line 397
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingVelocity:F

    .line 405
    :cond_c
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    return-void
.end method

.method private getFalsingThreshold()I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 415
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUnlockFalsingThreshold:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private getStackHeightFraction(F)F
    .locals 0

    .line 680
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    .line 681
    sget-object p0, Lcom/android/systemui/animation/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    .line 682
    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method private isDirectionUpwards(FF)Z
    .locals 1

    .line 328
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchX:F

    sub-float/2addr p1, v0

    .line 329
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchY:F

    sub-float/2addr p2, p0

    const/4 p0, 0x0

    cmpl-float p0, p2, p0

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    return v0

    .line 333
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isFalseTouch(FFI)Z
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isFalsingThresholdNeeded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isClassifierEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p3}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    move-result p0

    return p0

    .line 507
    :cond_1
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchAboveFalsingThreshold:Z

    const/4 v0, 0x1

    if-nez p3, :cond_2

    return v0

    .line 510
    :cond_2
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpwardsWhenThresholdReached:Z

    if-eqz p3, :cond_3

    return v1

    .line 513
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isDirectionUpwards(FF)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private synthetic lambda$createHeightAnimator$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 989
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeightInternal(F)V

    return-void
.end method

.method private synthetic lambda$setExpandedHeightInternal$1()V
    .locals 1

    .line 703
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method private synthetic lambda$springBack$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 610
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setSectionPadding(F)V

    .line 611
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingTarget:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeightInternal(F)V

    return-void
.end method

.method private synthetic lambda$startUnlockHintAnimation$2()V
    .locals 1

    .line 897
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    .line 898
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onUnlockHintFinished()V

    const/4 v0, 0x0

    .line 899
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    return-void
.end method

.method private synthetic lambda$startUnlockHintAnimationPhase1$3(Landroid/view/View;)V
    .locals 2

    .line 954
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1c2

    .line 955
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private maybeOverScrollForShadeFlingOpen(F)V
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->isShadeOpening()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingVelocity:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3db80000    # -50.0f

    const/high16 v1, 0x41f00000    # 30.0f

    .line 692
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getStackHeightFraction(F)F

    move-result p1

    .line 691
    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    .line 693
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setSectionPadding(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onFlingEnd(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 631
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mIsFlinging:Z

    const/4 v1, 0x0

    .line 632
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 633
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->notifyPanelFlingEnd()V

    if-nez p1, :cond_0

    .line 635
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    .line 636
    invoke-virtual {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 637
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    goto :goto_0

    .line 639
    :cond_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    .line 640
    invoke-virtual {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 642
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method private setAnimator(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 960
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_0

    .line 961
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 962
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    .line 963
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    :cond_0
    return-void
.end method

.method private springBack()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 607
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 608
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0xc8

    .line 613
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 614
    sget-object v1, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 615
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelViewController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController$3;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 626
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 627
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x0
    .end array-data
.end method

.method private startOpening(Landroid/view/MotionEvent;)V
    .locals 5

    .line 299
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    .line 300
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->maybeVibrateOnOpening()V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayWidth()F

    move-result v0

    .line 306
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayHeight()F

    move-result v1

    .line 307
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getRotation()I

    move-result v2

    .line 309
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    div-float/2addr v4, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    div-float/2addr p1, v1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/16 v0, 0x530

    .line 309
    invoke-virtual {v3, v0, v4, p1, v2}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->writeAtFractionalPosition(IIII)V

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    sget-object p1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_UNLOCKED_NOTIFICATION_PANEL_EXPAND:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->log(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;)V

    return-void
.end method

.method private startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V
    .locals 7

    .line 921
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintDistance:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 922
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 923
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 924
    sget-object v3, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 925
    new-instance v3, Lcom/android/systemui/statusbar/phone/PanelViewController$6;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController$6;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 943
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 944
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    const/4 p1, 0x2

    new-array v0, p1, [Landroid/view/View;

    .line 946
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 947
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 948
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAmbientIndicationContainer()Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v0, v5

    :goto_0
    if-ge v4, p1, :cond_1

    .line 949
    aget-object v3, v0, v4

    if-nez v3, :cond_0

    goto :goto_1

    .line 953
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintDistance:F

    neg-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/View;)V

    .line 954
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 955
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V
    .locals 3

    .line 971
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1c2

    .line 972
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 973
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 974
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelViewController$7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController$7;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 982
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 983
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public addExpansionListener(Lcom/android/systemui/statusbar/phone/PanelExpansionListener;)V
    .locals 0

    .line 1007
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected abstract canCollapsePanelOnTouch()Z
.end method

.method public canPanelBeCollapsed()Z
    .locals 1

    .line 808
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected cancelHeightAnimator()V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 444
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 448
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->endClosing()V

    return-void
.end method

.method public collapse(ZF)V
    .locals 2

    .line 792
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->canPanelBeCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 794
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingStarted()V

    const/4 v0, 0x1

    .line 797
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    if-eqz p1, :cond_0

    .line 799
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mNextCollapseSpeedUpFactor:F

    .line 800
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x78

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 802
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fling(FZFZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public collapseWithDuration(I)V
    .locals 1

    .line 1064
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFixedDuration:I

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1065
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->collapse(ZF)V

    const/4 p1, -0x1

    .line 1066
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFixedDuration:I

    return-void
.end method

.method public abstract createLayoutChangeListener()Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;
.end method

.method protected abstract createOnConfigurationChangedListener()Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;
.end method

.method protected abstract createTouchHandler()Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    .line 1039
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x2

    aput-object p3, p1, v0

    .line 1040
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    const-string v0, "T"

    const-string v1, "f"

    if-eqz p3, :cond_0

    move-object p3, v0

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    const/4 v2, 0x3

    aput-object p3, p1, v2

    const/4 p3, 0x4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    aput-object v2, p1, p3

    const/4 p3, 0x5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, p1, p3

    const/4 p3, 0x6

    if-eqz v2, :cond_2

    .line 1041
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, " (started)"

    goto :goto_2

    :cond_2
    const-string v2, ""

    :goto_2
    aput-object v2, p1, p3

    const/4 p3, 0x7

    .line 1042
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchDisabled:Z

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    aput-object v0, p1, p3

    const-string p0, "[PanelView(%s): expandedHeight=%f maxPanelHeight=%d closing=%s tracking=%s timeAnim=%s%s touchDisabled=%s]"

    .line 1036
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public expand(Z)V
    .locals 1

    .line 820
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 824
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInstantExpanding:Z

    .line 825
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAnimateAfterExpanding:Z

    const/4 p1, 0x0

    .line 826
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingOnLayout:Z

    .line 827
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->abortAnimations()V

    .line 828
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz p1, :cond_1

    .line 829
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    .line 831
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpanding:Z

    if-eqz p1, :cond_2

    .line 832
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    .line 834
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    .line 838
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelViewController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController$5;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 862
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method protected fling(FZ)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 517
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fling(FZFZ)V

    return-void
.end method

.method protected fling(FZFZ)V
    .locals 7

    if-eqz p2, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    if-nez p2, :cond_1

    const/4 v0, 0x1

    .line 528
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    :cond_1
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    .line 530
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/PanelViewController;->flingToHeight(FZFFZ)V

    return-void
.end method

.method protected fling(FZZ)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 521
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fling(FZFZ)V

    return-void
.end method

.method protected flingExpands(FFFF)Z
    .locals 3

    .line 472
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    if-lez p1, :cond_1

    move v2, v0

    goto :goto_0

    .line 478
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    .line 480
    :goto_0
    invoke-direct {p0, p3, p4, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFalseTouch(FFI)Z

    move-result p3

    if-eqz p3, :cond_3

    return v1

    .line 483
    :cond_3
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {p3}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result p3

    cmpg-float p2, p2, p3

    if-gez p2, :cond_4

    .line 484
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldExpandWhenNotFlinging()Z

    move-result p0

    return p0

    :cond_4
    if-lez p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v0

    :goto_1
    return v1
.end method

.method protected flingToHeight(FZFFZ)V
    .locals 9

    .line 535
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    cmpl-float v0, p3, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOverExpansionAmount()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 541
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mIsFlinging:Z

    .line 542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOverExpansionAmount()F

    move-result v3

    cmpl-float v3, v3, v2

    if-lez v3, :cond_1

    move v1, v0

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mOverExpandedBeforeFling:Z

    .line 543
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 544
    iput p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingTarget:F

    if-eqz p2, :cond_3

    if-eqz p5, :cond_2

    cmpg-float p4, p1, v2

    if-gez p4, :cond_2

    move p1, v2

    .line 549
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p4

    int-to-float v8, p4

    move-object v4, v0

    move v6, p3

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    cmpl-float p3, p1, v2

    if-nez p3, :cond_7

    const-wide/16 p3, 0x15e

    .line 551
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 554
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldUseDismissingAnimation()Z

    move-result p5

    if-eqz p5, :cond_5

    cmpl-float p5, p1, v2

    if-nez p5, :cond_4

    .line 556
    sget-object p3, Lcom/android/systemui/animation/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/high16 p3, 0x43480000    # 200.0f

    .line 557
    iget p5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p5, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p5, v1

    add-float/2addr p5, p3

    float-to-long v3, p5

    .line 558
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 560
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtilsDismissing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    iget-object p5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 561
    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p5

    int-to-float v8, p5

    move-object v4, v0

    move v6, p3

    move v7, p1

    .line 560
    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    goto :goto_0

    .line 564
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtilsClosing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    iget-object p5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 565
    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p5

    int-to-float v8, p5

    move-object v4, v0

    move v6, p3

    move v7, p1

    .line 564
    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    :goto_0
    cmpl-float p3, p1, v2

    if-nez p3, :cond_6

    .line 570
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float p3, v1

    div-float/2addr p3, p4

    float-to-long p3, p3

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 572
    :cond_6
    iget p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFixedDuration:I

    const/4 p4, -0x1

    if-eq p3, p4, :cond_7

    int-to-long p3, p3

    .line 573
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 576
    :cond_7
    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingVelocity:F

    .line 577
    new-instance p1, Lcom/android/systemui/statusbar/phone/PanelViewController$2;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController$2;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 602
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 603
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 536
    :cond_8
    :goto_2
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 537
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->notifyPanelFlingEnd()V

    .line 538
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    return-void
.end method

.method protected getAmbientState()Lcom/android/systemui/statusbar/notification/stack/AmbientState;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    return-object p0
.end method

.method protected getCurrentExpandVelocity()F
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 410
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0
.end method

.method public getExpandedFraction()F
    .locals 0

    .line 767
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    return p0
.end method

.method public getExpandedHeight()F
    .locals 0

    .line 763
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    return p0
.end method

.method protected abstract getMaxPanelHeight()I
.end method

.method protected abstract getOverExpansionAmount()F
.end method

.method protected abstract getOverExpansionPixels()F
.end method

.method protected getTouchSlop(Landroid/view/MotionEvent;)F
    .locals 1

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 266
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlop:I

    int-to-float p1, p1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mSlopMultiplier:F

    mul-float/2addr p1, p0

    goto :goto_0

    .line 267
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlop:I

    int-to-float p1, p0

    :goto_0
    return p1
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 0

    .line 1071
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    return-object p0
.end method

.method public instantCollapse()V
    .locals 1

    .line 866
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->abortAnimations()V

    const/4 v0, 0x0

    .line 867
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedFraction(F)V

    .line 868
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpanding:Z

    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    .line 871
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInstantExpanding:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 872
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInstantExpanding:Z

    .line 873
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    :cond_1
    return-void
.end method

.method public isCollapsing()Z
    .locals 1

    .line 779
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mIsLaunchAnimationRunning:Z

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

.method public isEnabled()Z
    .locals 0

    .line 1075
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isFullyCollapsed()Z
    .locals 1

    .line 775
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFullyExpanded()Z
    .locals 1

    .line 771
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract isInContentBounds(FF)Z
.end method

.method protected abstract isPanelVisibleBecauseOfHeadsUp()Z
.end method

.method public isTracking()Z
    .locals 0

    .line 783
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    return p0
.end method

.method protected abstract isTrackingBlocked()Z
.end method

.method public isUnlockHintRunning()Z
    .locals 0

    .line 914
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    return p0
.end method

.method protected loadDimens()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlop:I

    .line 257
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mSlopMultiplier:F

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->hint_move_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintDistance:F

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->unlock_falsing_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUnlockFalsingThreshold:I

    return-void
.end method

.method protected maybeVibrateOnOpening()V
    .locals 1

    .line 316
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVibrateOnOpening:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    :cond_0
    return-void
.end method

.method protected notifyBarPanelExpansionChanged()V
    .locals 4

    .line 994
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 995
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInstantExpanding:Z

    if-nez v3, :cond_1

    .line 998
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 995
    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(FZ)V

    .line 1001
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1002
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;->onPanelExpansionChanged(FZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected final notifyExpandingFinished()V
    .locals 1

    .line 185
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->endClosing()V

    .line 186
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpanding:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpanding:Z

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onExpandingFinished()V

    :cond_0
    return-void
.end method

.method protected notifyExpandingStarted()V
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpanding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpanding:Z

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onExpandingStarted()V

    :cond_0
    return-void
.end method

.method protected onClosingFinished()V
    .locals 0

    .line 884
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    return-void
.end method

.method protected onEmptySpaceClick(F)Z
    .locals 0

    .line 1018
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1021
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onMiddleClicked()Z

    move-result p0

    return p0
.end method

.method protected onExpandingFinished()V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    return-void
.end method

.method protected onExpandingStarted()V
    .locals 0

    return-void
.end method

.method protected abstract onHeightUpdated(F)V
.end method

.method protected abstract onMiddleClicked()Z
.end method

.method protected onTrackingStarted()V
    .locals 1

    .line 429
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->endClosing()V

    const/4 v0, 0x1

    .line 430
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted()V

    .line 432
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingStarted()V

    .line 433
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 423
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    .line 424
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Z)V

    .line 425
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method protected onUnlockHintFinished()V
    .locals 0

    .line 906
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onHintFinished()V

    return-void
.end method

.method protected onUnlockHintStarted()V
    .locals 0

    .line 910
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onUnlockHintStarted()V

    return-void
.end method

.method protected requestPanelHeightUpdate()V
    .locals 2

    .line 657
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    .line 659
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 663
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    return-void

    .line 667
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isTrackingBlocked()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 671
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 672
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    return-void

    .line 676
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeight(F)V

    return-void
.end method

.method public abstract resetViews(Z)V
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    return-void
.end method

.method public setExpandedFraction(F)V
    .locals 1

    .line 759
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeight(F)V

    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 1

    .line 653
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOverExpansionPixels()F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeightInternal(F)V

    return-void
.end method

.method public setExpandedHeightInternal(F)V
    .locals 4

    .line 697
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const-string v1, "ExpandedHeight set to NaN"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->maybeOverScrollForShadeFlingOpen(F)V

    .line 701
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandLatencyTracking:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    cmpl-float v0, p1, v2

    if-eqz v0, :cond_1

    .line 702
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 704
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandLatencyTracking:Z

    .line 706
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOverExpansionAmount()F

    move-result v3

    sub-float/2addr v0, v3

    .line 707
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_3

    sub-float v1, p1, v0

    .line 708
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 709
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOverExpansionPixels()F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 710
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setOverExpansion(FZ)V

    .line 712
    :cond_2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOverExpansionAmount()F

    move-result v1

    add-float/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    goto :goto_0

    .line 714
    :cond_3
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    .line 715
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mOverExpandedBeforeFling:Z

    if-eqz v3, :cond_4

    sub-float/2addr p1, v0

    .line 716
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setOverExpansion(FZ)V

    .line 722
    :cond_4
    :goto_0
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v1

    if-gez v3, :cond_5

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    if-eqz p1, :cond_5

    .line 723
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    .line 724
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    .line 725
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_5
    cmpl-float p1, v0, v2

    if-nez p1, :cond_6

    goto :goto_1

    .line 729
    :cond_6
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    div-float v2, p1, v0

    .line 728
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    .line 730
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onHeightUpdated(F)V

    .line 731
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 0

    .line 1056
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    return-void
.end method

.method public setIsLaunchAnimationRunning(Z)V
    .locals 0

    .line 1060
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mIsLaunchAnimationRunning:Z

    return-void
.end method

.method protected abstract setOverExpansion(FZ)V
.end method

.method protected abstract setSectionPadding(F)V
.end method

.method public setTouchAndAnimationDisabled(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchDisabled:Z

    if-eqz p1, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 284
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    :cond_1
    return-void
.end method

.method protected shouldExpandWhenNotFlinging()Z
    .locals 1

    .line 491
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result p0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract shouldGestureIgnoreXTouchSlop(FF)Z
.end method

.method protected abstract shouldGestureWaitForTouchSlop()Z
.end method

.method protected abstract shouldUseDismissingAnimation()Z
.end method

.method public startExpandLatencyTracking()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandLatencyTracking:Z

    :cond_0
    return-void
.end method

.method protected startExpandMotion(FFZF)V
    .locals 3

    .line 338
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHandlingPointerUp:Z

    if-nez v0, :cond_0

    .line 339
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    .line 342
    :cond_0
    iput p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialOffsetOnTouch:F

    .line 343
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchY:F

    .line 344
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchX:F

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    .line 346
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceeded:Z

    .line 347
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeight(F)V

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStarted()V

    :cond_1
    return-void
.end method

.method protected startUnlockHintAnimation()V
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 895
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingStarted()V

    .line 896
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V

    .line 901
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onUnlockHintStarted()V

    const/4 v0, 0x1

    .line 902
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    :cond_1
    :goto_0
    return-void
.end method
