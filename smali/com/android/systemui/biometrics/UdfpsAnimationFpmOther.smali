.class public Lcom/android/systemui/biometrics/UdfpsAnimationFpmOther;
.super Lcom/android/systemui/biometrics/UdfpsAnimation;
.source "UdfpsAnimationFpmOther.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsAnimation;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimation;->mFingerprintDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method updateColor()V
    .locals 0

    return-void
.end method
