.class public Lcom/android/systemui/biometrics/UdfpsView;
.super Landroid/widget/FrameLayout;
.source "UdfpsView.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeReceiver;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;


# instance fields
.field private final mAnimationView:Lcom/android/systemui/biometrics/UdfpsAnimationView;

.field private mDebugMessage:Ljava/lang/String;

.field private final mDebugTextPaint:Landroid/graphics/Paint;

.field private mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

.field private final mHbmSurfaceView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

.field private mIlluminationRequested:Z

.field private mNotificationShadeExpanded:Z

.field private mProgressBar:Lcom/android/systemui/biometrics/UdfpsProgressBar;

.field private mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field private final mSensorRect:Landroid/graphics/RectF;

.field private final mSensorTouchAreaCoefficient:F

.field private mStatusBarState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/R$styleable;->UdfpsView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 77
    :try_start_0
    sget v0, Lcom/android/systemui/R$styleable;->UdfpsView_sensorTouchAreaCoefficient:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorTouchAreaCoefficient:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 89
    sget p2, Lcom/android/systemui/R$layout;->udfps_surface_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmSurfaceView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    .line 91
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x4

    .line 92
    invoke-virtual {p2, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 95
    sget p2, Lcom/android/systemui/R$layout;->udfps_animation_view:I

    invoke-virtual {p1, p2, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/UdfpsAnimationView;

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationView:Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 97
    invoke-virtual {p1, p0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->setParent(Lcom/android/systemui/biometrics/UdfpsView;)V

    .line 98
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 100
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    .line 102
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mDebugTextPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 103
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const p2, -0xffff01

    .line 104
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x42000000    # 32.0f

    .line 105
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 107
    iput-boolean v2, p0, Lcom/android/systemui/biometrics/UdfpsView;->mIlluminationRequested:Z

    return-void

    .line 78
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "UdfpsView must contain sensorTouchAreaCoefficient"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 84
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    throw p0
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationView:Lcom/android/systemui/biometrics/UdfpsAnimationView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->dozeTimeTick()V

    return-void
.end method

.method getSensorRect()Landroid/graphics/RectF;
    .locals 1

    .line 195
    new-instance v0, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method isIlluminationRequested()Z
    .locals 0

    .line 230
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mIlluminationRequested:Z

    return p0
.end method

.method isValidTouch(FFF)Z
    .locals 5

    .line 205
    iget-object p3, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    .line 206
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    .line 208
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 209
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v1

    div-float/2addr v4, v3

    .line 211
    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorTouchAreaCoefficient:F

    mul-float v3, v2, v1

    sub-float v3, p3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    mul-float/2addr v2, v1

    add-float/2addr p3, v2

    cmpg-float p1, p1, p3

    if-gez p1, :cond_0

    mul-float p1, v4, v1

    sub-float p1, v0, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    mul-float/2addr v4, v1

    add-float/2addr v0, v4

    cmpg-float p1, p2, v0

    if-gez p1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsView;->shouldPauseAuth()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 171
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-string v0, "UdfpsView"

    const-string v1, "onAttachedToWindow"

    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationView:Lcom/android/systemui/biometrics/UdfpsAnimationView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->updateColor()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 180
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-string p0, "UdfpsView"

    const-string v0, "onDetachedFromWindow"

    .line 181
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 186
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mIlluminationRequested:Z

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mDebugMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mDebugMessage:Ljava/lang/String;

    const/4 v1, 0x0

    const/high16 v2, 0x43200000    # 160.0f

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mDebugTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method onEnrollmentHelp()V
    .locals 0

    return-void
.end method

.method onEnrollmentProgress(I)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mProgressBar:Lcom/android/systemui/biometrics/UdfpsProgressBar;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->onEnrollmentProgress(ILcom/android/systemui/biometrics/UdfpsProgressBar;)V

    return-void
.end method

.method public onExpandedChanged(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mNotificationShadeExpanded:Z

    return-void
.end method

.method public onExpansionChanged(FZ)V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationView:Lcom/android/systemui/biometrics/UdfpsAnimationView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->onExpansionChanged(FZ)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 154
    sget v0, Lcom/android/systemui/R$id;->progress_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsProgressBar;

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mProgressBar:Lcom/android/systemui/biometrics/UdfpsProgressBar;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 159
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 160
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationView:Lcom/android/systemui/biometrics/UdfpsAnimationView;

    invoke-virtual {p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->getPaddingX()I

    move-result p2

    add-int/lit8 p2, p2, 0x0

    int-to-float p2, p2

    iget-object p3, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationView:Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 161
    invoke-virtual {p3}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->getPaddingY()I

    move-result p3

    add-int/lit8 p3, p3, 0x0

    int-to-float p3, p3

    iget-object p4, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget p4, p4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    mul-int/lit8 p4, p4, 0x2

    iget-object p5, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationView:Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 162
    invoke-virtual {p5}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->getPaddingX()I

    move-result p5

    add-int/2addr p4, p5

    int-to-float p4, p4

    iget-object p5, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget p5, p5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    mul-int/lit8 p5, p5, 0x2

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationView:Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 163
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->getPaddingY()I

    move-result v0

    add-int/2addr p5, v0

    int-to-float p5, p5

    .line 160
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 165
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmSurfaceView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    new-instance p2, Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    invoke-direct {p2, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->onSensorRectUpdated(Landroid/graphics/RectF;)V

    .line 166
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationView:Lcom/android/systemui/biometrics/UdfpsAnimationView;

    new-instance p2, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    invoke-direct {p2, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->onSensorRectUpdated(Landroid/graphics/RectF;)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mStatusBarState:I

    return-void
.end method

.method setDebugMessage(Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mDebugMessage:Ljava/lang/String;

    .line 200
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-void
.end method

.method setExtras(Lcom/android/systemui/biometrics/UdfpsAnimation;Lcom/android/systemui/biometrics/UdfpsEnrollHelper;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationView:Lcom/android/systemui/biometrics/UdfpsAnimationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->setAnimation(Lcom/android/systemui/biometrics/UdfpsAnimation;)V

    .line 116
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsView;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    const/16 p1, 0x8

    if-eqz p2, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mProgressBar:Lcom/android/systemui/biometrics/UdfpsProgressBar;

    invoke-virtual {p2, v0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->updateProgress(Lcom/android/systemui/biometrics/UdfpsProgressBar;)V

    .line 120
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mProgressBar:Lcom/android/systemui/biometrics/UdfpsProgressBar;

    invoke-virtual {p2}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->shouldShowProgressBar()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mProgressBar:Lcom/android/systemui/biometrics/UdfpsProgressBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setHbmCallback(Lcom/android/systemui/biometrics/HbmCallback;)V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmSurfaceView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->setHbmCallback(Lcom/android/systemui/biometrics/HbmCallback;)V

    return-void
.end method

.method setSensorProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-void
.end method

.method shouldPauseAuth()Z
    .locals 2

    .line 224
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mNotificationShadeExpanded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mStatusBarState:I

    if-ne v0, v1, :cond_2

    :cond_0
    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mStatusBarState:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public startIllumination(Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mIlluminationRequested:Z

    .line 239
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationView:Lcom/android/systemui/biometrics/UdfpsAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmSurfaceView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 241
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmSurfaceView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->startIllumination(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopIllumination()V
    .locals 2

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mIlluminationRequested:Z

    .line 247
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationView:Lcom/android/systemui/biometrics/UdfpsAnimationView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmSurfaceView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 249
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmSurfaceView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->stopIllumination()V

    return-void
.end method
