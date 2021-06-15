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
.field private mHbmCallback:Lcom/android/systemui/biometrics/UdfpsHbmCallback;

.field private final mHbmType:I

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
    .locals 2

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 71
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    .line 72
    invoke-interface {p2, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 74
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mSensorRect:Landroid/graphics/RectF;

    .line 75
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mSensorPaint:Landroid/graphics/Paint;

    .line 76
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 p1, 0xff

    .line 77
    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 78
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    new-instance p1, Lcom/android/systemui/biometrics/UdfpsSurfaceView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsSurfaceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsSurfaceView;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mIlluminationDotDrawable:Lcom/android/systemui/biometrics/UdfpsSurfaceView$SimpleDrawable;

    .line 84
    sget-boolean p1, Landroid/os/Build;->IS_ENG:Z

    if-nez p1, :cond_1

    sget-boolean p1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHbmType:I

    goto :goto_1

    .line 85
    :cond_1
    :goto_0
    iget-object p1, p0, Landroid/view/SurfaceView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, -0x2

    const-string v1, "com.android.systemui.biometrics.UdfpsSurfaceView.hbmType"

    invoke-static {p1, v1, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHbmType:I

    :goto_1
    return-void
.end method

.method private drawImmediately(Lcom/android/systemui/biometrics/UdfpsSurfaceView$SimpleDrawable;)V
    .locals 2

    const/4 v0, 0x0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 139
    invoke-interface {p1, v0}, Lcom/android/systemui/biometrics/UdfpsSurfaceView$SimpleDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 143
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 145
    :cond_1
    throw p1
.end method

.method private synthetic lambda$new$0(Landroid/graphics/Canvas;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mSensorRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mSensorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method onSensorRectUpdated(Landroid/graphics/RectF;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mSensorRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setHbmCallback(Lcom/android/systemui/biometrics/UdfpsHbmCallback;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHbmCallback:Lcom/android/systemui/biometrics/UdfpsHbmCallback;

    return-void
.end method

.method public startIllumination(Ljava/lang/Runnable;)V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHbmCallback:Lcom/android/systemui/biometrics/UdfpsHbmCallback;

    if-eqz v0, :cond_0

    .line 100
    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHbmType:I

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/biometrics/UdfpsHbmCallback;->enableHbm(ILandroid/view/Surface;)V

    goto :goto_0

    :cond_0
    const-string v0, "UdfpsSurfaceView"

    const-string v1, "startIllumination | mHbmCallback is null"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHbmType:I

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mIlluminationDotDrawable:Lcom/android/systemui/biometrics/UdfpsSurfaceView$SimpleDrawable;

    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->drawImmediately(Lcom/android/systemui/biometrics/UdfpsSurfaceView$SimpleDrawable;)V

    :cond_1
    if-eqz p1, :cond_2

    const-wide/16 v0, 0x32

    .line 113
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public stopIllumination()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHbmCallback:Lcom/android/systemui/biometrics/UdfpsHbmCallback;

    if-eqz v0, :cond_0

    .line 120
    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHbmType:I

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/biometrics/UdfpsHbmCallback;->disableHbm(ILandroid/view/Surface;)V

    goto :goto_0

    :cond_0
    const-string v0, "UdfpsSurfaceView"

    const-string v1, "stopIllumination | mHbmCallback is null"

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method
