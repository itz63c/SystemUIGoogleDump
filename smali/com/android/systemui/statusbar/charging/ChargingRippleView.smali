.class public final Lcom/android/systemui/statusbar/charging/ChargingRippleView;
.super Landroid/view/View;
.source "ChargingRippleView.kt"


# instance fields
.field private final defaultColor:I

.field private duration:J

.field private origin:Landroid/graphics/PointF;

.field private rippleInProgress:Z

.field private final ripplePaint:Landroid/graphics/Paint;

.field private final rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p1, Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/charging/RippleShader;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    const/4 p2, -0x1

    .line 37
    iput p2, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->defaultColor:I

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->ripplePaint:Landroid/graphics/Paint;

    .line 43
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->origin:Landroid/graphics/PointF;

    const-wide/16 v1, 0x6d6

    .line 45
    iput-wide v1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->duration:J

    .line 48
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/charging/RippleShader;->setColor(I)V

    const/4 p2, 0x0

    .line 49
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/charging/RippleShader;->setProgress(F)V

    const p2, 0x3e99999a    # 0.3f

    .line 50
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/charging/RippleShader;->setSparkleStrength(F)V

    .line 51
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/16 p1, 0x8

    .line 52
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic access$getRippleShader$p(Lcom/android/systemui/statusbar/charging/ChargingRippleView;)Lcom/android/systemui/statusbar/charging/RippleShader;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    return-object p0
.end method

.method public static synthetic startRipple$default(Lcom/android/systemui/statusbar/charging/ChargingRippleView;Ljava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->startRipple(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final getRippleInProgress()Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleInProgress:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/charging/RippleShader;->setPixelDensity(F)V

    .line 62
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/charging/RippleShader;->setPixelDensity(F)V

    .line 57
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->ripplePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public final setColor(I)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/charging/RippleShader;->setColor(I)V

    return-void
.end method

.method public final setDuration(J)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->duration:J

    return-void
.end method

.method public final setOrigin(Landroid/graphics/PointF;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/charging/RippleShader;->setOrigin(Landroid/graphics/PointF;)V

    return-void
.end method

.method public final setRadius(F)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/charging/RippleShader;->setRadius(F)V

    return-void
.end method

.method public final setRippleInProgress(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleInProgress:Z

    return-void
.end method

.method public final startRipple()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->startRipple$default(Lcom/android/systemui/statusbar/charging/ChargingRippleView;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public final startRipple(Ljava/lang/Runnable;)V
    .locals 3

    .line 67
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 70
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 71
    iget-wide v1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->duration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 72
    new-instance v1, Lcom/android/systemui/statusbar/charging/ChargingRippleView$startRipple$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/charging/ChargingRippleView$startRipple$1;-><init>(Lcom/android/systemui/statusbar/charging/ChargingRippleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 80
    new-instance v1, Lcom/android/systemui/statusbar/charging/ChargingRippleView$startRipple$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/charging/ChargingRippleView$startRipple$2;-><init>(Lcom/android/systemui/statusbar/charging/ChargingRippleView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 87
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 p1, 0x0

    .line 88
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleInProgress:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
