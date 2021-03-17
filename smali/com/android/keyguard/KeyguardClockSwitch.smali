.class public Lcom/android/keyguard/KeyguardClockSwitch;
.super Landroid/widget/RelativeLayout;
.source "KeyguardClockSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;
    }
.end annotation


# instance fields
.field private mBigClockContainer:Landroid/view/ViewGroup;

.field private final mBoldClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

.field private mClockInAnim:Landroid/animation/AnimatorSet;

.field private mClockOutAnim:Landroid/animation/AnimatorSet;

.field private mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

.field private mClockSwitchYAmount:I

.field private final mClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

.field private mClockView:Landroid/widget/TextClock;

.field private mClockViewBold:Landroid/widget/TextClock;

.field private mColorPalette:[I

.field private mDarkAmount:F

.field private mHasVisibleNotifications:Z

.field private mKeyguardStatusArea:Landroid/view/View;

.field private mLockScreenMode:I

.field private mNewLockscreenClockFrame:Landroid/widget/FrameLayout;

.field private mNewLockscreenLargeClockFrame:Landroid/widget/FrameLayout;

.field private mShowingHeader:Z

.field private mSmallClockFrame:Landroid/widget/FrameLayout;

.field private mSupportsDarkText:Z

.field private final mTransition:Landroid/transition/Transition;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mHasVisibleNotifications:Z

    const/4 p1, 0x0

    .line 114
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    .line 115
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    const/4 p1, 0x0

    .line 124
    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLockScreenMode:I

    .line 130
    new-instance p2, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p2, v0}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->setCutoff(F)Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    .line 132
    sget v0, Lcom/android/systemui/R$id;->default_clock_view:I

    invoke-virtual {p2, v0}, Landroid/transition/Visibility;->addTarget(I)Landroid/transition/Transition;

    .line 133
    new-instance v0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->setCutoff(F)Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBoldClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    .line 135
    sget v1, Lcom/android/systemui/R$id;->default_clock_view_bold:I

    invoke-virtual {v0, v1}, Landroid/transition/Visibility;->addTarget(I)Landroid/transition/Transition;

    .line 136
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 137
    invoke-virtual {v1, p1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object p1

    .line 138
    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object p1

    .line 139
    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object p1

    const-wide/16 v0, 0x113

    .line 140
    invoke-virtual {p1, v0, v1}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 141
    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mTransition:Landroid/transition/Transition;

    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardClockSwitch;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardClockSwitch;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardClockSwitch;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mShowingHeader:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardClockSwitch;)Landroid/widget/TextClock;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    return-object p0
.end method

