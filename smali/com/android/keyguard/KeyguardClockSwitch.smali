.class public Lcom/android/keyguard/KeyguardClockSwitch;
.super Landroid/widget/RelativeLayout;
.source "KeyguardClockSwitch.java"


# instance fields
.field private mClockFrame:Landroid/widget/FrameLayout;

.field private mClockInAnim:Landroid/animation/AnimatorSet;

.field private mClockOutAnim:Landroid/animation/AnimatorSet;

.field private mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

.field private mClockSwitchYAmount:I

.field private mClockView:Lcom/android/keyguard/AnimatableClockView;

.field private mColorPalette:[I

.field private mDarkAmount:F

.field private mHasVisibleNotifications:Z

.field private mKeyguardStatusArea:Landroid/view/View;

.field private mLargeClockFrame:Landroid/widget/FrameLayout;

.field private mLargeClockView:Lcom/android/keyguard/AnimatableClockView;

.field private mSupportsDarkText:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mHasVisibleNotifications:Z

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    .line 69
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardClockSwitch;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardClockSwitch;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private animateClockChange(Z)V
    .locals 11

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 184
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockFrame:Landroid/widget/FrameLayout;

    .line 185
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Landroid/widget/FrameLayout;

    .line 186
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-ne v3, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 189
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockFrame:Landroid/widget/FrameLayout;

    .line 190
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Landroid/widget/FrameLayout;

    .line 193
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move v0, v1

    .line 196
    :cond_3
    :goto_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    .line 197
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 198
    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    sget-object v4, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 199
    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v5, v4, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v1, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 200
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

    .line 201
    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v5, v1

    .line 199
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 203
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/keyguard/KeyguardClockSwitch$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardClockSwitch$1;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 209
    invoke-virtual {v2, v9}, Landroid/view/View;->setAlpha(F)V

    .line 210
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 211
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0xc8

    .line 212
    invoke-virtual {p1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 213
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    sget-object v3, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 214
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

    .line 215
    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v1

    .line 214
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 216
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x4b

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 217
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/keyguard/KeyguardClockSwitch$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardClockSwitch$2;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 223
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 224
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public getCurrentTextColor()I
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    return p0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    return-object p0
.end method

.method getPreferredY(I)I
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    .line 271
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->getPreferredY(I)I

    move-result p0

    return p0

    .line 273
    :cond_0
    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public getTextSize()F
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p0

    return p0
.end method

.method public hasCustomClock()Z
    .locals 0

    .line 100
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

    .line 87
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockView:Lcom/android/keyguard/AnimatableClockView;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->large_clock_text_size:I

    .line 88
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 87
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Lcom/android/keyguard/AnimatableClockView;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->clock_text_size:I

    .line 90
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 89
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 92
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

    .line 105
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 107
    sget v0, Lcom/android/systemui/R$id;->lockscreen_clock_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockFrame:Landroid/widget/FrameLayout;

    .line 108
    sget v0, Lcom/android/systemui/R$id;->animatable_clock_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/AnimatableClockView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Lcom/android/keyguard/AnimatableClockView;

    .line 109
    sget v0, Lcom/android/systemui/R$id;->lockscreen_clock_view_large:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Landroid/widget/FrameLayout;

    .line 110
    sget v0, Lcom/android/systemui/R$id;->animatable_clock_view_large:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/AnimatableClockView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockView:Lcom/android/keyguard/AnimatableClockView;

    .line 111
    sget v0, Lcom/android/systemui/R$id;->keyguard_status_area:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mKeyguardStatusArea:Landroid/view/View;

    .line 113
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    .line 291
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    .line 282
    invoke-interface {p0}, Lcom/android/systemui/plugins/ClockPlugin;->onTimeTick()V

    :cond_0
    return-void
.end method

.method setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;I)V
    .locals 5

    .line 118
    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p2, :cond_2

    .line 119
    invoke-interface {p2}, Lcom/android/systemui/plugins/ClockPlugin;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 120
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockFrame:Landroid/widget/FrameLayout;

    if-ne v0, v1, :cond_0

    .line 121
    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 123
    :cond_0
    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-interface {p2}, Lcom/android/systemui/plugins/ClockPlugin;->getBigClockView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 124
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Landroid/widget/FrameLayout;

    if-ne v0, v1, :cond_1

    .line 125
    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 127
    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-interface {p2}, Lcom/android/systemui/plugins/ClockPlugin;->onDestroyView()V

    const/4 p2, 0x0

    .line 128
    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    :cond_2
    if-nez p1, :cond_3

    .line 131
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Lcom/android/keyguard/AnimatableClockView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockView:Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 136
    :cond_3
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockPlugin;->getView()Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    if-eqz p2, :cond_4

    .line 138
    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockFrame:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :cond_4
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockPlugin;->getBigClockView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 145
    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 146
    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockView:Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    :cond_5
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    .line 151
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/ClockPlugin;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->getCurrentTextColor()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/ClockPlugin;->setTextColor(I)V

    .line 153
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    iget p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDarkAmount:F

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/ClockPlugin;->setDarkAmount(F)V

    .line 154
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mColorPalette:[I

    if-eqz p1, :cond_6

    .line 155
    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSupportsDarkText:Z

    invoke-interface {p2, p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->setColorPalette(Z[I)V

    :cond_6
    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0

    .line 233
    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDarkAmount:F

    .line 234
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    .line 235
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->setDarkAmount(F)V

    :cond_0
    return-void
.end method

.method setHasVisibleNotifications(Z)V
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mHasVisibleNotifications:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 246
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->animateClockChange(Z)V

    .line 248
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mHasVisibleNotifications:Z

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    .line 173
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 1

    .line 307
    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSupportsDarkText:Z

    .line 308
    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mColorPalette:[I

    .line 309
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz v0, :cond_0

    .line 310
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSupportsDarkText:Z

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->setColorPalette(Z[I)V

    :cond_0
    return-void
.end method
