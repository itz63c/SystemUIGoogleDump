.class public Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;
.super Lcom/android/systemui/biometrics/UdfpsDrawable;
.source "UdfpsKeyguardDrawable.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeReceiver;


# instance fields
.field private final mAmbientDisplayColor:I

.field private mBurnInOffsetX:F

.field private mBurnInOffsetY:F

.field private final mContext:Landroid/content/Context;

.field private final mHintAnimator:Landroid/animation/ValueAnimator;

.field private mInterpolatedDarkAmount:F

.field private mLockScreenColor:I

.field private final mMaxBurnInOffsetX:I

.field private final mMaxBurnInOffsetY:I


# direct methods
.method public static synthetic $r8$lambda$G1_AiAJDVyo4gF2lyzgnZ2uaH9k(Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsDrawable;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 54
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mHintAnimator:Landroid/animation/ValueAnimator;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->udfps_burn_in_offset_x:I

    .line 64
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mMaxBurnInOffsetX:I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->udfps_burn_in_offset_y:I

    .line 66
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mMaxBurnInOffsetY:I

    const-wide/16 v1, 0x7d0

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 69
    sget-object v1, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 70
    new-instance v1, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 72
    sget v0, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mLockScreenColor:I

    const/4 p1, -0x1

    .line 73
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mAmbientDisplayColor:I

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->updateIcon()V

    return-void

    :array_0
    .array-data 4
        0x40400000    # 3.0f
        0x3f000000    # 0.5f
        0x40400000    # 3.0f
    .end array-data
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 70
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsDrawable;->setStrokeWidth(F)V

    return-void
.end method

.method private updateIcon()V
    .locals 4

    .line 79
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mMaxBurnInOffsetX:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    .line 80
    invoke-static {v0, v1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mMaxBurnInOffsetX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mInterpolatedDarkAmount:F

    const/4 v2, 0x0

    .line 79
    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mBurnInOffsetX:F

    .line 83
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mMaxBurnInOffsetY:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    .line 84
    invoke-static {v0, v1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mMaxBurnInOffsetY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mInterpolatedDarkAmount:F

    .line 83
    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mBurnInOffsetY:F

    .line 88
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mLockScreenColor:I

    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mAmbientDisplayColor:I

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mInterpolatedDarkAmount:F

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    .line 90
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mInterpolatedDarkAmount:F

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/UdfpsDrawable;->setStrokeWidth(F)V

    .line 92
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method animateHint()V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mHintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public dozeTimeTick()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->updateIcon()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsDrawable;->isIlluminationShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 106
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mBurnInOffsetX:F

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mBurnInOffsetY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 107
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method onDozeAmountChanged(FF)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mHintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 117
    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mInterpolatedDarkAmount:F

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->updateIcon()V

    return-void
.end method

.method setLockScreenColor(I)V
    .locals 1

    .line 122
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mLockScreenColor:I

    if-ne v0, p1, :cond_0

    return-void

    .line 123
    :cond_0
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->mLockScreenColor:I

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardDrawable;->updateIcon()V

    return-void
.end method
