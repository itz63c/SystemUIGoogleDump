.class public Lcom/android/systemui/screenshot/MagnifierView;
.super Landroid/view/View;
.source "MagnifierView.java"

# interfaces
.implements Lcom/android/systemui/screenshot/CropView$CropInteractionListener;


# instance fields
.field private final mBorderColor:I

.field private final mBorderPx:F

.field private mCheckerboard:Landroid/graphics/Path;

.field private mCheckerboardBoxSize:F

.field private mCheckerboardPaint:Landroid/graphics/Paint;

.field private mCropBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHandlePaint:Landroid/graphics/Paint;

.field private mInnerCircle:Landroid/graphics/Path;

.field private mLastCropPosition:F

.field private mOuterCircle:Landroid/graphics/Path;

.field private final mShadePaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$wBjL56_6yKAkSIHZzC5EOZWARHk(Lcom/android/systemui/screenshot/MagnifierView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/MagnifierView;->lambda$onCropMotionEvent$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/screenshot/MagnifierView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x42200000    # 40.0f

    .line 54
    iput p3, p0, Lcom/android/systemui/screenshot/MagnifierView;->mCheckerboardBoxSize:F

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p3, Lcom/android/systemui/R$styleable;->MagnifierView:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 67
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/MagnifierView;->mShadePaint:Landroid/graphics/Paint;

    .line 68
    sget p3, Lcom/android/systemui/R$styleable;->MagnifierView_scrimColor:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/MagnifierView;->mHandlePaint:Landroid/graphics/Paint;

    .line 70
    sget p3, Lcom/android/systemui/R$styleable;->MagnifierView_handleColor:I

    const/high16 v1, -0x1000000

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    sget p3, Lcom/android/systemui/R$styleable;->MagnifierView_handleThickness:I

    const/16 v1, 0x14

    .line 72
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    .line 71
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    sget p2, Lcom/android/systemui/R$styleable;->MagnifierView_borderThickness:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/screenshot/MagnifierView;->mBorderPx:F

    .line 74
    sget p2, Lcom/android/systemui/R$styleable;->MagnifierView_borderColor:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/screenshot/MagnifierView;->mBorderColor:I

    .line 75
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mCheckerboardPaint:Landroid/graphics/Paint;

    const p0, -0x777778

    .line 77
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private generateCheckerboard()Landroid/graphics/Path;
    .locals 13

    .line 165
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mCheckerboardBoxSize:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v7, v0

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mCheckerboardBoxSize:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v8, v0

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_2

    .line 171
    rem-int/lit8 v0, v10, 0x2

    if-nez v0, :cond_0

    move v0, v9

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    move v11, v0

    :goto_2
    if-ge v11, v7, :cond_1

    int-to-float v0, v11

    .line 173
    iget v1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mCheckerboardBoxSize:F

    mul-float v2, v0, v1

    int-to-float v0, v10

    mul-float v3, v0, v1

    add-int/lit8 v0, v11, 0x1

    int-to-float v0, v0

    mul-float v4, v0, v1

    add-int/lit8 v0, v10, 0x1

    int-to-float v0, v0

    mul-float v5, v0, v1

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, v6

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    add-int/lit8 v11, v11, 0x2

    goto :goto_2

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    return-object v6
.end method

.method private getParentWidth()I
    .locals 0

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCropMotionEvent$0()V
    .locals 1

    const/4 v0, 0x4

    .line 159
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onCropMotionEvent(Landroid/view/MotionEvent;Lcom/android/systemui/screenshot/CropView$CropBoundary;FI)V
    .locals 4

    .line 135
    iput-object p2, p0, Lcom/android/systemui/screenshot/MagnifierView;->mCropBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x2

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    if-eq p2, v3, :cond_0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    goto/16 :goto_2

    .line 152
    :cond_0
    iput p3, p0, Lcom/android/systemui/screenshot/MagnifierView;->mLastCropPosition:F

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v3

    sub-int/2addr p4, p1

    int-to-float p1, p4

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2

    .line 158
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/systemui/screenshot/MagnifierView;->getParentWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/2addr p2, v3

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 159
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/screenshot/MagnifierView-$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/MagnifierView-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/MagnifierView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 138
    :cond_2
    iput p3, p0, Lcom/android/systemui/screenshot/MagnifierView;->mLastCropPosition:F

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/2addr p2, v3

    sub-int/2addr p4, p2

    int-to-float p2, p4

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/2addr p2, v3

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setPivotX(F)V

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/2addr p2, v3

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setPivotY(F)V

    .line 142
    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 143
    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 144
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/screenshot/MagnifierView;->getParentWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/2addr p2, v3

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationX(F)V

    const/4 p2, 0x0

    .line 146
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0}, Lcom/android/systemui/screenshot/MagnifierView;->getParentWidth()I

    move-result p3

    div-int/2addr p3, v3

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, p2

    :goto_0
    if-eqz v0, :cond_4

    goto :goto_1

    .line 148
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/screenshot/MagnifierView;->getParentWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float v1, p1

    .line 149
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 103
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/screenshot/MagnifierView;->mOuterCircle:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 107
    iget v0, p0, Lcom/android/systemui/screenshot/MagnifierView;->mBorderColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/screenshot/MagnifierView;->mInnerCircle:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 111
    iget-object v0, p0, Lcom/android/systemui/screenshot/MagnifierView;->mCheckerboard:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mCheckerboardPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/screenshot/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 117
    iget-object v0, p0, Lcom/android/systemui/screenshot/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/screenshot/MagnifierView;->mLastCropPosition:F

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 117
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/screenshot/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 123
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 124
    iget-object v1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mCropBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    sget-object v2, Lcom/android/systemui/screenshot/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    if-ne v1, v2, :cond_1

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mShadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v3, 0x0

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/screenshot/MagnifierView;->mHandlePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 92
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 94
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/MagnifierView;->mOuterCircle:Landroid/graphics/Path;

    int-to-float p1, p1

    .line 95
    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p1, p1, p1, p3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 96
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/MagnifierView;->mInnerCircle:Landroid/graphics/Path;

    .line 97
    iget p3, p0, Lcom/android/systemui/screenshot/MagnifierView;->mBorderPx:F

    sub-float p3, p1, p3

    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p1, p1, p3, p4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/screenshot/MagnifierView;->generateCheckerboard()Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mCheckerboard:Landroid/graphics/Path;

    return-void
.end method
