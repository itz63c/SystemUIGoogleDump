.class public Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;
.super Lcom/android/systemui/biometrics/UdfpsDrawable;
.source "UdfpsEnrollDrawable.java"


# instance fields
.field private final mBlueFill:Landroid/graphics/Paint;

.field private final mBlueStroke:Landroid/graphics/Paint;

.field private mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

.field private final mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

.field private final mSensorOutlinePaint:Landroid/graphics/Paint;

.field private mSensorRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsDrawable;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    .line 53
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$color;->udfps_enroll_icon:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 56
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mBlueFill:Landroid/graphics/Paint;

    .line 59
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    sget v3, Lcom/android/systemui/R$color;->udfps_moving_target_fill:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mBlueStroke:Landroid/graphics/Paint;

    .line 64
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    sget v1, Lcom/android/systemui/R$color;->udfps_moving_target_stroke:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 67
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$drawable;->ic_fingerprint:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    .line 70
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 71
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 73
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsDrawable;->isIlluminationShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->isCenterEnrollmentComplete()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mAlpha:I

    const/16 v2, 0x40

    const/16 v3, 0xff

    if-ne v1, v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mAlpha:I

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 105
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->getNextGuidedEnrollmentPoint()Landroid/graphics/PointF;

    move-result-object v0

    .line 106
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_3

    .line 108
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mBlueFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mBlueStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 112
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_5

    .line 116
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 118
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    .line 120
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mAlpha:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_1
    return-void
.end method

.method public onSensorRectUpdated(Landroid/graphics/RectF;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/UdfpsDrawable;->onSensorRectUpdated(Landroid/graphics/RectF;)V

    .line 83
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/UdfpsDrawable;->setAlpha(I)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mBlueFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mBlueStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 131
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setEnrollHelper(Lcom/android/systemui/biometrics/UdfpsEnrollHelper;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    return-void
.end method

.method protected updateFingerprintIconBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/UdfpsDrawable;->updateFingerprintIconBounds(Landroid/graphics/Rect;)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 90
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
