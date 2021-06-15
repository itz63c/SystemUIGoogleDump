.class public Lcom/android/keyguard/KeyguardSecurityContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardSecurityContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;,
        Lcom/android/keyguard/KeyguardSecurityContainer$SwipeListener;,
        Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDisappearAnimRunning:Z

.field private mIsDragging:Z

.field private mIsSecurityViewLeftAligned:Z

.field private mLastTouchY:F

.field private final mMotionEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/Gefingerpoken;",
            ">;"
        }
    .end annotation
.end field

.field private mOneHandedMode:Z

.field private mRunningOneHandedAnimator:Landroid/view/ViewPropertyAnimator;

.field private mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

.field private final mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mStartTouchY:F

.field private mSwipeListener:Lcom/android/keyguard/KeyguardSecurityContainer$SwipeListener;

.field private mSwipeUpToRetry:Z

.field private final mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewConfiguration:Landroid/view/ViewConfiguration;

.field private final mWindowInsetsAnimationCallback:Landroid/view/WindowInsetsAnimation$Callback;


# direct methods
.method public static synthetic $r8$lambda$F6CZdwTTzyX0eUVHA_bg6y_Eeo0(Landroid/view/MotionEvent;Lcom/android/systemui/Gefingerpoken;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->lambda$onInterceptTouchEvent$0(Landroid/view/MotionEvent;Lcom/android/systemui/Gefingerpoken;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$J7kIOl0DwWmzaigpCnvoE9gikaI(Landroid/view/MotionEvent;Lcom/android/systemui/Gefingerpoken;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->lambda$onTouchEvent$1(Landroid/view/MotionEvent;Lcom/android/systemui/Gefingerpoken;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 241
    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 245
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 96
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mMotionEventListeners:Ljava/util/List;

    const/high16 p2, -0x40800000    # -1.0f

    .line 98
    iput p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLastTouchY:F

    const/4 p3, -0x1

    .line 99
    iput p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mActivePointerId:I

    .line 101
    iput p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mStartTouchY:F

    const/4 p2, 0x1

    .line 105
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsSecurityViewLeftAligned:Z

    const/4 p2, 0x0

    .line 106
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mOneHandedMode:Z

    .line 107
    sget-object p3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 110
    new-instance p3, Lcom/android/keyguard/KeyguardSecurityContainer$1;

    invoke-direct {p3, p0, p2}, Lcom/android/keyguard/KeyguardSecurityContainer$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;I)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mWindowInsetsAnimationCallback:Landroid/view/WindowInsetsAnimation$Callback;

    .line 246
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object p3, Landroidx/dynamicanimation/animation/DynamicAnimation;->Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p2, p0, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 247
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDisappearAnimRunning:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecurityContainer;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->beginJankInstrument(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecurityContainer;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->endJankInstrument(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/keyguard/KeyguardSecurityContainer;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRunningOneHandedAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method private beginJankInstrument(I)V
    .locals 1

    .line 532
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardInputView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 534
    :cond_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    return-void
.end method

.method private canUseOneHandedBouncer()Z
    .locals 2

    .line 280
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->isSecurityViewOneHanded(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 289
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$bool;->can_use_one_handed_bouncer:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private endJankInstrument(I)V
    .locals 0

    .line 538
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method

.method private findKeyguardSecurityView()Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    .locals 3

    const/4 v0, 0x0

    .line 364
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 365
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 367
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->isKeyguardSecurityView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    check-cast v1, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleTap(Landroid/view/MotionEvent;)V
    .locals 1

    .line 494
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mOneHandedMode:Z

    if-nez v0, :cond_0

    return-void

    .line 498
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->moveBouncerForXCoordinate(FZ)V

    return-void
.end method

.method private isKeyguardSecurityView(Landroid/view/View;)Z
    .locals 0

    .line 376
    instance-of p0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    return p0
.end method

.method private isOneHandedKeyguardLeftAligned(Landroid/content/Context;)Z
    .locals 1

    const/4 p0, 0x1

    .line 295
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "one_handed_keyguard_side"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :catch_0
    :goto_0
    return p0
.end method

.method private static synthetic lambda$onInterceptTouchEvent$0(Landroid/view/MotionEvent;Lcom/android/systemui/Gefingerpoken;)Z
    .locals 0

    .line 395
    invoke-interface {p1, p0}, Lcom/android/systemui/Gefingerpoken;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onTouchEvent$1(Landroid/view/MotionEvent;Lcom/android/systemui/Gefingerpoken;)Z
    .locals 0

    .line 436
    invoke-interface {p1, p0}, Lcom/android/systemui/Gefingerpoken;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private moveBouncerForXCoordinate(FZ)V
    .locals 2

    .line 503
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsSecurityViewLeftAligned:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsSecurityViewLeftAligned:Z

    if-nez v0, :cond_2

    .line 504
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 505
    :cond_1
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsSecurityViewLeftAligned:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsSecurityViewLeftAligned:Z

    .line 507
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 508
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 510
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsSecurityViewLeftAligned:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "one_handed_keyguard_side"

    .line 507
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 513
    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityViewLocation(Z)V

    :cond_2
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 582
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 583
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 584
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 585
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->ok:I

    const/4 v0, 0x0

    .line 586
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 587
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    .line 588
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    instance-of p2, p2, Landroid/app/Activity;

    if-nez p2, :cond_1

    .line 589
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d9

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 591
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startSpringAnimation(F)V
    .locals 0

    .line 522
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 523
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 p1, 0x0

    .line 524
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method private updateBiometricRetry(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 549
    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSwipeUpToRetry:Z

    return-void
.end method

.method private updateSecurityViewGravity()V
    .locals 2

    .line 304
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->findKeyguardSecurityView()Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 310
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 312
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mOneHandedMode:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x53

    .line 313
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 315
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 318
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateSecurityViewLocation(Z)V
    .locals 3

    .line 327
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->findKeyguardSecurityView()Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 333
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mOneHandedMode:Z

    if-nez v1, :cond_1

    const/4 p0, 0x0

    .line 334
    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRunningOneHandedAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v1, :cond_2

    .line 339
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v1, 0x0

    .line 340
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRunningOneHandedAnimator:Landroid/view/ViewPropertyAnimator;

    .line 343
    :cond_2
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsSecurityViewLeftAligned:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    :goto_0
    if-eqz p1, :cond_4

    .line 346
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-float v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRunningOneHandedAnimator:Landroid/view/ViewPropertyAnimator;

    .line 347
    sget-object v0, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 348
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRunningOneHandedAnimator:Landroid/view/ViewPropertyAnimator;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 355
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRunningOneHandedAnimator:Landroid/view/ViewPropertyAnimator;

    const-wide/16 v0, 0x168

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 356
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRunningOneHandedAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_4
    int-to-float p0, v1

    .line 358
    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    :goto_1
    return-void
.end method


# virtual methods
.method addMotionEventListener(Lcom/android/systemui/Gefingerpoken;)V
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mMotionEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 570
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 571
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 572
    invoke-static {v0, v1}, Ljava/lang/Integer;->max(II)I

    move-result v0

    .line 573
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/4 p0, 0x0

    .line 574
    invoke-virtual {p1, p0, p0, p0, v0}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onFinishInflate()V
    .locals 1

    .line 562
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 563
    sget v0, Lcom/android/systemui/R$id;->view_flipper:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 394
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mMotionEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;-><init>(Landroid/view/MotionEvent;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 396
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 398
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v3, :cond_7

    if-eq v3, v2, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 p1, 0x3

    if-eq v3, p1, :cond_6

    goto :goto_2

    .line 406
    :cond_2
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsDragging:Z

    if-eqz v3, :cond_3

    return v2

    .line 409
    :cond_3
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSwipeUpToRetry:Z

    if-nez v3, :cond_4

    return v1

    .line 413
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardInputView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/keyguard/KeyguardInputView;->disallowInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    .line 416
    :cond_5
    iget v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 417
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    const/4 v4, -0x1

    if-eq v1, v4, :cond_8

    .line 418
    iget v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mStartTouchY:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v4, p1

    cmpl-float p1, v4, v3

    if-lez p1, :cond_8

    .line 419
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsDragging:Z

    return v2

    .line 425
    :cond_6
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsDragging:Z

    goto :goto_2

    .line 400
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 401
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mStartTouchY:F

    .line 402
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mActivePointerId:I

    .line 403
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_8
    :goto_2
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 668
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 672
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityViewLocation(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 632
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 633
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 631
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/4 v0, 0x0

    move v7, v0

    move v8, v7

    move v9, v8

    move v10, v9

    .line 635
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 636
    invoke-virtual {p0, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 637
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 638
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mOneHandedMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v11}, Lcom/android/keyguard/KeyguardSecurityContainer;->isKeyguardSecurityView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v11

    move v2, v6

    move v4, p2

    .line 639
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v11

    move v2, p1

    move v4, p2

    .line 642
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 645
    :goto_1
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 647
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 646
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 649
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    .line 648
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 650
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v10, v2}, Landroid/widget/FrameLayout;->combineMeasuredStates(II)I

    move-result v2

    move v9, v0

    move v8, v1

    move v10, v2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 654
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 655
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v9, v0

    .line 658
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 659
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 661
    invoke-static {v1, p1, v10}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v10, 0x10

    .line 662
    invoke-static {v0, p2, v2}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v0

    .line 661
    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 382
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    .line 384
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p0, v1}, Landroid/widget/ViewFlipper;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    return-void
.end method

.method onResume(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V
    .locals 2

    .line 251
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mWindowInsetsAnimationCallback:Landroid/view/WindowInsetsAnimation$Callback;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateBiometricRetry(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateLayoutForSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 435
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mMotionEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda1;-><init>(Landroid/view/MotionEvent;)V

    .line 436
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 458
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 459
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 460
    iget v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mActivePointerId:I

    if-ne v4, v5, :cond_6

    if-nez v2, :cond_2

    move v1, v3

    .line 464
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLastTouchY:F

    .line 465
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mActivePointerId:I

    goto :goto_0

    .line 441
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 442
    iget v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 443
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 444
    iget v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLastTouchY:F

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_4

    sub-float v2, v1, v4

    .line 446
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v2, v5

    add-float/2addr v4, v2

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 448
    :cond_4
    iput v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLastTouchY:F

    goto :goto_0

    :cond_5
    const/4 v4, -0x1

    .line 452
    iput v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mActivePointerId:I

    .line 453
    iput v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLastTouchY:F

    .line 454
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsDragging:Z

    .line 455
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->startSpringAnimation(F)V

    :cond_6
    :goto_0
    if-ne v0, v3, :cond_8

    .line 470
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    .line 471
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 470
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 472
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSwipeListener:Lcom/android/keyguard/KeyguardSecurityContainer$SwipeListener;

    if-eqz p0, :cond_8

    .line 473
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SwipeListener;->onSwipeUp()V

    goto :goto_1

    .line 476
    :cond_7
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsDragging:Z

    if-nez v0, :cond_8

    .line 477
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->handleTap(Landroid/view/MotionEvent;)V

    :cond_8
    :goto_1
    return v3
.end method

.method removeMotionEventListener(Lcom/android/systemui/Gefingerpoken;)V
    .locals 0

    .line 489
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mMotionEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 714
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDisappearAnimRunning:Z

    return-void
.end method

.method setSwipeListener(Lcom/android/keyguard/KeyguardSecurityContainer$SwipeListener;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSwipeListener:Lcom/android/keyguard/KeyguardSecurityContainer$SwipeListener;

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method showAlmostAtWipeDialog(III)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p3, v3, :cond_2

    if-eq p3, v2, :cond_1

    const/4 v4, 0x3

    if-eq p3, v4, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 683
    :cond_0
    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->kg_failed_attempts_almost_at_erase_user:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 684
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 683
    invoke-virtual {p3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 687
    :cond_1
    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->kg_failed_attempts_almost_at_erase_profile:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 688
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 687
    invoke-virtual {p3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 679
    :cond_2
    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->kg_failed_attempts_almost_at_wipe:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 680
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 679
    invoke-virtual {p3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 691
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method showTimeoutDialog(IILcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 4

    .line 596
    div-int/lit16 p2, p2, 0x3e8

    .line 599
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v0, p4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p4, v1, :cond_2

    if-eq p4, v0, :cond_1

    const/4 v3, 0x3

    if-eq p4, v3, :cond_0

    move p4, v2

    goto :goto_0

    .line 607
    :cond_0
    sget p4, Lcom/android/systemui/R$string;->kg_too_many_failed_password_attempts_dialog_message:I

    goto :goto_0

    .line 604
    :cond_1
    sget p4, Lcom/android/systemui/R$string;->kg_too_many_failed_pin_attempts_dialog_message:I

    goto :goto_0

    .line 601
    :cond_2
    sget p4, Lcom/android/systemui/R$string;->kg_too_many_failed_pattern_attempts_dialog_message:I

    :goto_0
    if-eqz p4, :cond_3

    .line 618
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    new-array v0, v0, [Ljava/lang/Object;

    .line 619
    invoke-virtual {p3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    .line 620
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    .line 618
    invoke-virtual {v3, p4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 621
    invoke-direct {p0, p2, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method showWipeDialog(II)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 702
    :cond_0
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->kg_failed_attempts_now_erasing_user:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 703
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    .line 702
    invoke-virtual {p2, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 706
    :cond_1
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->kg_failed_attempts_now_erasing_profile:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 707
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    .line 706
    invoke-virtual {p2, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 698
    :cond_2
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->kg_failed_attempts_now_wiping:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 699
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    .line 698
    invoke-virtual {p2, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 710
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startDisappearAnimation(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    const/4 p1, 0x1

    .line 528
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDisappearAnimRunning:Z

    return-void
.end method

.method public updateKeyguardPosition(F)V
    .locals 1

    .line 272
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mOneHandedMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 273
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->moveBouncerForXCoordinate(FZ)V

    :cond_0
    return-void
.end method

.method updateLayoutForSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 260
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->canUseOneHandedBouncer()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mOneHandedMode:Z

    if-eqz p1, :cond_0

    .line 263
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->isOneHandedKeyguardLeftAligned(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsSecurityViewLeftAligned:Z

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityViewGravity()V

    const/4 p1, 0x0

    .line 267
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityViewLocation(Z)V

    return-void
.end method
