.class public Lcom/google/material/monet/colorscience/Contrast;
.super Ljava/lang/Object;
.source "Contrast.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static lstarToY(D)D
    .locals 5

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    cmpl-double v0, p0, v0

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    if-lez v0, :cond_0

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    add-double/2addr p0, v3

    const-wide/high16 v3, 0x405d000000000000L    # 116.0

    div-double/2addr p0, v3

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    .line 84
    invoke-static {p0, p1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    :goto_0
    mul-double/2addr p0, v1

    return-wide p0

    :cond_0
    const-wide v3, 0x408c380000000000L    # 903.0

    div-double/2addr p0, v3

    goto :goto_0
.end method

.method public static yToLstar(D)D
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p0, v0

    const-wide v0, 0x3f822354d28f7cd6L    # 0.008856451679035631

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    const-wide v0, 0x408c3a5ed097b426L    # 903.2962962962963

    mul-double/2addr p0, v0

    return-wide p0

    .line 105
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    sub-double/2addr p0, v0

    return-wide p0
.end method
