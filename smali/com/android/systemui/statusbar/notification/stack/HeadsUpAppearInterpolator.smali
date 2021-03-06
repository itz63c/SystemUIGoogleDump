.class public Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;
.super Landroid/view/animation/PathInterpolator;
.source "HeadsUpAppearInterpolator.java"


# static fields
.field private static X1:F = 250.0f

.field private static X2:F = 200.0f

.field private static XTOT:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x437a0000    # 250.0f

    const/high16 v1, 0x43480000    # 200.0f

    add-float/2addr v0, v1

    .line 29
    sput v0, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;->XTOT:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-static {}, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;->getAppearPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    return-void
.end method

.method private static getAppearPath()Landroid/graphics/Path;
    .locals 9

    .line 36
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    const/4 v0, 0x0

    .line 37
    invoke-virtual {v7, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 40
    sget v0, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;->X1:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v2, v0, v1

    sget v3, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;->XTOT:F

    div-float/2addr v2, v3

    mul-float/2addr v1, v0

    div-float v4, v1, v3

    div-float v5, v0, v3

    const/high16 v8, 0x3f900000    # 1.125f

    move-object v0, v7

    move v1, v2

    move v2, v8

    move v3, v4

    move v4, v8

    move v6, v8

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 43
    sget v0, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;->X1:F

    sget v1, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;->X2:F

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    sget v3, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;->XTOT:F

    div-float/2addr v2, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    div-float v3, v0, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, v7

    move v1, v2

    move v2, v8

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-object v7
.end method

.method public static getFractionUntilOvershoot()F
    .locals 2

    .line 50
    sget v0, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;->X1:F

    sget v1, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;->XTOT:F

    div-float/2addr v0, v1

    return v0
.end method
