.class public Lcom/android/wm/shell/common/DisplayLayout;
.super Ljava/lang/Object;
.source "DisplayLayout.java"


# instance fields
.field private mCutout:Landroid/view/DisplayCutout;

.field private mDensityDpi:I

.field private mHasNavigationBar:Z

.field private mHasStatusBar:Z

.field private mHeight:I

.field private mNavBarFrameHeight:I

.field private final mNonDecorInsets:Landroid/graphics/Rect;

.field private mRotation:I

.field private final mStableInsets:Landroid/graphics/Rect;

.field private mUiMode:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    .line 84
    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 2

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    .line 84
    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 132
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 133
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 134
    invoke-virtual {p2, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {v1, p1, v0}, Lcom/android/wm/shell/common/DisplayLayout;->hasNavigationBar(Landroid/view/DisplayInfo;Landroid/content/Context;I)Z

    move-result p1

    .line 136
    invoke-static {v0}, Lcom/android/wm/shell/common/DisplayLayout;->hasStatusBar(I)Z

    move-result v0

    .line 135
    invoke-direct {p0, v1, p2, p1, v0}, Lcom/android/wm/shell/common/DisplayLayout;->init(Landroid/view/DisplayInfo;Landroid/content/res/Resources;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    .line 84
    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    return-void
.end method

.method public static calculateDisplayCutoutForRotation(Landroid/view/DisplayCutout;III)Landroid/view/DisplayCutout;
    .locals 12

    if-eqz p0, :cond_8

    .line 352
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p0, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p1, :cond_1

    .line 356
    invoke-static {p0, p2, p3}, Lcom/android/wm/shell/common/DisplayLayout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0

    .line 358
    :cond_1
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/RotationUtils;->rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 360
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v3

    .line 361
    array-length v4, v3

    new-array v4, v4, [Landroid/graphics/Rect;

    .line 362
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 363
    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_5

    .line 364
    new-instance v6, Landroid/graphics/Rect;

    aget-object v7, v3, v2

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 365
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 366
    invoke-static {v6, v5, p1}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 368
    :cond_4
    invoke-static {v2, p1}, Lcom/android/wm/shell/common/DisplayLayout;->getBoundIndexFromRotation(II)I

    move-result v7

    aput-object v6, v4, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 370
    :cond_5
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getCutoutPathParserInfo()Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object p0

    .line 371
    new-instance v2, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 372
    invoke-virtual {p0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDensity()F

    move-result v8

    .line 373
    invoke-virtual {p0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getCutoutSpec()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getScale()F

    move-result v11

    move-object v5, v2

    move v10, p1

    invoke-direct/range {v5 .. v11}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIFLjava/lang/String;IF)V

    .line 375
    invoke-static {v4, v0, v2}, Landroid/view/DisplayCutout;->constructDisplayCutout([Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$CutoutPathParserInfo;)Landroid/view/DisplayCutout;

    move-result-object p0

    if-eqz v1, :cond_6

    move p1, p3

    goto :goto_2

    :cond_6
    move p1, p2

    :goto_2
    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    move p2, p3

    .line 374
    :goto_3
    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/common/DisplayLayout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method

.method static computeNonDecorInsets(Landroid/content/res/Resources;IIILandroid/view/DisplayCutout;ILandroid/graphics/Rect;Z)V
    .locals 0

    .line 296
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz p7, :cond_3

    .line 300
    invoke-static {p0, p2, p3, p1}, Lcom/android/wm/shell/common/DisplayLayout;->navigationBarPosition(Landroid/content/res/Resources;III)I

    move-result p1

    const/4 p7, 0x1

    if-le p2, p3, :cond_0

    move p2, p7

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 302
    :goto_0
    invoke-static {p0, p1, p2, p5}, Lcom/android/wm/shell/common/DisplayLayout;->getNavigationBarSize(Landroid/content/res/Resources;IZI)I

    move-result p0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 304
    iput p0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 306
    iput p0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    if-ne p1, p7, :cond_3

    .line 308
    iput p0, p6, Landroid/graphics/Rect;->left:I

    :cond_3
    :goto_1
    if-eqz p4, :cond_4

    .line 313
    iget p0, p6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->left:I

    .line 314
    iget p0, p6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->top:I

    .line 315
    iget p0, p6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->right:I

    .line 316
    iget p0, p6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->bottom:I

    :cond_4
    return-void
.end method

.method private static computeSafeInsets(Landroid/util/Size;Landroid/view/DisplayCutout;)Landroid/graphics/Rect;
    .locals 5

    .line 400
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 405
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->left:I

    .line 406
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Lcom/android/wm/shell/common/DisplayLayout;->findCutoutInsetForSide(Landroid/util/Size;Landroid/graphics/Rect;I)I

    move-result v1

    .line 405
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 407
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    .line 408
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v2

    const/16 v3, 0x30

    invoke-static {p0, v2, v3}, Lcom/android/wm/shell/common/DisplayLayout;->findCutoutInsetForSide(Landroid/util/Size;Landroid/graphics/Rect;I)I

    move-result v2

    .line 407
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 409
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->right:I

    .line 410
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {p0, v3, v4}, Lcom/android/wm/shell/common/DisplayLayout;->findCutoutInsetForSide(Landroid/util/Size;Landroid/graphics/Rect;I)I

    move-result v3

    .line 409
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 411
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    .line 412
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object p1

    const/16 v4, 0x50

    invoke-static {p0, p1, v4}, Lcom/android/wm/shell/common/DisplayLayout;->findCutoutInsetForSide(Landroid/util/Size;Landroid/graphics/Rect;I)I

    move-result p0

    .line 411
    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 415
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 401
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not implemented: display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " cutout="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static computeSafeInsets(Landroid/view/DisplayCutout;II)Landroid/view/DisplayCutout;
    .locals 1

    .line 389
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 393
    :cond_0
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    .line 394
    invoke-static {v0, p0}, Lcom/android/wm/shell/common/DisplayLayout;->computeSafeInsets(Landroid/util/Size;Landroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object p1

    .line 395
    invoke-virtual {p0, p1}, Landroid/view/DisplayCutout;->replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method private static convertNonDecorInsetsToStableInsets(Landroid/content/res/Resources;Landroid/graphics/Rect;IIZ)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-le p2, p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 279
    :goto_0
    invoke-static {p2, p0}, Lcom/android/wm/shell/common/DisplayLayout;->getStatusBarHeight(ZLandroid/content/res/Resources;)I

    move-result p0

    .line 280
    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method private static findCutoutInsetForSide(Landroid/util/Size;Landroid/graphics/Rect;I)I
    .locals 2

    .line 419
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    const/4 v0, 0x5

    if-eq p2, v0, :cond_3

    const/16 v0, 0x30

    if-eq p2, v0, :cond_2

    const/16 v0, 0x50

    if-ne p2, v0, :cond_1

    .line 428
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 434
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown gravity: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 426
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 432
    :cond_3
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 430
    :cond_4
    iget p0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static getBoundIndexFromRotation(II)I
    .locals 0

    sub-int/2addr p0, p1

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x4

    :cond_0
    return p0
.end method

.method public static getNavigationBarFrameHeight(Landroid/content/res/Resources;Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x10501c4

    goto :goto_0

    :cond_0
    const p1, 0x10501c3

    .line 506
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getNavigationBarSize(Landroid/content/res/Resources;IZI)I
    .locals 1

    and-int/lit8 p3, p3, 0xf

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v0, 0x4

    if-eqz p3, :cond_3

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    const p1, 0x10501ca

    goto :goto_1

    :cond_1
    const p1, 0x10501c8

    .line 486
    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_2
    const p1, 0x10501cd

    .line 490
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_3
    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_4

    const p1, 0x10501c9

    goto :goto_2

    :cond_4
    const p1, 0x10501c7

    .line 495
    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_5
    const p1, 0x10501cc

    .line 499
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method static getStatusBarHeight(ZLandroid/content/res/Resources;)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x1050271

    .line 343
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x1050272

    .line 345
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method static hasNavigationBar(Landroid/view/DisplayInfo;Landroid/content/Context;I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_2

    const-string p0, "qemu.hw.mainkeys"

    .line 441
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "1"

    .line 442
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return v1

    :cond_0
    const-string p2, "0"

    .line 444
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    .line 447
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1110128

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    .line 449
    :cond_2
    iget p2, p0, Landroid/view/DisplayInfo;->type:I

    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    iget p2, p0, Landroid/view/DisplayInfo;->ownerUid:I

    const/16 v2, 0x3e8

    if-eq p2, v2, :cond_3

    move p2, v0

    goto :goto_0

    :cond_3
    move p2, v1

    .line 451
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "force_desktop_mode_on_external_displays"

    .line 452
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_1

    :cond_4
    move p1, v1

    .line 455
    :goto_1
    iget p0, p0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 p0, p0, 0x40

    if-nez p0, :cond_6

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :cond_6
    :goto_2
    return v0
.end method

.method static hasStatusBar(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private init(Landroid/view/DisplayInfo;Landroid/content/res/Resources;ZZ)V
    .locals 1

    .line 160
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    .line 161
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 162
    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 163
    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 164
    iget-object v0, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 165
    iget p1, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 166
    iput-boolean p3, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 167
    iput-boolean p4, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    .line 168
    invoke-direct {p0, p2}, Lcom/android/wm/shell/common/DisplayLayout;->recalcInsets(Landroid/content/res/Resources;)V

    return-void
.end method

.method public static navigationBarPosition(Landroid/content/res/Resources;III)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, p2, :cond_0

    const v1, 0x1110106

    .line 468
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    if-le p1, p2, :cond_2

    if-ne p3, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x4

    return p0
.end method

.method private recalcInsets(Landroid/content/res/Resources;)V
    .locals 8

    .line 172
    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    iget v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v3, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget-object v4, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    iget v5, p0, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    iget-object v6, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    iget-boolean v7, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/wm/shell/common/DisplayLayout;->computeNonDecorInsets(Landroid/content/res/Resources;IIILandroid/view/DisplayCutout;ILandroid/graphics/Rect;Z)V

    .line 174
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 175
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v3, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    invoke-static {p1, v1, v2, v3, v0}, Lcom/android/wm/shell/common/DisplayLayout;->convertNonDecorInsetsToStableInsets(Landroid/content/res/Resources;Landroid/graphics/Rect;IIZ)V

    .line 178
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/android/wm/shell/common/DisplayLayout;->getNavigationBarFrameHeight(Landroid/content/res/Resources;Z)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    return-void
.end method


# virtual methods
.method public density()F
    .locals 1

    .line 239
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    int-to-float p0, p0

    const v0, 0x3bcccccd    # 0.00625f

    mul-float/2addr p0, v0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 89
    :cond_0
    instance-of v1, p1, Lcom/android/wm/shell/common/DisplayLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 90
    :cond_1
    check-cast p1, Lcom/android/wm/shell/common/DisplayLayout;

    .line 91
    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    iget-object v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 94
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 97
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 98
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    iget-boolean v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    iget-boolean v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    iget p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getNavigationBarPosition(Landroid/content/res/Resources;)I
    .locals 2

    .line 268
    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    invoke-static {p1, v0, v1, p0}, Lcom/android/wm/shell/common/DisplayLayout;->navigationBarPosition(Landroid/content/res/Resources;III)I

    move-result p0

    return p0
.end method

.method public getOrientation()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getStableBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 259
    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 260
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    return-void
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    .line 106
    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 107
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 108
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xa

    aput-object p0, v0, v1

    .line 106
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public height()I
    .locals 0

    .line 224
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    return p0
.end method

.method public isLandscape()Z
    .locals 1

    .line 244
    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public navBarFrameHeight()I
    .locals 0

    .line 249
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    return p0
.end method

.method public nonDecorInsets()Landroid/graphics/Rect;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public rotateTo(Landroid/content/res/Resources;I)V
    .locals 4

    .line 187
    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    sub-int v0, p2, v0

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    .line 188
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 190
    :goto_0
    iget v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 191
    iget v3, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 193
    iput p2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    if-eqz v1, :cond_1

    .line 195
    iput v3, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 196
    iput v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 199
    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 200
    iget-object p2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    invoke-static {p2, v0, v2, v3}, Lcom/android/wm/shell/common/DisplayLayout;->calculateDisplayCutoutForRotation(Landroid/view/DisplayCutout;III)Landroid/view/DisplayCutout;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 204
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DisplayLayout;->recalcInsets(Landroid/content/res/Resources;)V

    return-void
.end method

.method public rotation()I
    .locals 0

    .line 229
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    return p0
.end method

.method public set(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 2

    .line 145
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    .line 146
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 147
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 148
    iget-object v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 149
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 150
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 151
    iget-boolean v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 152
    iget-boolean v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    .line 153
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 154
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 155
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public stableInsets()Landroid/graphics/Rect;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public width()I
    .locals 0

    .line 219
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    return p0
.end method
