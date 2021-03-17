.class public Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;
.super Ljava/lang/Object;
.source "PipPinchResizingAlgorithm.java"


# static fields
.field private static final TMP_RECT:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->TMP_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public static pinchResize(FFFFFFFFLandroid/graphics/Rect;IILandroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 16

    move-object/from16 v0, p8

    move/from16 v1, p9

    move/from16 v2, p10

    move-object/from16 v3, p11

    .line 47
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 48
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 49
    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 50
    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 51
    iget v8, v0, Landroid/graphics/Rect;->right:I

    .line 52
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v4

    int-to-float v11, v5

    div-float/2addr v10, v11

    sub-float v11, p0, p2

    .line 54
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float v12, p4, p6

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    sub-float v12, p1, p3

    .line 55
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    sub-float v13, p5, p7

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    sub-float v13, p0, p4

    add-float v13, v13, p2

    sub-float v13, v13, p6

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    float-to-int v13, v13

    sub-float v15, p1, p5

    add-float v15, v15, p3

    sub-float v15, v15, p7

    div-float/2addr v15, v14

    float-to-int v14, v15

    add-int/2addr v4, v11

    .line 59
    iget v11, v3, Landroid/graphics/Point;->x:I

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v5, v12

    .line 60
    iget v11, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_1

    .line 70
    iget v11, v3, Landroid/graphics/Point;->x:I

    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-float v12, v11

    div-float/2addr v12, v10

    .line 71
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    if-ge v12, v2, :cond_0

    .line 75
    iget v11, v3, Landroid/graphics/Point;->x:I

    int-to-float v12, v2

    mul-float/2addr v12, v10

    .line 76
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 75
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v12, v2

    .line 79
    :cond_0
    iget v15, v3, Landroid/graphics/Point;->y:I

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    int-to-float v0, v15

    mul-float/2addr v0, v10

    .line 80
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 84
    iget v0, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v1

    div-float/2addr v3, v10

    .line 85
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 84
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_1

    .line 89
    :cond_1
    iget v0, v3, Landroid/graphics/Point;->x:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v11, v0

    div-float/2addr v11, v10

    .line 90
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    if-ge v11, v2, :cond_2

    .line 94
    iget v0, v3, Landroid/graphics/Point;->x:I

    int-to-float v11, v2

    mul-float/2addr v11, v10

    .line 95
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 94
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v11, v0

    move v12, v2

    goto :goto_0

    :cond_2
    move v12, v11

    move v11, v0

    .line 98
    :goto_0
    iget v0, v3, Landroid/graphics/Point;->y:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    int-to-float v0, v15

    mul-float/2addr v0, v10

    .line 99
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 103
    iget v0, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v1

    div-float/2addr v3, v10

    .line 104
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 103
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    :goto_1
    move v0, v1

    :cond_3
    sub-int/2addr v8, v6

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v4, v8, :cond_5

    sub-int/2addr v9, v7

    if-le v5, v9, :cond_4

    goto :goto_2

    :cond_4
    move v3, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v2

    :goto_3
    mul-int v4, v11, v12

    mul-int v5, v0, v15

    if-le v4, v5, :cond_6

    move v1, v2

    :cond_6
    if-ne v3, v1, :cond_7

    move v0, v11

    goto :goto_4

    :cond_7
    move v12, v15

    .line 119
    :goto_4
    sget-object v1, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->TMP_RECT:Landroid/graphics/Rect;

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    .line 120
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v3, v12

    .line 121
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/2addr v4, v0

    .line 122
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    add-int/2addr v0, v12

    .line 119
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 123
    invoke-virtual {v1, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    return-object v1
.end method
