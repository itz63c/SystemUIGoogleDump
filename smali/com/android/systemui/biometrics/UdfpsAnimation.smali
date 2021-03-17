.class public abstract Lcom/android/systemui/biometrics/UdfpsAnimation;
.super Landroid/graphics/drawable/Drawable;
.source "UdfpsAnimation.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mFingerprintDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimation;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$drawable;->ic_fingerprint:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimation;->mFingerprintDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getPaddingX()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPaddingY()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSensorRectUpdated(Landroid/graphics/RectF;)V
    .locals 4

    .line 43
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v1

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x5

    .line 44
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimation;->mFingerprintDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    add-int/2addr v3, v2

    float-to-int v1, v1

    add-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/RectF;->right:F

    float-to-int p1, p1

    sub-int/2addr p1, v2

    float-to-int v0, v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v3, v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimation;->mFingerprintDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method abstract updateColor()V
.end method
