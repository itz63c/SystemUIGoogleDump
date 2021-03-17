.class public Lcom/google/material/monet/ColorShades;
.super Ljava/lang/Object;
.source "ColorShades.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ColorShades"

    const/4 v1, 0x3

    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/material/monet/ColorShades;->DEBUG:Z

    return-void
.end method

.method private static getShade(DDD)Lcom/google/material/monet/colorscience/Color;
    .locals 6

    .line 69
    invoke-static {p0, p1}, Lcom/google/material/monet/colorscience/Contrast;->lstarToY(D)D

    move-result-wide v0

    move-wide v2, p4

    move-wide v4, p2

    .line 70
    invoke-static/range {v0 .. v5}, Lcom/google/material/monet/colorscience/CAM16Color;->gamutMap(DDD)Lcom/google/material/monet/colorscience/Color;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/google/material/monet/colorscience/CAM16Color;

    invoke-direct {v1, v0}, Lcom/google/material/monet/colorscience/CAM16Color;-><init>(Lcom/google/material/monet/colorscience/Color;)V

    .line 72
    sget-boolean v2, Lcom/google/material/monet/ColorShades;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requested LHC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int p0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int p1, p4

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ColorShades"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "got LHC "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/material/monet/colorscience/Color;->getLstar()D

    move-result-wide p3

    double-to-int p3, p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, v1, Lcom/google/material/monet/colorscience/CAM16Color;->h:D

    double-to-int p3, p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, v1, Lcom/google/material/monet/colorscience/CAM16Color;->C:D

    double-to-int p0, p3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static shadesOf(DD)[I
    .locals 10

    const/16 v0, 0xb

    new-array v1, v0, [I

    const-wide v2, 0x4057c00000000000L    # 95.0

    move-wide v4, p0

    move-wide v6, p2

    .line 61
    invoke-static/range {v2 .. v7}, Lcom/google/material/monet/ColorShades;->getShade(DDD)Lcom/google/material/monet/colorscience/Color;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/material/monet/colorscience/Color;->getArgb()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0xa

    rsub-int/lit8 v3, v3, 0x64

    int-to-double v4, v3

    move-wide v6, p0

    move-wide v8, p2

    .line 63
    invoke-static/range {v4 .. v9}, Lcom/google/material/monet/ColorShades;->getShade(DDD)Lcom/google/material/monet/colorscience/Color;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/material/monet/colorscience/Color;->getArgb()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
