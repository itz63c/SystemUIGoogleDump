.class public Lcom/google/material/monet/colorscience/Color;
.super Ljava/lang/Object;
.source "Color.java"


# static fields
.field public static srgbToXyz:[[D

.field public static xyzToSrgb:[[D


# instance fields
.field private final mArgb:I

.field private final mHex:Ljava/lang/String;

.field private final mLstar:D

.field private final mRgb:[D

.field private final mXyz:[D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [[D

    new-array v2, v0, [D

    .line 131
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [D

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/google/material/monet/colorscience/Color;->srgbToXyz:[[D

    new-array v1, v0, [[D

    new-array v2, v0, [D

    .line 135
    fill-array-data v2, :array_3

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_4

    aput-object v2, v1, v4

    new-array v0, v0, [D

    fill-array-data v0, :array_5

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/material/monet/colorscience/Color;->xyzToSrgb:[[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3fda64c2f837b4a2L    # 0.4124
        0x3fd6e2eb1c432ca5L    # 0.3576
        0x3fc71a9fbe76c8b4L    # 0.1805
    .end array-data

    :array_1
    .array-data 8
        0x3fcb367a0f9096bcL    # 0.2126
        0x3fe6e2eb1c432ca5L    # 0.7152
        0x3fb27bb2fec56d5dL    # 0.0722
    .end array-data

    :array_2
    .array-data 8
        0x3f93c36113404ea5L    # 0.0193
        0x3fbe83e425aee632L    # 0.1192
        0x3fee6a7ef9db22d1L    # 0.9505
    .end array-data

    :array_3
    .array-data 8
        0x4009ecbfb15b573fL    # 3.2406
        -0x400767a0f9096bbaL    # -1.5372
        -0x402016f0068db8bbL    # -0.4986
    .end array-data

    :array_4
    .array-data 8
        -0x4010fec56d5cfaadL    # -0.9689
        0x3ffe0346dc5d6388L    # 1.8758
        0x3fa53f7ced916873L    # 0.0415
    .end array-data

    :array_5
    .array-data 8
        0x3fac84b5dcc63f14L    # 0.0557
        -0x4035e353f7ced917L    # -0.204
        0x3ff0e978d4fdf3b6L    # 1.057
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/material/monet/colorscience/Color;->mArgb:I

    .line 38
    invoke-virtual {p0}, Lcom/google/material/monet/colorscience/Color;->getArgb()I

    move-result p1

    invoke-static {p1}, Lcom/google/material/monet/colorscience/Color;->toRgb(I)[D

    move-result-object p1

    iput-object p1, p0, Lcom/google/material/monet/colorscience/Color;->mRgb:[D

    .line 39
    invoke-virtual {p0}, Lcom/google/material/monet/colorscience/Color;->getArgb()I

    move-result p1

    invoke-static {p1}, Lcom/google/material/monet/colorscience/Color;->toXyz(I)[D

    move-result-object p1

    iput-object p1, p0, Lcom/google/material/monet/colorscience/Color;->mXyz:[D

    .line 40
    invoke-virtual {p0}, Lcom/google/material/monet/colorscience/Color;->getArgb()I

    move-result v0

    invoke-static {v0}, Lcom/google/material/monet/colorscience/Color;->toHex(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/material/monet/colorscience/Color;->mHex:Ljava/lang/String;

    const/4 v0, 0x1

    .line 41
    aget-wide v0, p1, v0

    invoke-static {v0, v1}, Lcom/google/material/monet/colorscience/Contrast;->yToLstar(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/material/monet/colorscience/Color;->mLstar:D

    return-void
.end method

.method static delinearized(D)D
    .locals 4

    const-wide v0, 0x3f69a5c37387b719L    # 0.0031308

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    mul-double/2addr p0, v0

    return-wide p0

    :cond_0
    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v2, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    .line 151
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr p0, v0

    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method public static fromXyz([D)Lcom/google/material/monet/colorscience/Color;
    .locals 1

    .line 107
    new-instance v0, Lcom/google/material/monet/colorscience/Color;

    invoke-static {p0}, Lcom/google/material/monet/colorscience/Color;->intFromXyz([D)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/google/material/monet/colorscience/Color;-><init>(I)V

    return-object v0
.end method

.method private static getBlue(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static getGreen(I)I
    .locals 1

    const v0, 0xff00

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private static getRed(I)I
    .locals 1

    const/high16 v0, 0xff0000

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method static intFromRgb([I)I
    .locals 2

    const/4 v0, 0x0

    .line 128
    aget v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    aget v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method static intFromXyz([D)I
    .locals 13

    const/4 v0, 0x0

    .line 111
    aget-wide v1, p0, v0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    const/4 v5, 0x1

    .line 112
    aget-wide v6, p0, v5

    div-double/2addr v6, v3

    const/4 v8, 0x2

    .line 113
    aget-wide v9, p0, v8

    div-double/2addr v9, v3

    const/4 p0, 0x3

    new-array v3, p0, [D

    aput-wide v1, v3, v0

    aput-wide v6, v3, v5

    aput-wide v9, v3, v8

    .line 115
    sget-object v1, Lcom/google/material/monet/colorscience/Color;->xyzToSrgb:[[D

    invoke-static {v3, v1}, Lcom/google/material/monet/MathUtils;->matrixMultiply([D[[D)[D

    move-result-object v1

    .line 116
    aget-wide v2, v1, v0

    invoke-static {v2, v3}, Lcom/google/material/monet/colorscience/Color;->delinearized(D)D

    move-result-wide v2

    .line 117
    aget-wide v6, v1, v5

    invoke-static {v6, v7}, Lcom/google/material/monet/colorscience/Color;->delinearized(D)D

    move-result-wide v6

    .line 118
    aget-wide v9, v1, v8

    invoke-static {v9, v10}, Lcom/google/material/monet/colorscience/Color;->delinearized(D)D

    move-result-wide v9

    const-wide v11, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v11

    .line 120
    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    mul-double/2addr v6, v11

    .line 121
    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v2, v6

    mul-double/2addr v9, v11

    .line 122
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    new-array p0, p0, [I

    aput v1, p0, v0

    aput v2, p0, v5

    aput v3, p0, v8

    .line 124
    invoke-static {p0}, Lcom/google/material/monet/colorscience/Color;->intFromRgb([I)I

    move-result p0

    return p0
.end method

.method static linearized(D)D
    .locals 2

    const-wide v0, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr p0, v0

    return-wide p0

    :cond_0
    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr p0, v0

    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr p0, v0

    const-wide v0, 0x4003333333333333L    # 2.4

    .line 143
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static toHex(I)Ljava/lang/String;
    .locals 2

    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 82
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static toRgb(I)[D
    .locals 5

    .line 62
    invoke-static {p0}, Lcom/google/material/monet/colorscience/Color;->getRed(I)I

    move-result v0

    .line 63
    invoke-static {p0}, Lcom/google/material/monet/colorscience/Color;->getGreen(I)I

    move-result v1

    .line 64
    invoke-static {p0}, Lcom/google/material/monet/colorscience/Color;->getBlue(I)I

    move-result p0

    const/4 v2, 0x3

    new-array v2, v2, [D

    int-to-double v3, v0

    const/4 v0, 0x0

    aput-wide v3, v2, v0

    int-to-double v0, v1

    const/4 v3, 0x1

    aput-wide v0, v2, v3

    int-to-double v0, p0

    const/4 p0, 0x2

    aput-wide v0, v2, p0

    return-object v2
.end method

.method static toXyz(I)[D
    .locals 13

    .line 90
    invoke-static {p0}, Lcom/google/material/monet/colorscience/Color;->toRgb(I)[D

    move-result-object p0

    const/4 v0, 0x0

    .line 91
    aget-wide v1, p0, v0

    const/4 v3, 0x1

    .line 92
    aget-wide v4, p0, v3

    const/4 v6, 0x2

    .line 93
    aget-wide v7, p0, v6

    const-wide v9, 0x406fe00000000000L    # 255.0

    div-double/2addr v1, v9

    .line 95
    invoke-static {v1, v2}, Lcom/google/material/monet/colorscience/Color;->linearized(D)D

    move-result-wide v1

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v11

    div-double/2addr v4, v9

    .line 96
    invoke-static {v4, v5}, Lcom/google/material/monet/colorscience/Color;->linearized(D)D

    move-result-wide v4

    mul-double/2addr v4, v11

    div-double/2addr v7, v9

    .line 97
    invoke-static {v7, v8}, Lcom/google/material/monet/colorscience/Color;->linearized(D)D

    move-result-wide v7

    mul-double/2addr v7, v11

    const/4 p0, 0x3

    new-array p0, p0, [D

    aput-wide v1, p0, v0

    aput-wide v4, p0, v3

    aput-wide v7, p0, v6

    .line 99
    sget-object v0, Lcom/google/material/monet/colorscience/Color;->srgbToXyz:[[D

    invoke-static {p0, v0}, Lcom/google/material/monet/MathUtils;->matrixMultiply([D[[D)[D

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 47
    const-class v2, Lcom/google/material/monet/colorscience/Color;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 48
    :cond_1
    check-cast p1, Lcom/google/material/monet/colorscience/Color;

    .line 49
    invoke-virtual {p0}, Lcom/google/material/monet/colorscience/Color;->getArgb()I

    move-result p0

    invoke-virtual {p1}, Lcom/google/material/monet/colorscience/Color;->getArgb()I

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getArgb()I
    .locals 0

    .line 164
    iget p0, p0, Lcom/google/material/monet/colorscience/Color;->mArgb:I

    return p0
.end method

.method public getHex()Ljava/lang/String;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/google/material/monet/colorscience/Color;->mHex:Ljava/lang/String;

    return-object p0
.end method

.method public getLstar()D
    .locals 2

    .line 172
    iget-wide v0, p0, Lcom/google/material/monet/colorscience/Color;->mLstar:D

    return-wide v0
.end method

.method public getRgb()[D
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/google/material/monet/colorscience/Color;->mRgb:[D

    return-object p0
.end method

.method public getXyz()[D
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/google/material/monet/colorscience/Color;->mXyz:[D

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    invoke-virtual {p0}, Lcom/google/material/monet/colorscience/Color;->getArgb()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Color{hex=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/material/monet/colorscience/Color;->getHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", argb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/material/monet/colorscience/Color;->getArgb()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", xyz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0}, Lcom/google/material/monet/colorscience/Color;->getXyz()[D

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rgb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/material/monet/colorscience/Color;->getRgb()[D

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
