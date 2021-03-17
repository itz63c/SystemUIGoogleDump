.class public Lcom/google/material/monet/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public static clamp(DDD)D
    .locals 0

    .line 14
    invoke-static {p4, p5, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static matrixMultiply([D[[D)[D
    .locals 10

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 19
    aget-wide v2, p0, v1

    aget-object v4, p1, v1

    aget-wide v4, v4, v1

    mul-double/2addr v2, v4

    const/4 v4, 0x1

    aget-wide v5, p0, v4

    aget-object v7, p1, v1

    aget-wide v7, v7, v4

    mul-double/2addr v5, v7

    add-double/2addr v2, v5

    const/4 v5, 0x2

    aget-wide v6, p0, v5

    aget-object v8, p1, v1

    aget-wide v8, v8, v5

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    aput-wide v2, v0, v1

    aget-wide v2, p0, v1

    aget-object v6, p1, v4

    aget-wide v6, v6, v1

    mul-double/2addr v2, v6

    aget-wide v6, p0, v4

    aget-object v8, p1, v4

    aget-wide v8, v8, v4

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    aget-wide v6, p0, v5

    aget-object v8, p1, v4

    aget-wide v8, v8, v5

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    aput-wide v2, v0, v4

    aget-wide v2, p0, v1

    aget-object v6, p1, v5

    aget-wide v6, v6, v1

    mul-double/2addr v2, v6

    aget-wide v6, p0, v4

    aget-object v1, p1, v5

    aget-wide v8, v1, v4

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    aget-wide v6, p0, v5

    aget-object p0, p1, v5

    aget-wide p0, p0, v5

    mul-double/2addr v6, p0

    add-double/2addr v2, v6

    aput-wide v2, v0, v5

    return-object v0
.end method
