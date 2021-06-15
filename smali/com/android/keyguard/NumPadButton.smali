.class public Lcom/android/keyguard/NumPadButton;
.super Lcom/android/keyguard/AlphaOptimizedImageButton;
.source "NumPadButton.java"


# instance fields
.field private mAnimator:Lcom/android/keyguard/NumPadAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Lcom/android/keyguard/NumPadAnimator;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 34
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result p2

    invoke-direct {v0, p1, v1, p2}, Lcom/android/keyguard/NumPadAnimator;-><init>(Landroid/content/Context;Landroid/graphics/drawable/RippleDrawable;I)V

    iput-object v0, p0, Lcom/android/keyguard/NumPadButton;->mAnimator:Lcom/android/keyguard/NumPadAnimator;

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 51
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageButton;->onLayout(ZIIII)V

    .line 53
    iget-object p0, p0, Lcom/android/keyguard/NumPadButton;->mAnimator:Lcom/android/keyguard/NumPadAnimator;

    sub-int/2addr p5, p3

    invoke-virtual {p0, p5}, Lcom/android/keyguard/NumPadAnimator;->onLayout(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onMeasure(II)V

    .line 43
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p1

    .line 46
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/widget/ImageButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/keyguard/NumPadButton;->mAnimator:Lcom/android/keyguard/NumPadAnimator;

    invoke-virtual {v0}, Lcom/android/keyguard/NumPadAnimator;->start()V

    .line 61
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public reloadColors()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/keyguard/NumPadButton;->mAnimator:Lcom/android/keyguard/NumPadAnimator;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/NumPadAnimator;->reloadColors(Landroid/content/Context;)V

    return-void
.end method
