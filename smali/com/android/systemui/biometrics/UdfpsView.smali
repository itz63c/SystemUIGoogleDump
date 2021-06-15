.class public Lcom/android/systemui/biometrics/UdfpsView;
.super Landroid/widget/FrameLayout;
.source "UdfpsView.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeReceiver;


# instance fields
.field private mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

.field private mDebugMessage:Ljava/lang/String;

.field private final mDebugTextPaint:Landroid/graphics/Paint;

.field private mHbmSurfaceView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

.field private mIlluminationRequested:Z

.field private mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field private final mSensorRect:Landroid/graphics/RectF;

.field private final mSensorTouchAreaCoefficient:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/R$styleable;->UdfpsView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 67
    :try_start_0
    sget p2, Lcom/android/systemui/R$styleable;->UdfpsView_sensorTouchAreaCoefficient:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorTouchAreaCoefficient:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    .line 79
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mDebugTextPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 80
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const p2, -0xffff01

    .line 81
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x42000000    # 32.0f

    .line 82
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 84
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mIlluminationRequested:Z

    return-void

    .line 68
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "UdfpsView must contain sensorTouchAreaCoefficient"

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    throw p0
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    if-eqz p0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dozeTimeTick()V

    :cond_0
    return-void
.end method

.method getAnimationViewController()Lcom/android/systemui/biometrics/UdfpsAnimationViewController;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    return-object p0
.end method

.method isIlluminationRequested()Z
    .locals 0

    .line 195
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mIlluminationRequested:Z

    return p0
.end method

.method isWithinSensorArea(FF)Z
    .locals 6

    .line 178
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getTouchTranslation()Landroid/graphics/PointF;

    move-result-object v0

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    .line 182
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v0

    .line 184
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 185
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v0

    div-float/2addr v5, v4

    .line 187
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorTouchAreaCoefficient:F

    mul-float v4, v3, v0

    sub-float v4, v1, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    mul-float p1, v5, v0

    sub-float p1, v2, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    mul-float/2addr v5, v0

    add-float/2addr v2, v5

    cmpg-float p1, p2, v2

    if-gez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    .line 191
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shouldPauseAuth()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 151
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-string p0, "UdfpsView"

    const-string v0, "onAttachedToWindow"

    .line 152
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 157
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-string p0, "UdfpsView"

    const-string v0, "onDetachedFromWindow"

    .line 158
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 163
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 164
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mIlluminationRequested:Z

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mDebugMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mDebugMessage:Ljava/lang/String;

    const/4 v1, 0x0

    const/high16 v2, 0x43200000    # 160.0f

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mDebugTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 96
    sget v0, Lcom/android/systemui/R$id;->hbm_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmSurfaceView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    if-eqz p0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shouldPauseAuth()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 117
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 118
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getPaddingX()I

    move-result p1

    .line 120
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    if-nez p3, :cond_1

    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {p3}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getPaddingY()I

    move-result p2

    .line 122
    :goto_1
    iget-object p3, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    int-to-float p4, p1

    int-to-float p5, p2

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p1

    int-to-float p1, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    int-to-float p2, v0

    invoke-virtual {p3, p4, p5, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 128
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmSurfaceView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    new-instance p2, Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    invoke-direct {p2, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->onSensorRectUpdated(Landroid/graphics/RectF;)V

    .line 129
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    if-eqz p1, :cond_2

    .line 130
    new-instance p2, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    invoke-direct {p2, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onSensorRectUpdated(Landroid/graphics/RectF;)V

    :cond_2
    return-void
.end method

.method onTouchOutsideView()V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    if-eqz p0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onTouchOutsideView()V

    :cond_0
    return-void
.end method

.method setAnimationViewController(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    return-void
.end method

.method setDebugMessage(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mDebugMessage:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-void
.end method

.method public setHbmCallback(Lcom/android/systemui/biometrics/UdfpsHbmCallback;)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmSurfaceView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->setHbmCallback(Lcom/android/systemui/biometrics/UdfpsHbmCallback;)V

    return-void
.end method

.method setSensorProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-void
.end method

.method public startIllumination(Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mIlluminationRequested:Z

    .line 204
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onIlluminationStarting()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmSurfaceView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 208
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmSurfaceView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->startIllumination(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopIllumination()V
    .locals 2

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mIlluminationRequested:Z

    .line 214
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onIlluminationStopped()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmSurfaceView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 218
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmSurfaceView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->stopIllumination()V

    return-void
.end method
