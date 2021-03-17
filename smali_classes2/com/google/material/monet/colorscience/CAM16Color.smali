.class public Lcom/google/material/monet/colorscience/CAM16Color;
.super Ljava/lang/Object;
.source "CAM16Color.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LMS_TO_XYZ:[[D

.field private static final XYZ_TO_LMS:[[D


# instance fields
.field public final C:D

.field public final J:D

.field public final M:D

.field public final Q:D

.field public final h:D

.field private final mColor:Lcom/google/material/monet/colorscience/Color;

.field private final mViewingConditions:Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;

.field public final s:D

.field public final ucs:[D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "CAM16Color"

    const/4 v1, 0x3

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/material/monet/colorscience/CAM16Color;->DEBUG:Z

    new-array v0, v1, [[D

    new-array v2, v1, [D

    .line 163
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [D

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    sput-object v0, Lcom/google/material/monet/colorscience/CAM16Color;->XYZ_TO_LMS:[[D

    new-array v0, v1, [[D

    new-array v2, v1, [D

    .line 169
    fill-array-data v2, :array_3

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_4

    aput-object v2, v0, v4

    new-array v1, v1, [D

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/material/monet/colorscience/CAM16Color;->LMS_TO_XYZ:[[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3fd9aeb3dd11be6eL    # 0.401288
        0x3fe4ce379b77c02bL    # 0.650173
        -0x4055a6e75ff609ddL    # -0.051461
    .end array-data

    :array_1
    .array-data 8
        -0x402ffb9bed30f063L    # -0.250268
        0x3ff345479d4d8341L    # 1.204414
        0x3fa77a2cecc814d7L    # 0.045854
    .end array-data

    :array_2
    .array-data 8
        -0x409ef8055fbb517aL    # -0.002079
        0x3fa9103c8e25c811L    # 0.048952
        0x3fee800431bde82dL    # 0.953127
    .end array-data

    :array_3
    .array-data 8
        0x3ffdcb07a9c88541L    # 1.862067855087233
        -0x400fd1e6aa1f016fL    # -1.011254630531685
        0x3fc3188d60c3ca78L    # 0.1491867754444518
    .end array-data

    :array_4
    .array-data 8
        0x3fd8cd3c2161fe30L    # 0.3875265432361372
        0x3fe3e2e5bee8e9d8L    # 0.6214474419314753
        -0x407d9f0c1985c3f4L    # -0.008973985167612518
    .end array-data

    :array_5
    .array-data 8
        -0x406fc73f02170779L    # -0.01584149884933386
        -0x405e8770323f88d8L    # -0.03412293802851557
        0x3ff0cca78265a79eL    # 1.04996443687785
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 176
    new-instance v0, Lcom/google/material/monet/colorscience/Color;

    invoke-direct {v0, p1}, Lcom/google/material/monet/colorscience/Color;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/material/monet/colorscience/CAM16Color;-><init>(Lcom/google/material/monet/colorscience/Color;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/material/monet/colorscience/Color;)V
    .locals 0

    .line 184
    invoke-virtual {p1}, Lcom/google/material/monet/colorscience/Color;->getXyz()[D

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/material/monet/colorscience/CAM16Color;-><init>([D)V

    return-void
.end method

.method public constructor <init>([D)V
    .locals 30

    move-object/from16 v0, p0

    .line 187
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 188
    sget-object v1, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->DEFAULT:Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;

    iput-object v1, v0, Lcom/google/material/monet/colorscience/CAM16Color;->mViewingConditions:Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;

    .line 189
    invoke-static/range {p1 .. p1}, Lcom/google/material/monet/colorscience/Color;->fromXyz([D)Lcom/google/material/monet/colorscience/Color;

    move-result-object v2

    iput-object v2, v0, Lcom/google/material/monet/colorscience/CAM16Color;->mColor:Lcom/google/material/monet/colorscience/Color;

    .line 190
    sget-object v2, Lcom/google/material/monet/colorscience/CAM16Color;->XYZ_TO_LMS:[[D

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lcom/google/material/monet/MathUtils;->matrixMultiply([D[[D)[D

    move-result-object v2

    .line 191
    invoke-static {v1}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$300(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)[D

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/material/monet/colorscience/CAM16Color;->multiply([D[D)[D

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [D

    const/4 v5, 0x0

    .line 192
    aget-wide v6, v2, v5

    .line 193
    invoke-static {v1}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$400(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/google/material/monet/colorscience/CAM16Color;->adapt(DD)D

    move-result-wide v6

    aput-wide v6, v4, v5

    const/4 v6, 0x1

    aget-wide v7, v2, v6

    .line 194
    invoke-static {v1}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$400(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/google/material/monet/colorscience/CAM16Color;->adapt(DD)D

    move-result-wide v7

    aput-wide v7, v4, v6

    const/4 v7, 0x2

    aget-wide v8, v2, v7

    .line 195
    invoke-static {v1}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$400(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/google/material/monet/colorscience/CAM16Color;->adapt(DD)D

    move-result-wide v8

    aput-wide v8, v4, v7

    .line 197
    aget-wide v8, v4, v5

    .line 198
    aget-wide v10, v4, v6

    .line 199
    aget-wide v12, v4, v7

    const-wide/high16 v14, -0x3fd8000000000000L    # -12.0

    mul-double/2addr v14, v10

    add-double/2addr v14, v12

    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    div-double v14, v14, v16

    add-double/2addr v14, v8

    add-double v16, v8, v10

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v20, v12, v18

    sub-double v20, v16, v20

    const-wide/high16 v22, 0x4022000000000000L    # 9.0

    div-double v6, v20, v22

    .line 202
    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    .line 203
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v22

    .line 204
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    const-wide v26, 0x3f7cac083126e979L    # 0.007

    cmpg-double v4, v24, v26

    const-wide/16 v24, 0x0

    if-gez v4, :cond_0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    cmpg-double v4, v28, v26

    if-gez v4, :cond_0

    move-wide/from16 v6, v24

    move-wide v14, v6

    move-wide/from16 v20, v14

    move-wide/from16 v22, v20

    :cond_0
    cmpg-double v4, v22, v24

    if-gez v4, :cond_1

    const-wide v24, 0x4076800000000000L    # 360.0

    add-double v22, v22, v24

    :cond_1
    move-wide/from16 v2, v22

    .line 210
    iput-wide v2, v0, Lcom/google/material/monet/colorscience/CAM16Color;->h:D

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    add-double v22, v20, v18

    .line 211
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    const-wide v28, 0x400e666666666666L    # 3.8

    add-double v22, v22, v28

    mul-double v22, v22, v2

    .line 212
    invoke-static {v1}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$500(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v2

    mul-double v8, v8, v18

    add-double/2addr v8, v10

    const-wide v10, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    mul-double/2addr v2, v8

    .line 213
    invoke-static {v1}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$600(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v8

    div-double/2addr v2, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 214
    invoke-static {v1}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$700(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v10

    mul-double/2addr v10, v8

    invoke-static {v1}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$800(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v8

    mul-double/2addr v10, v8

    .line 213
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v2

    mul-double/2addr v8, v2

    .line 215
    iput-wide v8, v0, Lcom/google/material/monet/colorscience/CAM16Color;->J:D

    .line 216
    invoke-static {v1}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$700(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v10

    const-wide/high16 v18, 0x4010000000000000L    # 4.0

    div-double v10, v18, v10

    mul-double/2addr v10, v2

    invoke-static {v1}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$600(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v28

    add-double v28, v28, v18

    mul-double v10, v10, v28

    .line 217
    invoke-static {v1}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$900(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v28

    mul-double v10, v10, v28

    iput-wide v10, v0, Lcom/google/material/monet/colorscience/CAM16Color;->Q:D

    const-wide v10, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    .line 218
    invoke-static {v1}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$1000(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v28

    mul-double v28, v28, v10

    invoke-static {v1}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$1100(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v10

    mul-double v28, v28, v10

    mul-double v28, v28, v22

    mul-double/2addr v14, v14

    mul-double/2addr v6, v6

    add-double/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double v28, v28, v6

    const-wide v6, 0x3ff0cccccccccccdL    # 1.05

    mul-double/2addr v12, v6

    add-double v16, v16, v12

    const-wide v6, 0x3fd3851eb851eb85L    # 0.305

    add-double v16, v16, v6

    div-double v6, v28, v16

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    .line 220
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v10, 0x3ffa3d70a3d70a3dL    # 1.64

    const-wide v12, 0x3fd28f5c28f5c28fL    # 0.29

    .line 221
    invoke-static {v1}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$1200(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v14

    .line 220
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    sub-double/2addr v10, v12

    const-wide v12, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v6, v10

    mul-double/2addr v2, v6

    .line 223
    iput-wide v2, v0, Lcom/google/material/monet/colorscience/CAM16Color;->C:D

    .line 224
    invoke-static {v1}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$900(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v10

    mul-double/2addr v2, v10

    iput-wide v2, v0, Lcom/google/material/monet/colorscience/CAM16Color;->M:D

    const-wide/high16 v10, 0x4049000000000000L    # 50.0

    .line 225
    invoke-static {v1}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$700(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v12

    mul-double/2addr v12, v6

    invoke-static {v1}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$600(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v6

    add-double v6, v6, v18

    div-double/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v6, v10

    iput-wide v6, v0, Lcom/google/material/monet/colorscience/CAM16Color;->s:D

    const-wide v6, 0x3ffb333333333333L    # 1.7

    mul-double/2addr v6, v8

    mul-double v8, v8, v26

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    div-double/2addr v6, v8

    const-wide v8, 0x3f9758e219652bd4L    # 0.0228

    mul-double/2addr v2, v8

    add-double/2addr v2, v10

    .line 229
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    div-double/2addr v1, v8

    .line 230
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v1

    .line 231
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v1, v10

    const/4 v3, 0x3

    new-array v3, v3, [D

    aput-wide v6, v3, v5

    const/4 v4, 0x1

    aput-wide v8, v3, v4

    const/4 v4, 0x2

    aput-wide v1, v3, v4

    .line 232
    iput-object v3, v0, Lcom/google/material/monet/colorscience/CAM16Color;->ucs:[D

    return-void
.end method

.method static synthetic access$000(DDD)D
    .locals 0

    .line 24
    invoke-static/range {p0 .. p5}, Lcom/google/material/monet/colorscience/CAM16Color;->lerp(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$100()[[D
    .locals 1

    .line 24
    sget-object v0, Lcom/google/material/monet/colorscience/CAM16Color;->XYZ_TO_LMS:[[D

    return-object v0
.end method

.method static synthetic access$200(DD)D
    .locals 0

    .line 24
    invoke-static {p0, p1, p2, p3}, Lcom/google/material/monet/colorscience/CAM16Color;->adapt(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static adapt(DD)D
    .locals 2

    .line 565
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    mul-double/2addr p2, v0

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr p2, v0

    const-wide v0, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    .line 566
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    mul-double/2addr p0, v0

    mul-double/2addr p0, p2

    const-wide v0, 0x403b2147ae147ae1L    # 27.13

    add-double/2addr p2, v0

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static binarySearchForYByChroma(DDDDD)D
    .locals 19

    move-wide/from16 v0, p6

    move-wide/from16 v2, p2

    move-wide/from16 v4, p8

    .line 363
    invoke-static/range {v0 .. v5}, Lcom/google/material/monet/colorscience/CAM16Color;->relativeLuminance(DDD)D

    move-result-wide v0

    move-wide/from16 v2, p6

    move-wide/from16 v4, p4

    move-wide/from16 v6, p8

    invoke-static/range {v2 .. v7}, Lcom/google/material/monet/colorscience/CAM16Color;->relativeLuminance(DDD)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    move-wide/from16 v5, p4

    move-wide v7, v1

    move-wide v9, v3

    move-wide/from16 v1, p2

    :goto_1
    sub-double v11, v1, v5

    .line 367
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v13, 0x3fb999999999999aL    # 0.1

    cmpl-double v11, v11, v13

    if-lez v11, :cond_6

    sub-double v11, v5, v1

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v13

    add-double/2addr v11, v1

    move-wide/from16 v13, p6

    move-wide v15, v11

    move-wide/from16 v17, p8

    .line 369
    invoke-static/range {v13 .. v18}, Lcom/google/material/monet/colorscience/CAM16Color;->relativeLuminance(DDD)D

    move-result-wide v13

    sub-double v15, v13, p0

    .line 370
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    cmpl-double v17, v9, v3

    if-eqz v17, :cond_1

    cmpg-double v17, v15, v9

    if-gez v17, :cond_2

    :cond_1
    move-wide v7, v11

    move-wide v9, v15

    :cond_2
    if-eqz v0, :cond_3

    cmpl-double v13, v13, p0

    if-lez v13, :cond_4

    goto :goto_2

    :cond_3
    cmpl-double v13, v13, p0

    if-lez v13, :cond_5

    :cond_4
    move-wide v5, v11

    goto :goto_1

    :cond_5
    :goto_2
    move-wide v1, v11

    goto :goto_1

    :cond_6
    return-wide v7
.end method

.method public static binarySearchForYByJ(DDD)D
    .locals 18

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    move-wide v6, v0

    move-wide v8, v6

    :goto_0
    sub-double v10, v2, v4

    .line 266
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3fb999999999999aL    # 0.1

    cmpl-double v10, v10, v12

    if-lez v10, :cond_3

    sub-double v10, v4, v2

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v10, v2

    move-wide v12, v10

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 268
    invoke-static/range {v12 .. v17}, Lcom/google/material/monet/colorscience/CAM16Color;->relativeLuminance(DDD)D

    move-result-wide v12

    sub-double v14, v12, p0

    .line 269
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpl-double v16, v8, v0

    if-eqz v16, :cond_0

    cmpg-double v16, v14, v8

    if-gez v16, :cond_1

    :cond_0
    move-wide v6, v10

    move-wide v8, v14

    :cond_1
    cmpg-double v12, v12, p0

    if-gez v12, :cond_2

    move-wide v2, v10

    goto :goto_0

    :cond_2
    move-wide v4, v10

    goto :goto_0

    :cond_3
    return-wide v6
.end method

.method public static gamutMap(DDD)Lcom/google/material/monet/colorscience/Color;
    .locals 23

    move-wide/from16 v10, p0

    .line 296
    invoke-static/range {p0 .. p5}, Lcom/google/material/monet/colorscience/CAM16Color;->binarySearchForYByJ(DDD)D

    move-result-wide v6

    move-wide v0, v6

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 301
    invoke-static/range {v0 .. v5}, Lcom/google/material/monet/colorscience/CAM16Color;->xyzFromJch(DDD)[D

    move-result-object v0

    .line 302
    invoke-static {v0}, Lcom/google/material/monet/colorscience/Color;->fromXyz([D)Lcom/google/material/monet/colorscience/Color;

    move-result-object v12

    .line 303
    new-instance v0, Lcom/google/material/monet/colorscience/CAM16Color;

    invoke-direct {v0, v12}, Lcom/google/material/monet/colorscience/CAM16Color;-><init>(Lcom/google/material/monet/colorscience/Color;)V

    .line 304
    iget-wide v1, v0, Lcom/google/material/monet/colorscience/CAM16Color;->h:D

    sub-double v1, p4, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    .line 305
    iget-wide v0, v0, Lcom/google/material/monet/colorscience/CAM16Color;->C:D

    sub-double v0, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 306
    invoke-virtual {v12}, Lcom/google/material/monet/colorscience/Color;->getXyz()[D

    move-result-object v0

    const/4 v15, 0x1

    aget-wide v0, v0, v15

    sub-double v0, v10, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v13, v16

    if-gtz v0, :cond_1

    cmpl-double v0, v8, v16

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v12

    .line 314
    :cond_1
    :goto_0
    sget-boolean v18, Lcom/google/material/monet/colorscience/CAM16Color;->DEBUG:Z

    const-string v4, "CAM16Color"

    if-eqz v18, :cond_2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launching second search because hueDelta is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " and y delta is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-wide/16 v2, 0x0

    const-wide v19, 0x4060400000000000L    # 130.0

    move-wide/from16 v0, p0

    move-object/from16 v21, v4

    move-wide/from16 v4, v19

    move-wide/from16 v19, v8

    move-wide/from16 v8, p4

    .line 318
    invoke-static/range {v0 .. v9}, Lcom/google/material/monet/colorscience/CAM16Color;->binarySearchForYByChroma(DDDDD)D

    move-result-wide v6

    move-wide v2, v6

    move-wide/from16 v4, p4

    .line 319
    invoke-static/range {v0 .. v5}, Lcom/google/material/monet/colorscience/CAM16Color;->binarySearchForYByJ(DDD)D

    move-result-wide v0

    .line 320
    invoke-static/range {v0 .. v5}, Lcom/google/material/monet/colorscience/CAM16Color;->xyzFromJch(DDD)[D

    move-result-object v0

    .line 321
    invoke-static {v0}, Lcom/google/material/monet/colorscience/Color;->fromXyz([D)Lcom/google/material/monet/colorscience/Color;

    move-result-object v0

    .line 322
    new-instance v1, Lcom/google/material/monet/colorscience/CAM16Color;

    invoke-direct {v1, v0}, Lcom/google/material/monet/colorscience/CAM16Color;-><init>(Lcom/google/material/monet/colorscience/Color;)V

    .line 323
    iget-wide v2, v1, Lcom/google/material/monet/colorscience/CAM16Color;->h:D

    sub-double v2, p4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 324
    iget-wide v4, v1, Lcom/google/material/monet/colorscience/CAM16Color;->C:D

    sub-double v4, p2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 325
    invoke-virtual {v0}, Lcom/google/material/monet/colorscience/Color;->getXyz()[D

    move-result-object v6

    aget-wide v6, v6, v15

    sub-double v6, v10, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v8, v19, v16

    const-string v9, " hue delta = "

    const-string v15, " chroma = "

    move-object/from16 v22, v12

    const-string v12, ". Error y = "

    move-object/from16 p2, v9

    const-string v9, " J = "

    move-wide/from16 p3, v4

    const-string v4, " at C = "

    const-string v5, " got "

    if-lez v8, :cond_3

    cmpg-double v8, v6, v19

    if-lez v8, :cond_5

    :cond_3
    cmpg-double v8, v6, v16

    if-ltz v8, :cond_4

    cmpg-double v8, v6, v19

    if-gez v8, :cond_7

    :cond_4
    cmpg-double v8, v2, v13

    if-gez v8, :cond_7

    :cond_5
    if-eqz v18, :cond_6

    .line 329
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "round #2 was better; asked for y "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v10, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0}, Lcom/google/material/monet/colorscience/Color;->getXyz()[D

    move-result-object v5

    const/4 v10, 0x1

    aget-wide v10, v5, v10

    double-to-int v5, v10

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/google/material/monet/colorscience/CAM16Color;->C:D

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/google/material/monet/colorscience/CAM16Color;->J:D

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v1, v6

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p3

    double-to-int v1, v13

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, p2

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v8, v21

    .line 329
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v0

    :cond_7
    move-object/from16 v8, p2

    move-wide/from16 v13, p3

    if-eqz v18, :cond_8

    move-wide/from16 p4, v2

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "round #2 was worse; asked for y "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v0}, Lcom/google/material/monet/colorscience/Color;->getXyz()[D

    move-result-object v0

    const/4 v3, 0x1

    aget-wide v10, v0, v3

    double-to-int v0, v10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/google/material/monet/colorscience/CAM16Color;->C:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v1, Lcom/google/material/monet/colorscience/CAM16Color;->J:D

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v0, v6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v0, v13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v21

    .line 340
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v22
.end method

.method private static lerp(DDD)D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p4

    mul-double/2addr v0, p0

    mul-double/2addr p4, p2

    add-double/2addr v0, p4

    return-wide v0
.end method

.method private static multiply([D[D)[D
    .locals 6

    .line 557
    array-length v0, p0

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 558
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 559
    aget-wide v2, p0, v1

    aget-wide v4, p1, v1

    mul-double/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static relativeLuminance(DDD)D
    .locals 0

    .line 250
    invoke-static/range {p0 .. p5}, Lcom/google/material/monet/colorscience/CAM16Color;->xyzFromJch(DDD)[D

    move-result-object p0

    .line 251
    invoke-static {p0}, Lcom/google/material/monet/colorscience/Color;->fromXyz([D)Lcom/google/material/monet/colorscience/Color;

    move-result-object p0

    .line 252
    invoke-virtual {p0}, Lcom/google/material/monet/colorscience/Color;->getXyz()[D

    move-result-object p0

    const/4 p1, 0x1

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method private static unadapt(DD)D
    .locals 4

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr v0, p2

    const-wide p2, 0x403b2147ae147ae1L    # 27.13

    const-wide v2, 0x40030c30c30c30c3L    # 2.380952380952381

    .line 571
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    mul-double/2addr v0, p2

    .line 572
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    .line 573
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide p0

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    sub-double/2addr v0, p2

    div-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method public static xyzFromJch(DDD)[D
    .locals 13

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-ltz v2, :cond_1

    .line 460
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double v6, v2, v4

    cmpl-double v2, v6, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    div-double v0, p2, v6

    :goto_0
    move-wide v8, v0

    .line 462
    sget-object v12, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->DEFAULT:Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;

    move-wide/from16 v10, p4

    invoke-static/range {v6 .. v12}, Lcom/google/material/monet/colorscience/CAM16Color;->xyzFromJrootAlphaHue(DDDLcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)[D

    move-result-object v0

    return-object v0

    .line 458
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static xyzFromJrootAlphaHue(DDDLcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)[D
    .locals 16

    .line 482
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 485
    invoke-static/range {p6 .. p6}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$1200(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v2

    const-wide v4, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v4, v2

    const-wide v2, -0x4018a3d70a3d70a4L    # -0.73

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, p2

    const-wide v4, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    .line 484
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-double v6, v0, v4

    .line 487
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide v8, 0x400e666666666666L    # 3.8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v6, v8

    .line 488
    invoke-static/range {p6 .. p6}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$600(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v8

    .line 490
    invoke-static/range {p6 .. p6}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$1200(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    const-wide v12, 0x3ff7ae147ae147aeL    # 1.48

    add-double/2addr v10, v12

    .line 491
    invoke-static/range {p6 .. p6}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$700(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v12

    div-double/2addr v4, v12

    div-double/2addr v4, v10

    move-wide/from16 v10, p0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v8, v4

    .line 493
    invoke-static/range {p6 .. p6}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$1000(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v4

    const-wide v10, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    mul-double/2addr v4, v10

    invoke-static/range {p6 .. p6}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$1100(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v10

    mul-double/2addr v4, v10

    mul-double/2addr v4, v6

    .line 494
    invoke-static/range {p6 .. p6}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$500(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v6

    div-double/2addr v8, v6

    .line 496
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 497
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v10, 0x3fd3851eb851eb85L    # 0.305

    add-double/2addr v10, v8

    const-wide/high16 v12, 0x4037000000000000L    # 23.0

    mul-double/2addr v10, v12

    mul-double/2addr v10, v2

    mul-double/2addr v4, v12

    const-wide/high16 v12, 0x4026000000000000L    # 11.0

    mul-double/2addr v12, v6

    const-wide/high16 v14, 0x405b000000000000L    # 108.0

    mul-double/2addr v14, v0

    add-double/2addr v12, v14

    mul-double/2addr v2, v12

    add-double/2addr v4, v2

    div-double/2addr v10, v4

    mul-double/2addr v6, v10

    mul-double/2addr v10, v0

    const/4 v0, 0x3

    new-array v0, v0, [D

    const-wide v1, 0x407cc00000000000L    # 460.0

    mul-double/2addr v8, v1

    const-wide v1, 0x407c300000000000L    # 451.0

    mul-double/2addr v1, v6

    add-double/2addr v1, v8

    const-wide/high16 v3, 0x4072000000000000L    # 288.0

    mul-double/2addr v3, v10

    add-double/2addr v1, v3

    const-wide v3, 0x3f475b0cf4812fa0L    # 7.127583749109052E-4

    mul-double/2addr v1, v3

    const/4 v5, 0x0

    aput-wide v1, v0, v5

    const-wide v1, 0x408bd80000000000L    # 891.0

    mul-double/2addr v1, v6

    sub-double v1, v8, v1

    const-wide v12, 0x4070500000000000L    # 261.0

    mul-double/2addr v12, v10

    sub-double/2addr v1, v12

    mul-double/2addr v1, v3

    const/4 v12, 0x1

    aput-wide v1, v0, v12

    const-wide v1, 0x406b800000000000L    # 220.0

    mul-double/2addr v6, v1

    sub-double/2addr v8, v6

    const-wide v1, 0x40b89c0000000000L    # 6300.0

    mul-double/2addr v10, v1

    sub-double/2addr v8, v10

    mul-double/2addr v8, v3

    const/4 v1, 0x2

    aput-wide v8, v0, v1

    .line 511
    aget-wide v2, v0, v5

    invoke-static/range {p6 .. p6}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$400(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Lcom/google/material/monet/colorscience/CAM16Color;->unadapt(DD)D

    move-result-wide v2

    aput-wide v2, v0, v5

    .line 512
    aget-wide v2, v0, v12

    invoke-static/range {p6 .. p6}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$400(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/material/monet/colorscience/CAM16Color;->unadapt(DD)D

    move-result-wide v2

    aput-wide v2, v0, v12

    .line 513
    aget-wide v2, v0, v1

    invoke-static/range {p6 .. p6}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$400(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/material/monet/colorscience/CAM16Color;->unadapt(DD)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 515
    invoke-static/range {p6 .. p6}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->access$1300(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)[D

    move-result-object v1

    .line 516
    invoke-static {v0, v1}, Lcom/google/material/monet/colorscience/CAM16Color;->multiply([D[D)[D

    move-result-object v0

    .line 517
    sget-object v1, Lcom/google/material/monet/colorscience/CAM16Color;->LMS_TO_XYZ:[[D

    invoke-static {v0, v1}, Lcom/google/material/monet/MathUtils;->matrixMultiply([D[[D)[D

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getColor()Lcom/google/material/monet/colorscience/Color;
    .locals 0

    .line 582
    iget-object p0, p0, Lcom/google/material/monet/colorscience/CAM16Color;->mColor:Lcom/google/material/monet/colorscience/Color;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CAM16Color{color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {p0}, Lcom/google/material/monet/colorscience/CAM16Color;->getColor()Lcom/google/material/monet/colorscience/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", J="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/material/monet/colorscience/CAM16Color;->J:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", C="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/material/monet/colorscience/CAM16Color;->C:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/material/monet/colorscience/CAM16Color;->h:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", Q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/material/monet/colorscience/CAM16Color;->Q:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", M="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/material/monet/colorscience/CAM16Color;->M:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/material/monet/colorscience/CAM16Color;->s:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
