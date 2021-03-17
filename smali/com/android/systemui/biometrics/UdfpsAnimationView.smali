.class public Lcom/android/systemui/biometrics/UdfpsAnimationView;
.super Landroid/view/View;
.source "UdfpsAnimationView.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeReceiver;
.implements Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;


# instance fields
.field private mAlpha:I

.field private mParent:Lcom/android/systemui/biometrics/UdfpsView;

.field private mSensorRect:Landroid/graphics/RectF;

.field private mUdfpsAnimation:Lcom/android/systemui/biometrics/UdfpsAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mSensorRect:Landroid/graphics/RectF;

    return-void
.end method

.method private expansionToAlpha(F)I
    .locals 1

    const p0, 0x3ecccccd    # 0.4f

    cmpl-float v0, p1, p0

    if-ltz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 1

    .line 95
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mUdfpsAnimation:Lcom/android/systemui/biometrics/UdfpsAnimation;

    instance-of v0, p0, Lcom/android/systemui/doze/DozeReceiver;

    if-eqz v0, :cond_0

    .line 96
    check-cast p0, Lcom/android/systemui/doze/DozeReceiver;

    invoke-interface {p0}, Lcom/android/systemui/doze/DozeReceiver;->dozeTimeTick()V

    :cond_0
    return-void
.end method

.method public getPaddingX()I
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mUdfpsAnimation:Lcom/android/systemui/biometrics/UdfpsAnimation;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimation;->getPaddingX()I

    move-result p0

    return p0
.end method

.method public getPaddingY()I
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mUdfpsAnimation:Lcom/android/systemui/biometrics/UdfpsAnimation;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimation;->getPaddingY()I

    move-result p0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mUdfpsAnimation:Lcom/android/systemui/biometrics/UdfpsAnimation;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mParent:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsView;->shouldPauseAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mAlpha:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mUdfpsAnimation:Lcom/android/systemui/biometrics/UdfpsAnimation;

    invoke-virtual {v1, v0}, Lcom/android/systemui/biometrics/UdfpsAnimation;->setAlpha(I)V

    .line 56
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mUdfpsAnimation:Lcom/android/systemui/biometrics/UdfpsAnimation;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public onExpansionChanged(FZ)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->expansionToAlpha(F)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mAlpha:I

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method onSensorRectUpdated(Landroid/graphics/RectF;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mSensorRect:Landroid/graphics/RectF;

    .line 82
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mUdfpsAnimation:Lcom/android/systemui/biometrics/UdfpsAnimation;

    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsAnimation;->onSensorRectUpdated(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method setAnimation(Lcom/android/systemui/biometrics/UdfpsAnimation;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mUdfpsAnimation:Lcom/android/systemui/biometrics/UdfpsAnimation;

    return-void
.end method

.method setParent(Lcom/android/systemui/biometrics/UdfpsView;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mParent:Lcom/android/systemui/biometrics/UdfpsView;

    return-void
.end method

.method updateColor()V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mUdfpsAnimation:Lcom/android/systemui/biometrics/UdfpsAnimation;

    if-eqz p0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimation;->updateColor()V

    :cond_0
    return-void
.end method
