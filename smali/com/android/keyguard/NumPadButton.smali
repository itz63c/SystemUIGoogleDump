.class public Lcom/android/keyguard/NumPadButton;
.super Lcom/android/keyguard/AlphaOptimizedImageButton;
.source "NumPadButton.java"


# instance fields
.field private mAnimator:Lcom/android/keyguard/NumPadAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Lcom/android/keyguard/NumPadAnimator;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 41
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result p2

    invoke-direct {v0, p1, v1, p2}, Lcom/android/keyguard/NumPadAnimator;-><init>(Landroid/content/Context;Landroid/graphics/drawable/LayerDrawable;I)V

    iput-object v0, p0, Lcom/android/keyguard/NumPadButton;->mAnimator:Lcom/android/keyguard/NumPadAnimator;

    return-void
.end method


# virtual methods
.method public disableNewLayout()V
    .locals 3

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/android/keyguard/NumPadButton;->mAnimator:Lcom/android/keyguard/NumPadAnimator;

    .line 95
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$style;->NumPadKey:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 96
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->ripple_drawable_pin:I

    .line 97
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 96
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 65
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageButton;->onLayout(ZIIII)V

    .line 67
    iget-object p0, p0, Lcom/android/keyguard/NumPadButton;->mAnimator:Lcom/android/keyguard/NumPadAnimator;

    if-eqz p0, :cond_0

    sub-int/2addr p5, p3

    invoke-virtual {p0, p5}, Lcom/android/keyguard/NumPadAnimator;->onLayout(I)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onMeasure(II)V

    .line 57
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p1

    .line 58
    iget-object p2, p0, Lcom/android/keyguard/NumPadButton;->mAnimator:Lcom/android/keyguard/NumPadAnimator;

    if-nez p2, :cond_0

    int-to-float p1, p1

    const/high16 p2, 0x3f400000    # 0.75f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 60
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/widget/ImageButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/keyguard/NumPadButton;->mAnimator:Lcom/android/keyguard/NumPadAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/NumPadAnimator;->start()V

    .line 73
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public reloadColors()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/NumPadButton;->mAnimator:Lcom/android/keyguard/NumPadAnimator;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/NumPadAnimator;->reloadColors(Landroid/content/Context;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010036

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 86
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/VectorDrawable;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/keyguard/NumPadButton;->mAnimator:Lcom/android/keyguard/NumPadAnimator;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/NumPadAnimator;->updateMargin(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 48
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
