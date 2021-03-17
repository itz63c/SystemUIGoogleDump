.class public Lcom/android/systemui/screenshot/CropView;
.super Landroid/view/View;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/CropView$CropInteractionListener;,
        Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;,
        Lcom/android/systemui/screenshot/CropView$CropBoundary;
    }
.end annotation


# instance fields
.field private mBottomCrop:F

.field private mBottomDelta:F

.field private mCropInteractionListener:Lcom/android/systemui/screenshot/CropView$CropInteractionListener;

.field private final mCropTouchMargin:F

.field private mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

.field private final mHandlePaint:Landroid/graphics/Paint;

.field private final mShadePaint:Landroid/graphics/Paint;

.field private mStartingY:F

.field private mTopCrop:F

.field private mTopDelta:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/screenshot/CropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 60
    iput p3, p0, Lcom/android/systemui/screenshot/CropView;->mTopCrop:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 61
    iput v0, p0, Lcom/android/systemui/screenshot/CropView;->mBottomCrop:F

    .line 65
    iput p3, p0, Lcom/android/systemui/screenshot/CropView;->mTopDelta:F

    .line 66
    iput p3, p0, Lcom/android/systemui/screenshot/CropView;->mBottomDelta:F

    .line 68
    sget-object p3, Lcom/android/systemui/screenshot/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    iput-object p3, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p3, Lcom/android/systemui/R$styleable;->CropView:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 80
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/CropView;->mShadePaint:Landroid/graphics/Paint;

    .line 81
    sget p3, Lcom/android/systemui/R$styleable;->CropView_scrimColor:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/CropView;->mHandlePaint:Landroid/graphics/Paint;

    .line 83
    sget p3, Lcom/android/systemui/R$styleable;->CropView_handleColor:I

    const/high16 v0, -0x1000000

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    sget p3, Lcom/android/systemui/R$styleable;->CropView_handleThickness:I

    const/16 v0, 0x14

    .line 85
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    .line 84
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41c00000    # 24.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    .line 90
    new-instance p1, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;-><init>(Lcom/android/systemui/screenshot/CropView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/screenshot/CropView;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/systemui/screenshot/CropView;->mTopCrop:F

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/screenshot/CropView;F)I
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/CropView;->fractionToPixels(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/screenshot/CropView;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/screenshot/CropView;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/systemui/screenshot/CropView;->mBottomCrop:F

    return p0
.end method

.method private commitDeltas()V
    .locals 2

    .line 199
    iget v0, p0, Lcom/android/systemui/screenshot/CropView;->mTopCrop:F

    iget v1, p0, Lcom/android/systemui/screenshot/CropView;->mTopDelta:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/screenshot/CropView;->mTopCrop:F

    .line 200
    iget v0, p0, Lcom/android/systemui/screenshot/CropView;->mBottomCrop:F

    iget v1, p0, Lcom/android/systemui/screenshot/CropView;->mBottomDelta:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/screenshot/CropView;->mBottomCrop:F

    const/4 v0, 0x0

    .line 201
    iput v0, p0, Lcom/android/systemui/screenshot/CropView;->mTopDelta:F

    .line 202
    iput v0, p0, Lcom/android/systemui/screenshot/CropView;->mBottomDelta:F

    return-void
.end method

.method private drawHandle(Landroid/graphics/Canvas;F)V
    .locals 6

    .line 220
    invoke-direct {p0, p2}, Lcom/android/systemui/screenshot/CropView;->fractionToPixels(F)I

    move-result p2

    int-to-float v4, p2

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float v3, p2

    iget-object v5, p0, Lcom/android/systemui/screenshot/CropView;->mHandlePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawShade(Landroid/graphics/Canvas;FF)V
    .locals 6

    .line 215
    invoke-direct {p0, p2}, Lcom/android/systemui/screenshot/CropView;->fractionToPixels(F)I

    move-result p2

    int-to-float v2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float v3, p2

    .line 216
    invoke-direct {p0, p3}, Lcom/android/systemui/screenshot/CropView;->fractionToPixels(F)I

    move-result p2

    int-to-float v4, p2

    iget-object v5, p0, Lcom/android/systemui/screenshot/CropView;->mShadePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    .line 215
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private fractionToPixels(F)I
    .locals 0

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private nearestBoundary(Landroid/view/MotionEvent;II)Lcom/android/systemui/screenshot/CropView$CropBoundary;
    .locals 1

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float p2, p2

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v0, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    .line 234
    sget-object p0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    return-object p0

    .line 236
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float p2, p3

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    .line 237
    sget-object p0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    return-object p0

    .line 239
    :cond_1
    sget-object p0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    return-object p0
.end method

.method private pixelsToFraction(I)F
    .locals 0

    int-to-float p1, p1

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private updateListener(Landroid/view/MotionEvent;)V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCropInteractionListener:Lcom/android/systemui/screenshot/CropView$CropInteractionListener;

    if-eqz v0, :cond_1

    .line 207
    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    sget-object v2, Lcom/android/systemui/screenshot/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    if-ne v1, v2, :cond_0

    .line 208
    iget v2, p0, Lcom/android/systemui/screenshot/CropView;->mTopCrop:F

    iget v3, p0, Lcom/android/systemui/screenshot/CropView;->mTopDelta:F

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/systemui/screenshot/CropView;->mBottomCrop:F

    iget v3, p0, Lcom/android/systemui/screenshot/CropView;->mBottomDelta:F

    :goto_0
    add-float/2addr v2, v3

    .line 210
    invoke-direct {p0, v2}, Lcom/android/systemui/screenshot/CropView;->fractionToPixels(F)I

    move-result p0

    .line 209
    invoke-interface {v0, p1, v1, v2, p0}, Lcom/android/systemui/screenshot/CropView$CropInteractionListener;->onCropMotionEvent(Landroid/view/MotionEvent;Lcom/android/systemui/screenshot/CropView$CropBoundary;FI)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 95
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    iget v0, p0, Lcom/android/systemui/screenshot/CropView;->mTopCrop:F

    iget v1, p0, Lcom/android/systemui/screenshot/CropView;->mTopDelta:F

    add-float/2addr v0, v1

    .line 97
    iget v1, p0, Lcom/android/systemui/screenshot/CropView;->mBottomCrop:F

    iget v2, p0, Lcom/android/systemui/screenshot/CropView;->mBottomDelta:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1, v2, v0}, Lcom/android/systemui/screenshot/CropView;->drawShade(Landroid/graphics/Canvas;FF)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 99
    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/screenshot/CropView;->drawShade(Landroid/graphics/Canvas;FF)V

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/CropView;->drawHandle(Landroid/graphics/Canvas;F)V

    .line 101
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/screenshot/CropView;->drawHandle(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 106
    iget v0, p0, Lcom/android/systemui/screenshot/CropView;->mTopCrop:F

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/CropView;->fractionToPixels(F)I

    move-result v0

    .line 107
    iget v1, p0, Lcom/android/systemui/screenshot/CropView;->mBottomCrop:F

    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/CropView;->fractionToPixels(F)I

    move-result v1

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    const/4 v0, 0x3

    if-eq v2, v0, :cond_2

    goto :goto_1

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    sget-object v4, Lcom/android/systemui/screenshot/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    if-eq v2, v4, :cond_2

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v4, p0, Lcom/android/systemui/screenshot/CropView;->mStartingY:F

    sub-float/2addr v2, v4

    .line 119
    iget-object v4, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    sget-object v5, Lcom/android/systemui/screenshot/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v4, v5, :cond_1

    neg-int v4, v0

    int-to-float v4, v4

    int-to-float v1, v1

    .line 120
    iget v5, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    mul-float/2addr v5, v6

    sub-float/2addr v1, v5

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-static {v2, v4, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/CropView;->pixelsToFraction(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/CropView;->mTopDelta:F

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    .line 123
    iget v4, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    mul-float/2addr v4, v6

    add-float/2addr v0, v4

    int-to-float v4, v1

    sub-float/2addr v0, v4

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v1

    int-to-float v1, v4

    .line 123
    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/CropView;->pixelsToFraction(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/CropView;->mBottomDelta:F

    .line 127
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/CropView;->updateListener(Landroid/view/MotionEvent;)V

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v3

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    sget-object v1, Lcom/android/systemui/screenshot/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    if-eq v0, v1, :cond_3

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/screenshot/CropView;->commitDeltas()V

    .line 136
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/CropView;->updateListener(Landroid/view/MotionEvent;)V

    .line 139
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 110
    :cond_4
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/screenshot/CropView;->nearestBoundary(Landroid/view/MotionEvent;II)Lcom/android/systemui/screenshot/CropView$CropBoundary;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 111
    sget-object v1, Lcom/android/systemui/screenshot/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    if-eq v0, v1, :cond_5

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/CropView;->mStartingY:F

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/CropView;->updateListener(Landroid/view/MotionEvent;)V

    :cond_5
    return v3
.end method
