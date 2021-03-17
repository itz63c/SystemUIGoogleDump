.class public final Lcom/android/systemui/statusbar/PowerButtonReveal;
.super Ljava/lang/Object;
.source "LightRevealScrim.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/LightRevealEffect;


# instance fields
.field private final OVAL_INITIAL_HEIGHT:F

.field private final WIDTH_INCREASE_MULTIPLIER:F

.field private final powerButtonY:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->powerButtonY:F

    const/high16 p1, 0x42480000    # 50.0f

    .line 90
    iput p1, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->OVAL_INITIAL_HEIGHT:F

    const/high16 p1, 0x3fa00000    # 1.25f

    .line 92
    iput p1, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->WIDTH_INCREASE_MULTIPLIER:F

    return-void
.end method


# virtual methods
.method public final getPowerButtonY()F
    .locals 0

    .line 87
    iget p0, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->powerButtonY:F

    return p0
.end method

.method public setRevealAmountOnScrim(FLcom/android/systemui/statusbar/LightRevealScrim;)V
    .locals 6

    const-string v0, "scrim"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 97
    sget-object v0, Lcom/android/systemui/statusbar/LightRevealEffect;->Companion:Lcom/android/systemui/statusbar/LightRevealEffect$Companion;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/LightRevealEffect$Companion;->getPercentPastThreshold(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    .line 100
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientEndColorAlpha(F)V

    .line 102
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 103
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->WIDTH_INCREASE_MULTIPLIER:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PowerButtonReveal;->getPowerButtonY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->OVAL_INITIAL_HEIGHT:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    .line 106
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->WIDTH_INCREASE_MULTIPLIER:F

    mul-float/2addr v2, v4

    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->WIDTH_INCREASE_MULTIPLIER:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PowerButtonReveal;->getPowerButtonY()F

    move-result v4

    iget p0, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->OVAL_INITIAL_HEIGHT:F

    div-float/2addr p0, v3

    add-float/2addr v4, p0

    .line 109
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr v4, p0

    .line 101
    invoke-virtual {p2, v0, v1, v2, v4}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientBounds(FFFF)V

    return-void
.end method