.method private animateClockChange(Z)V
    .locals 11

    .line 328
    iget v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLockScreenMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    const/4 v0, -0x1

    if-eqz p1, :cond_3

    .line 336
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mNewLockscreenClockFrame:Landroid/widget/FrameLayout;

    .line 337
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mNewLockscreenLargeClockFrame:Landroid/widget/FrameLayout;

    .line 338
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-ne v3, v0, :cond_4

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 341
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mNewLockscreenClockFrame:Landroid/widget/FrameLayout;

    .line 342
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mNewLockscreenLargeClockFrame:Landroid/widget/FrameLayout;

    .line 345
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move v0, v1

    .line 348
    :cond_4
    :goto_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    .line 349
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 350
    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 351
    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v5, v4, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v1, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 352
    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v8

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v4, [F

    aput v9, v7, v8

    iget v10, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockSwitchYAmount:I

    neg-int v10, v10

    mul-int/2addr v10, v0

    int-to-float v10, v10

    aput v10, v7, v1

    .line 353
    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v5, v1

    .line 351
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 355
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/keyguard/KeyguardClockSwitch$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardClockSwitch$1;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 361
    invoke-virtual {v2, v9}, Landroid/view/View;->setAlpha(F)V

    .line 362
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 363
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0xc8

    .line 364
    invoke-virtual {p1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 365
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 366
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    new-array v3, v4, [Landroid/animation/Animator;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v1, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v8

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v8

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    iget v6, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockSwitchYAmount:I

    mul-int/2addr v0, v6

    int-to-float v0, v0

    aput v0, v4, v8

    aput v9, v4, v1

    .line 367
    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v1

    .line 366
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 368
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x4b

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 369
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/keyguard/KeyguardClockSwitch$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardClockSwitch$2;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 375
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 376
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateBigClockAlpha()V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 495
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mHasVisibleNotifications:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDarkAmount:F

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 496
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 498
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 500
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method getClockTextTopPadding()F
    .locals 1

    .line 268
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 269
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public getCurrentTextColor()I
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getCurrentTextColor()I

    move-result p0

    return p0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    return-object p0
.end method

.method getPreferredY(I)I
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    .line 431
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->getPreferredY(I)I

    move-result p0

    return p0

    .line 433
    :cond_0
    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public getTextSize()F
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getTextSize()F

    move-result p0

    return p0
.end method

.method public hasCustomClock()Z
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 4

    .line 148
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->widget_big_font_size:I

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 148
    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->setTextSize(IF)V

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mNewLockscreenLargeClockFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 152
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->large_clock_text_size:I

    .line 153
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 155
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_clock_switch_y_shift:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockSwitchYAmount:I

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 203
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 204
    sget v0, Lcom/android/systemui/R$id;->default_clock_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    .line 205
    sget v0, Lcom/android/systemui/R$id;->default_clock_view_bold:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    .line 206
    sget v0, Lcom/android/systemui/R$id;->new_lockscreen_clock_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mNewLockscreenClockFrame:Landroid/widget/FrameLayout;

    .line 207
    sget v0, Lcom/android/systemui/R$id;->new_lockscreen_clock_view_large:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mNewLockscreenLargeClockFrame:Landroid/widget/FrameLayout;

    .line 208
    sget v0, Lcom/android/systemui/R$id;->clock_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    .line 209
    sget v0, Lcom/android/systemui/R$id;->keyguard_status_area:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mKeyguardStatusArea:Landroid/view/View;

    .line 211
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public onTimeFormatChanged(Ljava/lang/String;)V
    .locals 0

    .line 467
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    .line 468
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->onTimeFormatChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 456
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    .line 457
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->refreshTime()V

    .line 442
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->refreshTime()V

    .line 443
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz v0, :cond_0

    .line 444
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockPlugin;->onTimeTick()V

    .line 446
    :cond_0
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating clock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardClockSwitch"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setBigClockContainer(Landroid/view/ViewGroup;I)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 277
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockPlugin;->getBigClockView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 282
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    .line 283
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardClockSwitch;->updateBigClockVisibility(I)V

    return-void
.end method

.method setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;I)V
    .locals 6

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz v0, :cond_2

    .line 217
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockPlugin;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    if-ne v1, v2, :cond_0

    .line 219
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 223
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardClockSwitch;->updateBigClockVisibility(I)V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockPlugin;->onDestroyView()V

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    :cond_2
    const/16 v0, 0x8

    if-nez p1, :cond_4

    .line 229
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mShowingHeader:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 230
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p1, v0}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 231
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {p1, p2}, Landroid/widget/TextClock;->setVisibility(I)V

    goto :goto_0

    .line 233
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p1, p2}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 236
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mKeyguardStatusArea:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 240
    :cond_4
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockPlugin;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 242
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 248
    :cond_5
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockPlugin;->getBigClockView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 249
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    .line 250
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 251
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardClockSwitch;->updateBigClockVisibility(I)V

    .line 254
    :cond_6
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockPlugin;->shouldShowStatusArea()Z

    move-result p2

    if-nez p2, :cond_7

    .line 255
    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mKeyguardStatusArea:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :cond_7
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    .line 259
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/ClockPlugin;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 260
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->getCurrentTextColor()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/ClockPlugin;->setTextColor(I)V

    .line 261
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    iget p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDarkAmount:F

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/ClockPlugin;->setDarkAmount(F)V

    .line 262
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mColorPalette:[I

    if-eqz p1, :cond_8

    .line 263
    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSupportsDarkText:Z

    invoke-interface {p2, p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->setColorPalette(Z[I)V

    :cond_8
    return-void
.end method

.method public setDarkAmount(F)V
    .locals 1

    .line 385
    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDarkAmount:F

    .line 386
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz v0, :cond_0

    .line 387
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->setDarkAmount(F)V

    .line 389
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateBigClockAlpha()V

    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 319
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 324
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setHasVisibleNotifications(Z)V
    .locals 3

    .line 396
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mHasVisibleNotifications:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 399
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->animateClockChange(Z)V

    .line 401
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mHasVisibleNotifications:Z

    .line 402
    iget p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDarkAmount:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 404
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    const-wide/16 v1, 0x113

    .line 405
    invoke-virtual {v0, v1, v2}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v0

    .line 404
    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 408
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateBigClockAlpha()V

    return-void
.end method

.method public setKeyguardHidingBigClock(Z)V
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 569
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method setKeyguardShowingHeader(Z)V
    .locals 5

    .line 510
    iget v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLockScreenMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    .line 514
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mShowingHeader:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 517
    :cond_1
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mShowingHeader:Z

    .line 518
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->hasCustomClock()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 522
    :cond_2
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->widget_small_font_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 524
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->widget_big_font_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 526
    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    div-float v4, v0, v2

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->setScale(F)Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    .line 527
    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBoldClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    div-float/2addr v2, v0

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->setScale(F)Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    .line 532
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    if-eqz p1, :cond_3

    .line 537
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mTransition:Landroid/transition/Transition;

    new-instance v2, Lcom/android/keyguard/KeyguardClockSwitch$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardClockSwitch$3;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    invoke-virtual {v0, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 552
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mTransition:Landroid/transition/Transition;

    invoke-static {v0, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 553
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    const/4 v2, 0x4

    if-eqz p1, :cond_4

    move v3, v2

    goto :goto_0

    :cond_4
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 556
    sget p1, Lcom/android/systemui/R$dimen;->widget_vertical_padding_clock:I

    goto :goto_2

    :cond_6
    sget p1, Lcom/android/systemui/R$dimen;->title_clock_padding:I

    .line 555
    :goto_2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 557
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v2}, Landroid/widget/TextClock;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    .line 558
    invoke-virtual {v3}, Landroid/widget/TextClock;->getPaddingRight()I

    move-result v3

    .line 557
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/TextClock;->setPadding(IIII)V

    .line 559
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {v2}, Landroid/widget/TextClock;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    .line 560
    invoke-virtual {p0}, Landroid/widget/TextClock;->getPaddingRight()I

    move-result p0

    .line 559
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/widget/TextClock;->setPadding(IIII)V

    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 310
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 303
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    .line 304
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextClock;->setTextSize(IF)V

    return-void
.end method

.method updateBigClockVisibility(I)V
    .locals 4

    .line 481
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 487
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mShowingHeader:Z

    if-nez p1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    .line 488
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v1, :cond_4

    .line 489
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 1

    .line 473
    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSupportsDarkText:Z

    .line 474
    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mColorPalette:[I

    .line 475
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz v0, :cond_0

    .line 476
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSupportsDarkText:Z

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->setColorPalette(Z[I)V

    :cond_0
    return-void
.end method

.method public updateLockScreenMode(I)V
    .locals 8

    .line 170
    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLockScreenMode:I

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mKeyguardStatusArea:Landroid/view/View;

    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x3

    const/16 v2, 0x10

    const/16 v3, 0x14

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p1, v5, :cond_0

    const/high16 p1, 0x41400000    # 12.0f

    .line 178
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 175
    invoke-static {v5, p1, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 179
    invoke-virtual {p0, p1, v6, p1, v6}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 180
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 181
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mNewLockscreenClockFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 184
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 185
    sget p1, Lcom/android/systemui/R$id;->new_lockscreen_clock_view:I

    invoke-virtual {v0, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 186
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0, v6, v6, v6, v6}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 189
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 190
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mNewLockscreenClockFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 192
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 193
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 194
    sget p1, Lcom/android/systemui/R$id;->clock_view:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 p1, -0x1

    .line 195
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 198
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method
