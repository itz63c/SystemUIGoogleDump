.class public Lcom/android/systemui/biometrics/UdfpsKeyguardView;
.super Lcom/android/systemui/biometrics/UdfpsAnimationView;
.source "UdfpsKeyguardView.java"


# instance fields
.field private mAlpha:I

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBgProtection:Landroid/widget/ImageView;

.field private final mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;

.field private mFingerprintView:Landroid/widget/ImageView;

.field private mStatusBarState:I

.field private mTextColorPrimary:I

.field mUdfpsRequested:Z

.field mUdfpsRequestedColor:I

.field private mWallpaperTextColor:I


# direct methods
.method public static synthetic $r8$lambda$Jj2ZDZS8v3cXlc4ngQB892j8OXo(Lcom/android/systemui/biometrics/UdfpsKeyguardView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->lambda$animateAwayUdfpsBouncer$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S6fQ8X_lMG50z92vvNtrdZ0E2s4(Lcom/android/systemui/biometrics/UdfpsKeyguardView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->lambda$animateUdfpsBouncer$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance p1, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/UdfpsKeyguardView;)Landroid/widget/ImageView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBgProtection:Landroid/widget/ImageView;

    return-object p0
.end method

.method private getColor()I
    .locals 2

    .line 117
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mUdfpsRequested:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mUdfpsRequestedColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 120
    :cond_0
    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mWallpaperTextColor:I

    return p0
.end method

.method private isShadeLocked()Z
    .locals 1

    .line 193
    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mStatusBarState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$animateAwayUdfpsBouncer$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;

    .line 218
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->setLockScreenColor(I)V

    return-void
.end method

.method private synthetic lambda$animateUdfpsBouncer$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;

    .line 171
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->setLockScreenColor(I)V

    return-void
.end method


# virtual methods
.method animateAwayUdfpsBouncer(Ljava/lang/Runnable;)V
    .locals 9

    .line 200
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBgProtection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 209
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->isShadeLocked()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mFingerprintView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v3, [F

    fill-array-data v5, :array_0

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_2
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v4, v3, [I

    .line 215
    iget v5, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mTextColorPrimary:I

    aput v5, v4, v2

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->getColor()I

    move-result v5

    aput v5, v4, v1

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 216
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 217
    new-instance v4, Lcom/android/systemui/biometrics/UdfpsKeyguardView$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 221
    :goto_0
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    .line 222
    iget-object v6, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBgProtection:Landroid/widget/ImageView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v3, [F

    fill-array-data v8, :array_1

    .line 223
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBgProtection:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v3, [F

    fill-array-data v7, :array_2

    .line 224
    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v5, v1

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBgProtection:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v3, [F

    fill-array-data v6, :array_3

    .line 225
    invoke-static {v1, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v5, v3

    const/4 v1, 0x3

    aput-object v0, v5, v1

    .line 222
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v1, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 230
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 239
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method animateHint()V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->animateHint()V

    return-void
.end method

.method animateUdfpsBouncer()V
    .locals 9

    .line 152
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBgProtection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBgProtection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->isShadeLocked()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;

    iget v4, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mTextColorPrimary:I

    invoke-virtual {v0, v4}, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->setLockScreenColor(I)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mFingerprintView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v3, [F

    fill-array-data v5, :array_0

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_2
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v4, v3, [I

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->getColor()I

    move-result v5

    aput v5, v4, v2

    iget v5, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mTextColorPrimary:I

    aput v5, v4, v1

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 169
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 170
    new-instance v4, Lcom/android/systemui/biometrics/UdfpsKeyguardView$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 174
    :goto_0
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 175
    sget-object v5, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 176
    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 177
    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/systemui/biometrics/UdfpsKeyguardView$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView$1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardView;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 184
    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBgProtection:Landroid/widget/ImageView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v3, [F

    fill-array-data v8, :array_1

    .line 185
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBgProtection:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v3, [F

    fill-array-data v7, :array_2

    .line 186
    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v5, v1

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBgProtection:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v3, [F

    fill-array-data v6, :array_3

    .line 187
    invoke-static {v1, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v5, v3

    const/4 v1, 0x3

    aput-object v0, v5, v1

    .line 184
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 189
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method calculateAlpha()I
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mPauseAuth:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 137
    :cond_0
    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAlpha:I

    return p0
.end method

.method public dozeTimeTick()Z
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->dozeTimeTick()V

    const/4 p0, 0x1

    return p0
.end method

.method public getDrawable()Lcom/android/systemui/biometrics/UdfpsDrawable;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;

    return-object p0
.end method

.method isAnimating()Z
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method onDozeAmountChanged(FF)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->onDozeAmountChanged(FF)V

    return-void
.end method

.method public bridge synthetic onExpansionChanged(FZ)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->onExpansionChanged(FZ)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 62
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 63
    sget v0, Lcom/android/systemui/R$id;->udfps_keyguard_animation_fp_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mFingerprintView:Landroid/widget/ImageView;

    .line 64
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 66
    sget v0, Lcom/android/systemui/R$id;->udfps_keyguard_fp_bg:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBgProtection:Landroid/widget/ImageView;

    .line 68
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColorAccent:I

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mWallpaperTextColor:I

    .line 70
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v1, 0x1010036

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mTextColorPrimary:I

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mUdfpsRequested:Z

    return-void
.end method

.method onIlluminationStarting()V
    .locals 1

    const/4 v0, 0x4

    .line 82
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method onIlluminationStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method requestUdfps(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 98
    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mUdfpsRequestedColor:I

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 100
    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mUdfpsRequestedColor:I

    .line 102
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mUdfpsRequested:Z

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->updateColor()V

    return-void
.end method

.method setStatusBarState(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mStatusBarState:I

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->updateColor()V

    return-void
.end method

.method setUnpausedAlpha(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAlpha:I

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->updateAlpha()V

    return-void
.end method

.method updateColor()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mFingerprintView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->getColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->setLockScreenColor(I)V

    return-void
.end method
