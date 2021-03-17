.class Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;
.super Ljava/lang/Object;
.source "CAM16Color.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/material/monet/colorscience/CAM16Color;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewingConditions"
.end annotation


# static fields
.field private static final D65:[D

.field static final DEFAULT:Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;


# instance fields
.field final mAdaptingLuminance:D

.field private final mAw:D

.field final mBackgroundRelativeLuminance:D

.field private final mBackgroundYToWhitepointY:D

.field private final mC:D

.field final mDiscountingIlluminant:Z

.field private final mDrgb:[D

.field private final mDrgbInverse:[D

.field private final mFL:D

.field private final mFLRoot:D

.field private final mK:D

.field private final mNC:D

.field private final mNbb:D

.field private final mNcb:D

.field final mSurround:D

.field private final mSurroundFactor:D

.field final mWhitepoint:[D

.field private final mZ:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 59
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->D65:[D

    .line 60
    new-instance v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;

    invoke-direct {v0}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;-><init>()V

    sput-object v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->DEFAULT:Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;

    return-void

    :array_0
    .array-data 8
        0x4057c3020c49ba5eL    # 95.047
        0x4059000000000000L    # 100.0
        0x405b3883126e978dL    # 108.883
    .end array-data
.end method

.method constructor <init>()V
    .locals 9

    .line 105
    sget-object v1, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->D65:[D

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;-><init>([DDDDZ)V

    return-void
.end method

.method constructor <init>([DDDDZ)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v10, p6

    move/from16 v12, p8

    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz v1, :cond_5

    .line 114
    array-length v6, v1

    const/4 v13, 0x3

    if-ne v6, v13, :cond_4

    .line 117
    iput-object v1, v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mWhitepoint:[D

    .line 118
    iput-wide v2, v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mAdaptingLuminance:D

    .line 119
    iput-wide v4, v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mBackgroundRelativeLuminance:D

    .line 120
    iput-wide v10, v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mSurround:D

    .line 121
    iput-boolean v12, v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mDiscountingIlluminant:Z

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v10, v14

    if-ltz v6, :cond_0

    const-wide v16, 0x3fe2e147ae147ae1L    # 0.59

    const-wide v18, 0x3fe6147ae147ae14L    # 0.69

    sub-double v20, v10, v14

    .line 123
    invoke-static/range {v16 .. v21}, Lcom/google/material/monet/colorscience/CAM16Color;->access$000(DDD)D

    move-result-wide v6

    goto :goto_0

    :cond_0
    const-wide v6, 0x3fe0cccccccccccdL    # 0.525

    const-wide v8, 0x3fe2e147ae147ae1L    # 0.59

    move-wide/from16 v10, p6

    .line 124
    invoke-static/range {v6 .. v11}, Lcom/google/material/monet/colorscience/CAM16Color;->access$000(DDD)D

    move-result-wide v6

    :goto_0
    iput-wide v6, v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mC:D

    const-wide v8, 0x3fe2e147ae147ae1L    # 0.59

    cmpl-double v10, v6, v8

    const-wide v16, 0x3fb999999999999aL    # 0.1

    if-ltz v10, :cond_1

    const-wide v18, 0x3feccccccccccccdL    # 0.9

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    div-double v22, v6, v16

    .line 125
    invoke-static/range {v18 .. v23}, Lcom/google/material/monet/colorscience/CAM16Color;->access$000(DDD)D

    move-result-wide v6

    goto :goto_1

    :cond_1
    const-wide v18, 0x3fe999999999999aL    # 0.8

    const-wide v20, 0x3feccccccccccccdL    # 0.9

    const-wide v8, 0x3fe0cccccccccccdL    # 0.525

    sub-double/2addr v6, v8

    const-wide v8, 0x3fb0a3d70a3d70a4L    # 0.065

    div-double v22, v6, v8

    .line 126
    invoke-static/range {v18 .. v23}, Lcom/google/material/monet/colorscience/CAM16Color;->access$000(DDD)D

    move-result-wide v6

    :goto_1
    iput-wide v6, v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mSurroundFactor:D

    .line 127
    iput-wide v6, v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mNC:D

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    mul-double v10, v2, v8

    add-double/2addr v10, v14

    div-double v10, v14, v10

    .line 128
    iput-wide v10, v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mK:D

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    .line 129
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double v10, v14, v8

    mul-double/2addr v8, v2

    mul-double v16, v16, v10

    mul-double v16, v16, v10

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    mul-double/2addr v10, v2

    const-wide v13, 0x3fd5555555555555L    # 0.3333333333333333

    .line 131
    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double v16, v16, v10

    add-double v8, v8, v16

    iput-wide v8, v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mFL:D

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    .line 133
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    iput-wide v10, v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mFLRoot:D

    const/4 v10, 0x1

    .line 134
    aget-wide v13, v1, v10

    div-double/2addr v4, v13

    iput-wide v4, v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mBackgroundYToWhitepointY:D

    const-wide v13, 0x3ff7ae147ae147aeL    # 1.48

    .line 135
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    add-double/2addr v13, v15

    iput-wide v13, v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mZ:D

    const-wide v13, 0x3fe7333333333333L    # 0.725

    const-wide/16 v15, 0x0

    cmpl-double v11, v4, v15

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    const-wide v10, -0x4036666666666666L    # -0.2

    .line 137
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    :goto_2
    mul-double v4, v15, v13

    iput-wide v4, v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mNbb:D

    .line 138
    iput-wide v4, v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mNcb:D

    if-eqz v12, :cond_3

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    :cond_3
    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide v14, 0x3fd1c71c71c71c72L    # 0.2777777777777778

    neg-double v2, v2

    const-wide/high16 v16, 0x4045000000000000L    # 42.0

    sub-double v2, v2, v16

    const-wide/high16 v16, 0x4057000000000000L    # 92.0

    div-double v2, v2, v16

    .line 143
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v2, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v2, v14, v2

    mul-double v14, v6, v2

    .line 142
    invoke-static/range {v10 .. v15}, Lcom/google/material/monet/MathUtils;->clamp(DDD)D

    move-result-wide v14

    .line 145
    :goto_3
    invoke-static {}, Lcom/google/material/monet/colorscience/CAM16Color;->access$100()[[D

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/material/monet/MathUtils;->matrixMultiply([D[[D)[D

    move-result-object v2

    const/4 v3, 0x3

    new-array v6, v3, [D

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x1

    .line 146
    aget-wide v10, v1, v3

    const/4 v7, 0x0

    aget-wide v12, v2, v7

    div-double v23, v10, v12

    move-wide/from16 v25, v14

    .line 147
    invoke-static/range {v21 .. v26}, Lcom/google/material/monet/colorscience/CAM16Color;->access$000(DDD)D

    move-result-wide v10

    aput-wide v10, v6, v7

    aget-wide v10, v1, v3

    aget-wide v12, v2, v3

    div-double v23, v10, v12

    .line 148
    invoke-static/range {v21 .. v26}, Lcom/google/material/monet/colorscience/CAM16Color;->access$000(DDD)D

    move-result-wide v10

    aput-wide v10, v6, v3

    aget-wide v10, v1, v3

    const/4 v1, 0x2

    aget-wide v12, v2, v1

    div-double v23, v10, v12

    .line 149
    invoke-static/range {v21 .. v26}, Lcom/google/material/monet/colorscience/CAM16Color;->access$000(DDD)D

    move-result-wide v10

    aput-wide v10, v6, v1

    iput-object v6, v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mDrgb:[D

    const/4 v3, 0x3

    new-array v10, v3, [D

    .line 151
    aget-wide v11, v6, v7

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    div-double v11, v13, v11

    aput-wide v11, v10, v7

    const/4 v11, 0x1

    aget-wide v15, v6, v11

    div-double v15, v13, v15

    aput-wide v15, v10, v11

    aget-wide v15, v6, v1

    div-double v14, v13, v15

    aput-wide v14, v10, v1

    iput-object v10, v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mDrgbInverse:[D

    new-array v10, v3, [D

    .line 154
    aget-wide v12, v2, v7

    aget-wide v14, v6, v7

    mul-double/2addr v12, v14

    aput-wide v12, v10, v7

    aget-wide v12, v2, v11

    aget-wide v14, v6, v11

    mul-double/2addr v12, v14

    aput-wide v12, v10, v11

    aget-wide v2, v2, v1

    aget-wide v12, v6, v1

    mul-double/2addr v2, v12

    aput-wide v2, v10, v1

    const/4 v2, 0x3

    new-array v2, v2, [D

    .line 155
    aget-wide v12, v10, v7

    .line 156
    invoke-static {v12, v13, v8, v9}, Lcom/google/material/monet/colorscience/CAM16Color;->access$200(DD)D

    move-result-wide v12

    aput-wide v12, v2, v7

    aget-wide v12, v10, v11

    invoke-static {v12, v13, v8, v9}, Lcom/google/material/monet/colorscience/CAM16Color;->access$200(DD)D

    move-result-wide v12

    aput-wide v12, v2, v11

    aget-wide v12, v10, v1

    invoke-static {v12, v13, v8, v9}, Lcom/google/material/monet/colorscience/CAM16Color;->access$200(DD)D

    move-result-wide v8

    aput-wide v8, v2, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 159
    aget-wide v6, v2, v7

    mul-double/2addr v6, v8

    aget-wide v8, v2, v11

    add-double/2addr v6, v8

    const-wide v8, 0x3fa999999999999aL    # 0.05

    aget-wide v1, v2, v1

    mul-double/2addr v1, v8

    add-double/2addr v6, v1

    mul-double/2addr v4, v6

    iput-wide v4, v0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mAw:D

    return-void

    .line 115
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Whitepoint needs 3 coordinates in XYZ space"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Whitepoint is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1000(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mNC:D

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mNcb:D

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mBackgroundYToWhitepointY:D

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)[D
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mDrgbInverse:[D

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)[D
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mDrgb:[D

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mFL:D

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mNbb:D

    return-wide v0
.end method

.method static synthetic access$600(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mAw:D

    return-wide v0
.end method

.method static synthetic access$700(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mC:D

    return-wide v0
.end method

.method static synthetic access$800(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mZ:D

    return-wide v0
.end method

.method static synthetic access$900(Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;)D
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/google/material/monet/colorscience/CAM16Color$ViewingConditions;->mFLRoot:D

    return-wide v0
.end method
