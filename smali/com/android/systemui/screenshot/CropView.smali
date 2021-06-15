.class public Lcom/android/systemui/screenshot/CropView;
.super Landroid/view/View;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/CropView$SavedState;,
        Lcom/android/systemui/screenshot/CropView$CropInteractionListener;,
        Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;,
        Lcom/android/systemui/screenshot/CropView$CropBoundary;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mCrop:Landroid/graphics/RectF;

.field private mCropInteractionListener:Lcom/android/systemui/screenshot/CropView$CropInteractionListener;

.field private final mCropTouchMargin:F

.field private mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

.field private final mExploreByTouchHelper:Landroidx/customview/widget/ExploreByTouchHelper;

.field private mExtraBottomPadding:I

.field private mExtraTopPadding:I

.field private final mHandlePaint:Landroid/graphics/Paint;

.field private mImageWidth:I

.field private mMotionRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mMovementStartValue:F

.field private final mShadePaint:Landroid/graphics/Paint;

.field private mStartingX:F

.field private mStartingY:F


# direct methods
.method public static synthetic $r8$lambda$F63u03q5b_gO5ivg1ubWsI0c5cU(Lcom/android/systemui/screenshot/CropView;Lcom/android/systemui/screenshot/CropView$CropBoundary;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/screenshot/CropView;->lambda$animateBoundaryTo$0(Lcom/android/systemui/screenshot/CropView$CropBoundary;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/screenshot/CropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance p3, Landroid/graphics/RectF;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p3, v0, v0, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 73
    sget-object p3, Lcom/android/systemui/screenshot/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    iput-object p3, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p3, Lcom/android/systemui/R$styleable;->CropView:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 93
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/CropView;->mShadePaint:Landroid/graphics/Paint;

    .line 94
    sget p3, Lcom/android/systemui/R$styleable;->CropView_scrimColor:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/CropView;->mHandlePaint:Landroid/graphics/Paint;

    .line 96
    sget p3, Lcom/android/systemui/R$styleable;->CropView_handleColor:I

    const/high16 v0, -0x1000000

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 98
    sget p3, Lcom/android/systemui/R$styleable;->CropView_handleThickness:I

    const/16 v0, 0x14

    .line 99
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    .line 98
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41c00000    # 24.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    .line 104
    new-instance p1, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;-><init>(Lcom/android/systemui/screenshot/CropView;)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/CropView;->mExploreByTouchHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    .line 105
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/CropView;)Landroid/graphics/RectF;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/screenshot/CropView;F)I
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/screenshot/CropView;)F
    .locals 0

    .line 55
    iget p0, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/screenshot/CropView;F)I
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/screenshot/CropView;FLcom/android/systemui/screenshot/CropView$CropBoundary;)F
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/CropView;->pixelDistanceToFraction(FLcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/screenshot/CropView;Lcom/android/systemui/screenshot/CropView$CropBoundary;)F
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Z
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/android/systemui/screenshot/CropView;->isVertical(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Z

    move-result p0

    return p0
.end method

.method private drawHorizontalHandle(Landroid/graphics/Canvas;FZ)V
    .locals 11

    .line 373
    invoke-direct {p0, p2}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    move-result p2

    .line 374
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    move-result v0

    int-to-float v2, v0

    int-to-float p2, p2

    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 375
    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v6, p0, Lcom/android/systemui/screenshot/CropView;->mHandlePaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, p2

    move v5, p2

    .line 374
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 376
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    .line 377
    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-direct {p0, v2}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v3, v1, v0

    sub-float v4, p2, v0

    add-float v5, v1, v0

    add-float v6, p2, v0

    if-eqz p3, :cond_0

    const/high16 p2, 0x43340000    # 180.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move v7, p2

    const/high16 v8, 0x43340000    # 180.0f

    const/4 v9, 0x1

    .line 379
    iget-object v10, p0, Lcom/android/systemui/screenshot/CropView;->mHandlePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawShade(Landroid/graphics/Canvas;FFFF)V
    .locals 6

    .line 367
    invoke-direct {p0, p2}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    move-result p2

    int-to-float v1, p2

    invoke-direct {p0, p3}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    move-result p2

    int-to-float v2, p2

    .line 368
    invoke-direct {p0, p4}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    move-result p2

    int-to-float v3, p2

    .line 369
    invoke-direct {p0, p5}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    move-result p2

    int-to-float v4, p2

    iget-object v5, p0, Lcom/android/systemui/screenshot/CropView;->mShadePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 367
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawVerticalHandle(Landroid/graphics/Canvas;FZ)V
    .locals 11

    .line 384
    invoke-direct {p0, p2}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    move-result p2

    int-to-float p2, p2

    .line 385
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 386
    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/screenshot/CropView;->mHandlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v3, p2

    .line 385
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 387
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    .line 388
    sget-object v1, Lcom/android/systemui/screenshot/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    move-result v1

    sget-object v2, Lcom/android/systemui/screenshot/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 390
    invoke-direct {p0, v2}, Lcom/android/systemui/screenshot/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result v2

    .line 389
    invoke-direct {p0, v2}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-float v3, p2, v0

    int-to-float v1, v1

    sub-float v4, v1, v0

    add-float v5, p2, v0

    add-float v6, v1, v0

    if-eqz p3, :cond_0

    const/high16 p2, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x43870000    # 270.0f

    :goto_0
    move v7, p2

    const/high16 v8, 0x43340000    # 180.0f

    const/4 v9, 0x1

    .line 391
    iget-object v10, p0, Lcom/android/systemui/screenshot/CropView;->mHandlePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private fractionToHorizontalPixels(F)I
    .locals 1

    .line 404
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/screenshot/CropView;->mImageWidth:I

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    float-to-int p0, v0

    return p0
.end method

.method private fractionToVerticalPixels(F)I
    .locals 1

    .line 400
    iget v0, p0, Lcom/android/systemui/screenshot/CropView;->mExtraTopPadding:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/CropView;->getImageHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    float-to-int p0, v0

    return p0
.end method

.method private getAllowedValues(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Landroid/util/Range;
    .locals 4

    .line 316
    sget-object v0, Lcom/android/systemui/screenshot/CropView$1;->$SwitchMap$com$android$systemui$screenshot$CropView$CropBoundary:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 330
    :cond_0
    new-instance p1, Landroid/util/Range;

    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    sget-object v3, Lcom/android/systemui/screenshot/CropView$CropBoundary;->LEFT:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 331
    invoke-direct {p0, v1, v3}, Lcom/android/systemui/screenshot/CropView;->pixelDistanceToFraction(FLcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result p0

    add-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    .line 332
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p1

    .line 326
    :cond_1
    new-instance p1, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    sget-object v3, Lcom/android/systemui/screenshot/CropView$CropBoundary;->RIGHT:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 327
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/screenshot/CropView;->pixelDistanceToFraction(FLcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result p0

    sub-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p1

    .line 322
    :cond_2
    new-instance p1, Landroid/util/Range;

    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    sget-object v3, Lcom/android/systemui/screenshot/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 323
    invoke-direct {p0, v1, v3}, Lcom/android/systemui/screenshot/CropView;->pixelDistanceToFraction(FLcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result p0

    add-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    .line 324
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p1

    .line 318
    :cond_3
    new-instance p1, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    sget-object v3, Lcom/android/systemui/screenshot/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 319
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/screenshot/CropView;->pixelDistanceToFraction(FLcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result p0

    sub-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p1
.end method

.method private getBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;)F
    .locals 1

    .line 246
    sget-object v0, Lcom/android/systemui/screenshot/CropView$1;->$SwitchMap$com$android$systemui$screenshot$CropView$CropBoundary:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 254
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->right:F

    return p0

    .line 252
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->left:F

    return p0

    .line 250
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    return p0

    .line 248
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->top:F

    return p0
.end method

.method private getImageHeight()I
    .locals 2

    .line 408
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/screenshot/CropView;->mExtraTopPadding:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/screenshot/CropView;->mExtraBottomPadding:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private static isVertical(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Z
    .locals 1

    .line 260
    sget-object v0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$animateBoundaryTo$0(Lcom/android/systemui/screenshot/CropView$CropBoundary;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 275
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p4

    invoke-static {p2, p3, p4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p2

    .line 274
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenshot/CropView;->setBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;F)V

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private nearestBoundary(Landroid/view/MotionEvent;IIII)Lcom/android/systemui/screenshot/CropView$CropBoundary;
    .locals 2

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float p2, p2

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 425
    sget-object p0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    return-object p0

    .line 427
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float p3, p3

    sub-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 428
    sget-object p0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    return-object p0

    .line 430
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float p2, v0, p2

    if-gtz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    cmpg-float p2, p2, p3

    if-gez p2, :cond_4

    .line 431
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    int-to-float p3, p4

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget p3, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    cmpg-float p2, p2, p3

    if-gez p2, :cond_3

    .line 432
    sget-object p0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->LEFT:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    return-object p0

    .line 434
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    int-to-float p2, p5

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_4

    .line 435
    sget-object p0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->RIGHT:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    return-object p0

    .line 438
    :cond_4
    sget-object p0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    return-object p0
.end method

.method private pixelDistanceToFraction(FLcom/android/systemui/screenshot/CropView$CropBoundary;)F
    .locals 0

    .line 415
    invoke-static {p2}, Lcom/android/systemui/screenshot/CropView;->isVertical(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/android/systemui/screenshot/CropView;->getImageHeight()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1

    .line 418
    :cond_0
    iget p0, p0, Lcom/android/systemui/screenshot/CropView;->mImageWidth:I

    goto :goto_0
.end method

.method private updateListener(IF)V
    .locals 7

    .line 342
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCropInteractionListener:Lcom/android/systemui/screenshot/CropView$CropInteractionListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    invoke-static {v0}, Lcom/android/systemui/screenshot/CropView;->isVertical(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 343
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result v3

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView;->mCropInteractionListener:Lcom/android/systemui/screenshot/CropView$CropInteractionListener;

    iget-object v2, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 352
    invoke-direct {p0, v3}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    move-result v4

    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget p1, p0, Landroid/graphics/RectF;->left:F

    iget p0, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr p1, p0

    div-float v5, p1, v0

    move v6, p2

    .line 351
    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/screenshot/CropView$CropInteractionListener;->onCropDragMoved(Lcom/android/systemui/screenshot/CropView$CropBoundary;FIFF)V

    goto :goto_0

    .line 356
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mCropInteractionListener:Lcom/android/systemui/screenshot/CropView$CropInteractionListener;

    invoke-interface {p0}, Lcom/android/systemui/screenshot/CropView$CropInteractionListener;->onCropDragComplete()V

    goto :goto_0

    .line 346
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView;->mCropInteractionListener:Lcom/android/systemui/screenshot/CropView$CropInteractionListener;

    iget-object v2, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 347
    invoke-direct {p0, v3}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    move-result v4

    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget p1, p0, Landroid/graphics/RectF;->left:F

    iget p0, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr p1, p0

    div-float v5, p1, v0

    move v6, p2

    .line 346
    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/screenshot/CropView$CropInteractionListener;->onCropDragStarted(Lcom/android/systemui/screenshot/CropView$CropBoundary;FIFF)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public animateBoundaryTo(Lcom/android/systemui/screenshot/CropView$CropBoundary;F)V
    .locals 3

    .line 267
    sget-object v0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    if-ne p1, v0, :cond_0

    const-string p0, "CropView"

    const-string p1, "No boundary selected for animation"

    .line 268
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 271
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result v0

    .line 272
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 273
    new-instance v2, Lcom/android/systemui/screenshot/CropView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/systemui/screenshot/CropView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/CropView;Lcom/android/systemui/screenshot/CropView$CropBoundary;FF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 278
    fill-array-data p0, :array_0

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 p0, 0x2ee

    .line 279
    invoke-virtual {v1, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 280
    new-instance p0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 281
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mExploreByTouchHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mExploreByTouchHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getCropBoundaries(II)Landroid/graphics/Rect;
    .locals 4

    .line 307
    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    int-to-float p1, p1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    int-to-float p2, p2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, p1

    float-to-int p1, v3

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p0, p2

    float-to-int p0, p0

    invoke-direct {v0, v1, v2, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 127
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/screenshot/CropView;->drawShade(Landroid/graphics/Canvas;FFFF)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/screenshot/CropView;->drawShade(Landroid/graphics/Canvas;FFFF)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/screenshot/CropView;->drawShade(Landroid/graphics/Canvas;FFFF)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/screenshot/CropView;->drawShade(Landroid/graphics/Canvas;FFFF)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/screenshot/CropView;->drawHorizontalHandle(Landroid/graphics/Canvas;FZ)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/android/systemui/screenshot/CropView;->drawHorizontalHandle(Landroid/graphics/Canvas;FZ)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/screenshot/CropView;->drawVerticalHandle(Landroid/graphics/Canvas;FZ)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-direct {p0, p1, v0, v2}, Lcom/android/systemui/screenshot/CropView;->drawVerticalHandle(Landroid/graphics/Canvas;FZ)V

    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 215
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 216
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mExploreByTouchHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 119
    check-cast p1, Lcom/android/systemui/screenshot/CropView$SavedState;

    .line 120
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 122
    iget-object p1, p1, Lcom/android/systemui/screenshot/CropView$SavedState;->mCrop:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 110
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/android/systemui/screenshot/CropView$SavedState;

    invoke-direct {v1, v0}, Lcom/android/systemui/screenshot/CropView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 113
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iput-object p0, v1, Lcom/android/systemui/screenshot/CropView$SavedState;->mCrop:Landroid/graphics/RectF;

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 140
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    move-result v3

    .line 141
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    move-result v4

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v8, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 182
    :cond_0
    iget v0, p0, Lcom/android/systemui/screenshot/CropView;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    sget-object v1, Lcom/android/systemui/screenshot/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    if-eq v0, v1, :cond_6

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-direct {p0, v8, p1}, Lcom/android/systemui/screenshot/CropView;->updateListener(IF)V

    return v8

    .line 175
    :cond_1
    iget v0, p0, Lcom/android/systemui/screenshot/CropView;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    sget-object v1, Lcom/android/systemui/screenshot/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    if-eq v0, v1, :cond_6

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-direct {p0, v7, p1}, Lcom/android/systemui/screenshot/CropView;->updateListener(IF)V

    return v8

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    sget-object v2, Lcom/android/systemui/screenshot/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    if-eq v0, v2, :cond_6

    .line 158
    iget v0, p0, Lcom/android/systemui/screenshot/CropView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_4

    .line 161
    iget-object v2, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    invoke-static {v2}, Lcom/android/systemui/screenshot/CropView;->isVertical(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/screenshot/CropView;->mStartingY:F

    goto :goto_0

    .line 163
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/screenshot/CropView;->mStartingX:F

    :goto_0
    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    .line 164
    iget-object v3, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/screenshot/CropView;->pixelDistanceToFraction(FLcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result v2

    .line 166
    iget-object v3, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    iget-object v4, p0, Lcom/android/systemui/screenshot/CropView;->mMotionRange:Landroid/util/Range;

    iget v5, p0, Lcom/android/systemui/screenshot/CropView;->mMovementStartValue:F

    add-float/2addr v5, v2

    .line 167
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 166
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/screenshot/CropView;->setBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;F)V

    .line 168
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/screenshot/CropView;->updateListener(IF)V

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return v8

    .line 190
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    sget-object v1, Lcom/android/systemui/screenshot/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/android/systemui/screenshot/CropView;->mActivePointerId:I

    .line 191
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 192
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-direct {p0, v8, p1}, Lcom/android/systemui/screenshot/CropView;->updateListener(IF)V

    return v8

    .line 197
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 144
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 145
    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    move-result v5

    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 146
    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    .line 144
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/screenshot/CropView;->nearestBoundary(Landroid/view/MotionEvent;IIII)Lcom/android/systemui/screenshot/CropView$CropBoundary;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 147
    sget-object v1, Lcom/android/systemui/screenshot/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    if-eq v0, v1, :cond_8

    .line 148
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/CropView;->mActivePointerId:I

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/CropView;->mStartingY:F

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/CropView;->mStartingX:F

    .line 151
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/CropView;->mMovementStartValue:F

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, v7, p1}, Lcom/android/systemui/screenshot/CropView;->updateListener(IF)V

    .line 153
    iget-object p1, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/CropView;->getAllowedValues(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Landroid/util/Range;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/CropView;->mMotionRange:Landroid/util/Range;

    :cond_8
    return v8
.end method

.method public setBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;F)V
    .locals 1

    .line 223
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/CropView;->getAllowedValues(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Landroid/util/Range;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 224
    sget-object v0, Lcom/android/systemui/screenshot/CropView$1;->$SwitchMap$com$android$systemui$screenshot$CropView$CropBoundary:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "CropView"

    const-string p2, "No boundary selected"

    .line 238
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iput p2, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 232
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iput p2, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 229
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 226
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 242
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCropInteractionListener(Lcom/android/systemui/screenshot/CropView$CropInteractionListener;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/android/systemui/screenshot/CropView;->mCropInteractionListener:Lcom/android/systemui/screenshot/CropView$CropInteractionListener;

    return-void
.end method

.method public setExtraPadding(II)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/android/systemui/screenshot/CropView;->mExtraTopPadding:I

    .line 290
    iput p2, p0, Lcom/android/systemui/screenshot/CropView;->mExtraBottomPadding:I

    .line 291
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setImageWidth(I)V
    .locals 0

    .line 299
    iput p1, p0, Lcom/android/systemui/screenshot/CropView;->mImageWidth:I

    .line 300
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
