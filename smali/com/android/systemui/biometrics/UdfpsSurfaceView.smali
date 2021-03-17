.class public Lcom/android/systemui/biometrics/UdfpsSurfaceView;
.super Landroid/view/SurfaceView;
.source "UdfpsSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/UdfpsSurfaceView$SimpleDrawable;
    }
.end annotation


# instance fields
.field private mHbmCallback:Lcom/android/systemui/biometrics/HbmCallback;

.field private final mHolder:Landroid/view/SurfaceHolder;

.field private final mIlluminationDotDrawable:Lcom/android/systemui/biometrics/UdfpsSurfaceView$SimpleDrawable;

.field private final mSensorPaint:Landroid/graphics/Paint;

.field private mSensorRect:Landroid/graphics/RectF;


# direct methods
.method public static synthetic $r8$lambda$Z9tzu3ZrIIT0efQO34MS9RlSLHU(Lcom/android/systemui/biometrics/UdfpsSurfaceView;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->lambda$new$0(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 p2, 0x1

    .line 56
    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 58
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mSensorRect:Landroid/graphics/RectF;

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mSensorPaint:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 p2, 0xff

    .line 61
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 62
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    new-instance p1, Lcom/android/systemui/biometrics/UdfpsSurfaceView-$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsSurfaceView-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsSurfaceView;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mIlluminationDotDrawable:Lcom/android/systemui/biometrics/UdfpsSurfaceView$SimpleDrawable;

    return-void
.end method

.method private drawImmediately(Lcom/android/systemui/biometrics/UdfpsSurfaceView$SimpleDrawable;)V
    .locals 2

    const/4 v0, 0x0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 107
    invoke-interface {p1, v0}, Lcom/android/systemui/biometrics/UdfpsSurfaceView$SimpleDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 113
    :cond_1
    throw p1
.end method

.method private synthetic lambda$new$0(Landroid/graphics/Canvas;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mSensorRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mSensorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method onSensorRectUpdated(Landroid/graphics/RectF;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mSensorRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setHbmCallback(Lcom/android/systemui/biometrics/HbmCallback;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHbmCallback:Lcom/android/systemui/biometrics/HbmCallback;

    return-void
.end method

.method public startIllumination(Ljava/lang/Runnable;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHbmCallback:Lcom/android/systemui/biometrics/HbmCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHbmCallback:Lcom/android/systemui/biometrics/HbmCallback;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/biometrics/HbmCallback;->enableHbm(Landroid/view/Surface;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mIlluminationDotDrawable:Lcom/android/systemui/biometrics/UdfpsSurfaceView$SimpleDrawable;

    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->drawImmediately(Lcom/android/systemui/biometrics/UdfpsSurfaceView$SimpleDrawable;)V

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x32

    .line 83
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public stopIllumination()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHbmCallback:Lcom/android/systemui/biometrics/HbmCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHbmCallback:Lcom/android/systemui/biometrics/HbmCallback;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/biometrics/HbmCallback;->disableHbm(Landroid/view/Surface;)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method
