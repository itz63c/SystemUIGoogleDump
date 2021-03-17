.class public Lcom/android/systemui/biometrics/UdfpsAnimationEnroll;
.super Lcom/android/systemui/biometrics/UdfpsAnimation;
.source "UdfpsAnimationEnroll.java"


# instance fields
.field private final mNotificationShadeColor:I

.field private final mSensorPaint:Landroid/graphics/Paint;

.field private mSensorRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsAnimation;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationEnroll;->mSensorPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, -0x1

    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x40a00000    # 5.0f

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    .line 53
    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 54
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v0, 0x10104e2

    .line 56
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationEnroll;->mNotificationShadeColor:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationEnroll;->mSensorRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    .line 77
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationEnroll;->mSensorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 80
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimation;->mFingerprintDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPaddingX()I
    .locals 2

    const-wide v0, 0x4061800000000000L    # 140.0

    .line 85
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public getPaddingY()I
    .locals 2

    const-wide v0, 0x4061800000000000L    # 140.0

    .line 90
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public onSensorRectUpdated(Landroid/graphics/RectF;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/UdfpsAnimation;->onSensorRectUpdated(Landroid/graphics/RectF;)V

    .line 68
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationEnroll;->mSensorRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/UdfpsAnimation;->setAlpha(I)V

    .line 96
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationEnroll;->mSensorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method updateColor()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimation;->mFingerprintDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimation;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->udfps_enroll_icon:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method
