.class public Lcom/google/android/systemui/assist/uihints/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# direct methods
.method public static convertDpToPx(FLandroid/content/Context;)I
    .locals 1

    .line 24
    invoke-static {p1}, Lcom/google/android/systemui/assist/uihints/DisplayUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p1

    .line 26
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 29
    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static convertSpToPx(FLandroid/content/Context;)I
    .locals 1

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x2

    .line 35
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getCornerRadiusBottom(Landroid/content/Context;)I
    .locals 4

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "rounded_corner_radius_bottom"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 136
    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/DisplayUtils;->getCornerRadiusDefault(Landroid/content/Context;)I

    move-result v0

    :cond_1
    return v0
.end method

.method private static getCornerRadiusDefault(Landroid/content/Context;)I
    .locals 4

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "rounded_corner_radius"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 1

    const-string v0, "window"

    .line 169
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 170
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static getHeight(Landroid/content/Context;)I
    .locals 2

    .line 66
    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/DisplayUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    .line 68
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 69
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 71
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0

    .line 73
    :cond_1
    :goto_0
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getRotatedHeight(Landroid/content/Context;)I
    .locals 1

    .line 86
    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/DisplayUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    .line 87
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 88
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 89
    iget p0, v0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public static getRotatedWidth(Landroid/content/Context;)I
    .locals 1

    .line 99
    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/DisplayUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    .line 100
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 101
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 102
    iget p0, v0, Landroid/graphics/Point;->x:I

    return p0
.end method

.method public static getWidth(Landroid/content/Context;)I
    .locals 2

    .line 46
    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/DisplayUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    .line 48
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 49
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 51
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0

    .line 53
    :cond_1
    :goto_0
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method
