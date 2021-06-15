.class public final Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;
.super Lcom/android/systemui/animation/ActivityLaunchAnimator$State;
.source "ExpandAnimationParameters.kt"


# instance fields
.field private linearProgress:F

.field private parentStartClipTopAmount:I

.field private progress:F

.field private startClipTopAmount:I

.field private startTranslationZ:F


# direct methods
.method public constructor <init>()V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 20
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;-><init>(IIIIFF)V

    return-void
.end method

.method public constructor <init>(IIIIFF)V
    .locals 11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 18
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;-><init>(IIIIFFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final getLinearProgress()F
    .locals 0

    .line 28
    iget p0, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->linearProgress:F

    return p0
.end method

.method public final getParentStartClipTopAmount()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->parentStartClipTopAmount:I

    return p0
.end method

.method public final getProgress()F
    .locals 0

    .line 27
    iget p0, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->progress:F

    return p0
.end method

.method public final getProgress(JJ)F
    .locals 6

    .line 42
    sget-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->Companion:Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->linearProgress:F

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;->getProgress(FJJ)F

    move-result p0

    return p0
.end method

.method public final getStartClipTopAmount()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->startClipTopAmount:I

    return p0
.end method

.method public final getStartTranslationZ()F
    .locals 0

    .line 24
    iget p0, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->startTranslationZ:F

    return p0
.end method

.method public getTopChange()I
    .locals 5

    .line 34
    iget v0, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->startClipTopAmount:I

    int-to-float v1, v0

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    int-to-float v0, v0

    .line 36
    sget-object v1, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->linearProgress:F

    invoke-interface {v1, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 35
    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_1

    :cond_1
    move v0, v3

    .line 38
    :goto_1
    invoke-super {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getTopChange()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final setLinearProgress(F)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->linearProgress:F

    return-void
.end method

.method public final setParentStartClipTopAmount(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->parentStartClipTopAmount:I

    return-void
.end method

.method public final setProgress(F)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->progress:F

    return-void
.end method

.method public final setStartClipTopAmount(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->startClipTopAmount:I

    return-void
.end method

.method public final setStartTranslationZ(F)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->startTranslationZ:F

    return-void
.end method
