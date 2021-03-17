.class Lcom/android/keyguard/NumPadAnimator;
.super Ljava/lang/Object;
.source "NumPadAnimator.java"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mHighlightColor:I

.field private mMargin:I

.field private mNormalColor:I

.field private mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mRippleMask:Landroid/graphics/drawable/GradientDrawable;

.field private mStyle:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/LayerDrawable;I)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p2}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    .line 48
    sget v0, Lcom/android/systemui/R$id;->background:I

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/android/keyguard/NumPadAnimator;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 49
    sget v0, Lcom/android/systemui/R$id;->ripple:I

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/RippleDrawable;

    iput-object p2, p0, Lcom/android/keyguard/NumPadAnimator;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    const v0, 0x102002e

    .line 50
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    iput-object p2, p0, Lcom/android/keyguard/NumPadAnimator;->mRippleMask:Landroid/graphics/drawable/GradientDrawable;

    .line 51
    iput p3, p0, Lcom/android/keyguard/NumPadAnimator;->mStyle:I

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/keyguard/NumPadAnimator;->reloadColors(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->num_pad_key_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/NumPadAnimator;->mMargin:I

    const/4 p1, 0x1

    new-array p2, p1, [F

    const/4 p3, 0x0

    const/4 v0, 0x0

    aput v0, p2, p3

    .line 58
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/NumPadAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    .line 59
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 60
    iget-object p2, p0, Lcom/android/keyguard/NumPadAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    sget-object p3, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    iget-object p2, p0, Lcom/android/keyguard/NumPadAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 62
    iget-object p2, p0, Lcom/android/keyguard/NumPadAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 63
    iget-object p1, p0, Lcom/android/keyguard/NumPadAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/keyguard/NumPadAnimator$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/NumPadAnimator$1;-><init>(Lcom/android/keyguard/NumPadAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/NumPadAnimator;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/keyguard/NumPadAnimator;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/NumPadAnimator;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/keyguard/NumPadAnimator;->mRippleMask:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method


# virtual methods
.method onLayout(I)V
    .locals 3

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr p1, v1

    .line 79
    iget-object v1, p0, Lcom/android/keyguard/NumPadAnimator;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 80
    iget-object p0, p0, Lcom/android/keyguard/NumPadAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-void
.end method

.method reloadColors(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 92
    fill-array-data v0, :array_0

    .line 95
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, p0, Lcom/android/keyguard/NumPadAnimator;->mStyle:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 96
    invoke-virtual {v1, v0}, Landroid/view/ContextThemeWrapper;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/NumPadAnimator;->mNormalColor:I

    const/4 v1, 0x1

    .line 98
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/NumPadAnimator;->mHighlightColor:I

    .line 99
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    iget-object p1, p0, Lcom/android/keyguard/NumPadAnimator;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v0, p0, Lcom/android/keyguard/NumPadAnimator;->mNormalColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 102
    iget-object p1, p0, Lcom/android/keyguard/NumPadAnimator;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    iget p0, p0, Lcom/android/keyguard/NumPadAnimator;->mHighlightColor:I

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1010429
        0x101042c
    .end array-data
.end method

.method start()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/NumPadAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 85
    iget-object p0, p0, Lcom/android/keyguard/NumPadAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method updateMargin(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/keyguard/NumPadAnimator;->mMargin:I

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method
