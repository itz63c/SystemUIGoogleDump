.class public final Lcom/android/systemui/biometrics/AuthRippleView;
.super Landroid/view/View;
.source "AuthRippleView.kt"


# instance fields
.field private rippleInProgress:Z

.field private final ripplePaint:Landroid/graphics/Paint;

.field private final rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance p1, Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/charging/RippleShader;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    .line 42
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->ripplePaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 45
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/charging/RippleShader;->setColor(I)V

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/charging/RippleShader;->setProgress(F)V

    const v0, 0x3ecccccd    # 0.4f

    .line 47
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/charging/RippleShader;->setSparkleStrength(F)V

    .line 48
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/16 p1, 0x8

    .line 49
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic access$getRippleShader$p(Lcom/android/systemui/biometrics/AuthRippleView;)Lcom/android/systemui/statusbar/charging/RippleShader;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    return-object p0
.end method

.method public static final synthetic access$setRippleInProgress$p(Lcom/android/systemui/biometrics/AuthRippleView;Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleInProgress:Z

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthRippleView;->ripplePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public final setColor(I)V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/charging/RippleShader;->setColor(I)V

    return-void
.end method

.method public final setSensorLocation(Landroid/graphics/PointF;)V
    .locals 5

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/charging/RippleShader;->setOrigin(Landroid/graphics/PointF;)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x3

    new-array v2, v2, [F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    const/4 p1, 0x2

    aput p0, v2, p1

    invoke-static {v1, v2}, Lkotlin/comparisons/ComparisonsKt;->maxOf(F[F)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/charging/RippleShader;->setRadius(F)V

    return-void
.end method

.method public final startRipple(Ljava/lang/Runnable;)V
    .locals 7

    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 63
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 64
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x5fd

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 66
    new-instance v2, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [I

    .line 73
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0xa7

    .line 74
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 75
    new-instance v3, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$2;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v0, [I

    .line 80
    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1a1

    .line 81
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v4, 0x45c

    .line 82
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 83
    new-instance v4, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$3;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 89
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    aput-object v3, v5, v0

    .line 90
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 91
    new-instance v0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$4;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$4;-><init>(Ljava/lang/Runnable;Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 98
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 99
    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleInProgress:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x7f
    .end array-data

    :array_2
    .array-data 4
        0x7f
        0x0
    .end array-data
.end method
