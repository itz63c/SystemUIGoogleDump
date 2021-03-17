.class public Lcom/android/wm/shell/bubbles/BubbleFlyoutView;
.super Landroid/widget/FrameLayout;
.source "BubbleFlyoutView.java"


# instance fields
.field private final mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mArrowPointingLeft:Z

.field private final mBgPaint:Landroid/graphics/Paint;

.field private final mBgRect:Landroid/graphics/RectF;

.field private mBgTranslationX:F

.field private mBgTranslationY:F

.field private mBubbleBitmapSize:I

.field private final mBubbleElevation:I

.field private mBubbleSize:I

.field private final mCornerRadius:F

.field private mDotCenter:[F

.field private mDotColor:I

.field private final mFloatingBackgroundColor:I

.field private final mFlyoutElevation:I

.field private final mFlyoutPadding:I

.field private final mFlyoutSpaceFromBubble:I

.field private final mFlyoutTextContainer:Landroid/view/ViewGroup;

.field private mFlyoutToDotHeightDelta:F

.field private mFlyoutToDotWidthDelta:F

.field private mFlyoutY:F

.field private final mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

.field private final mMessageText:Landroid/widget/TextView;

.field private mNewDotRadius:F

.field private mNewDotSize:F

.field private mOnHide:Ljava/lang/Runnable;

.field private mOriginalDotSize:F

.field private mPercentStillFlyout:F

.field private mPercentTransitionedToDot:F

.field private final mPointerSize:I

.field private mRestingTranslationX:F

.field private final mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

.field private final mSenderAvatar:Landroid/widget/ImageView;

.field private final mSenderText:Landroid/widget/TextView;

.field private mTranslationXWhenDot:F

.field private mTranslationYWhenDot:F

.field private final mTriangleOutline:Landroid/graphics/Outline;


# direct methods
.method public static synthetic $r8$lambda$GYAHSSoTO2WlnDdFD4qtQjl5pZk()V
    .locals 0

    invoke-static {}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->lambda$animateUpdate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Hik-6Z-WfHGGhz64dtGImQpyu44(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->lambda$animateUpdate$2(Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$nySwTwlrL1dC6OAwZm1wbwIcKnc(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Landroid/graphics/PointF;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->lambda$setupFlyoutStartingAsDot$3(Landroid/graphics/PointF;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qxy_z_XHLfDWF5T-Dcj1RGNYTkY(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->lambda$animateUpdate$1(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 158
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    .line 94
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 v2, 0x1

    .line 104
    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    .line 110
    new-instance v3, Landroid/graphics/Outline;

    invoke-direct {v3}, Landroid/graphics/Outline;-><init>()V

    iput-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    .line 113
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    .line 116
    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    const/high16 v4, 0x3f800000    # 1.0f

    .line 123
    iput v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    .line 124
    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    .line 130
    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotWidthDelta:F

    .line 131
    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotHeightDelta:F

    .line 134
    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    .line 135
    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationYWhenDot:F

    .line 147
    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    .line 159
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v3, Lcom/android/wm/shell/R$layout;->bubble_flyout:I

    invoke-virtual {p1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 161
    sget p1, Lcom/android/wm/shell/R$id;->bubble_flyout_text_container:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutTextContainer:Landroid/view/ViewGroup;

    .line 162
    sget v3, Lcom/android/wm/shell/R$id;->bubble_flyout_name:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    .line 163
    sget v3, Lcom/android/wm/shell/R$id;->bubble_flyout_avatar:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    .line 164
    sget v3, Lcom/android/wm/shell/R$id;->bubble_flyout_text:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    .line 166
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 167
    sget v3, Lcom/android/wm/shell/R$dimen;->bubble_flyout_padding_x:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutPadding:I

    .line 168
    sget v3, Lcom/android/wm/shell/R$dimen;->bubble_flyout_space_from_bubble:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    .line 169
    sget v3, Lcom/android/wm/shell/R$dimen;->bubble_flyout_pointer_size:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPointerSize:I

    .line 171
    sget v4, Lcom/android/wm/shell/R$dimen;->bubble_elevation:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleElevation:I

    .line 172
    sget v4, Lcom/android/wm/shell/R$dimen;->bubble_flyout_elevation:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutElevation:I

    .line 174
    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 178
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    .line 179
    invoke-virtual {v4, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mCornerRadius:F

    .line 180
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    invoke-virtual {p0, v3, v5, v3, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 184
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 185
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    int-to-float p1, p1

    .line 186
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 187
    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 195
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 197
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    int-to-float v0, v3

    int-to-float v1, v3

    .line 200
    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/common/TriangleShape;->createHorizontal(FFZ)Lcom/android/wm/shell/common/TriangleShape;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    .line 202
    invoke-virtual {p1, v5, v5, v3, v3}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 203
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    int-to-float v0, v3

    int-to-float v1, v3

    .line 206
    invoke-static {v0, v1, v5}, Lcom/android/wm/shell/common/TriangleShape;->createHorizontal(FFZ)Lcom/android/wm/shell/common/TriangleShape;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    .line 208
    invoke-virtual {p1, v5, v5, v3, v3}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 209
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x10104e2
        0x1010571
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Landroid/graphics/Outline;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method private clampPercentage(F)F
    .locals 0

    const/4 p0, 0x0

    .line 410
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private fade(ZLjava/lang/Runnable;)V
    .locals 9

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 246
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/high16 v2, 0x42200000    # 40.0f

    .line 247
    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    if-eqz p1, :cond_1

    add-float/2addr v3, v2

    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 248
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p1, :cond_2

    move v0, v1

    .line 249
    :cond_2
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0xfa

    const-wide/16 v5, 0x96

    if-eqz p1, :cond_3

    move-wide v7, v3

    goto :goto_1

    :cond_3
    move-wide v7, v5

    .line 250
    :goto_1
    invoke-virtual {v0, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_4

    .line 251
    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 252
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 253
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    sub-float/2addr p0, v2

    :goto_3
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move-wide v3, v5

    .line 254
    :goto_4
    invoke-virtual {p0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_7

    .line 255
    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_5

    :cond_7
    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_5
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 256
    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private getInterpolatedRadius()F
    .locals 3

    .line 523
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mCornerRadius:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr p0, v2

    add-float/2addr v0, p0

    return v0
.end method

.method private getOutline(Landroid/graphics/Outline;)V
    .locals 4

    .line 486
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    invoke-virtual {v0}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 488
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 489
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->getInterpolatedRadius()F

    move-result v1

    .line 490
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 492
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 495
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 496
    iget-object v0, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    iget-object v1, v1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 500
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 501
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgTranslationX:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgTranslationY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 507
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    const v2, 0x3f7ae148    # 0.98f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    sub-float/2addr v1, v2

    const v2, 0x3ca3d70a    # 0.02f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    .line 512
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    mul-float v3, p0, v1

    mul-float/2addr p0, v1

    invoke-virtual {v0, v3, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 515
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 518
    :cond_1
    iget-object p0, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_2
    return-void
.end method

.method private static synthetic lambda$animateUpdate$0()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$animateUpdate$1(F)V
    .locals 2

    .line 235
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleSize:I

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutTextContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    .line 236
    sget-object p1, Lcom/android/wm/shell/bubbles/BubbleFlyoutView-$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/wm/shell/bubbles/BubbleFlyoutView-$$ExternalSyntheticLambda3;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->fade(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$animateUpdate$2(Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;FF)V
    .locals 0

    .line 232
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->updateFlyoutMessage(Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;F)V

    .line 234
    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleFlyoutView-$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p3}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;F)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$setupFlyoutStartingAsDot$3(Landroid/graphics/PointF;ZLjava/lang/Runnable;)V
    .locals 4

    .line 322
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleSize:I

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutTextContainer:Landroid/view/ViewGroup;

    .line 323
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    .line 324
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 328
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz v0, :cond_0

    .line 329
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleSize:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    .line 330
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    move v1, v0

    goto :goto_1

    .line 334
    :cond_1
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mNewDotSize:F

    .line 335
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotWidthDelta:F

    .line 336
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotHeightDelta:F

    if-eqz p2, :cond_2

    goto :goto_2

    .line 339
    :cond_2
    iget p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mOriginalDotSize:F

    div-float v0, p2, v2

    .line 340
    :goto_2
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mDotCenter:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    add-float/2addr p2, v2

    sub-float/2addr p2, v0

    .line 341
    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x1

    aget v1, v1, v2

    add-float/2addr p1, v1

    sub-float/2addr p1, v0

    .line 343
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    sub-float/2addr v0, p2

    .line 344
    iget p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    sub-float/2addr p2, p1

    neg-float p1, v0

    .line 346
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    neg-float p1, p2

    .line 347
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationYWhenDot:F

    if-eqz p3, :cond_3

    .line 349
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private renderBackground(Landroid/graphics/Canvas;)V
    .locals 8

    .line 420
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotWidthDelta:F

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 421
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotHeightDelta:F

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 422
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->getInterpolatedRadius()F

    move-result v2

    .line 425
    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgTranslationX:F

    .line 426
    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationYWhenDot:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgTranslationY:F

    .line 433
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPointerSize:I

    int-to-float v5, v4

    iget v6, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    mul-float/2addr v5, v6

    int-to-float v4, v4

    mul-float/2addr v4, v6

    sub-float v4, v0, v4

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 439
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    iget v5, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    iget v6, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    .line 441
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mDotColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 440
    invoke-virtual {v4, v5, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 439
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 443
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 444
    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgTranslationX:F

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgTranslationY:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 445
    invoke-direct {p0, p1, v0, v1}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->renderPointerTriangle(Landroid/graphics/Canvas;FF)V

    .line 446
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 447
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private renderPointerTriangle(Landroid/graphics/Canvas;FF)V
    .locals 5

    .line 453
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 457
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPointerSize:I

    int-to-float v4, v3

    mul-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    mul-float/2addr v1, v2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v2, v3

    sub-float/2addr p2, v2

    add-float/2addr v1, p2

    :goto_1
    div-float/2addr p3, v4

    int-to-float p2, v3

    div-float/2addr p2, v4

    sub-float/2addr p3, p2

    if-eqz v0, :cond_2

    .line 471
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    .line 472
    :goto_2
    invoke-virtual {p1, v1, p3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x437f0000    # 255.0f

    .line 473
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    .line 474
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 478
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/ShapeDrawable;->getOutline(Landroid/graphics/Outline;)V

    .line 479
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    float-to-int p2, v1

    float-to-int p3, p3

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Outline;->offset(II)V

    .line 481
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private updateFlyoutMessage(Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;F)V
    .locals 4

    .line 260
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderAvatar:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 261
    iget-boolean v3, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->isGroupChat:Z

    if-eqz v3, :cond_0

    .line 262
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 267
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 268
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    :goto_0
    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 271
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutPadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    .line 275
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 277
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 287
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method animateUpdate(Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;FF)V
    .locals 1

    .line 231
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView-$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView-$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;FF)V

    const/4 p1, 0x0

    .line 239
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->fade(ZLjava/lang/Runnable;)V

    return-void
.end method

.method getRestingTranslationX()F
    .locals 0

    .line 405
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    return p0
.end method

.method hideFlyout()V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 361
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    :cond_0
    const/16 v0, 0x8

    .line 365
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->renderBackground(Landroid/graphics/Canvas;)V

    .line 215
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 216
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method setCollapsePercent(F)V
    .locals 2

    .line 373
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 377
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    sub-float/2addr v1, p1

    .line 378
    iput v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    .line 382
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 383
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    const/high16 v1, 0x3f400000    # 0.75f

    sub-float/2addr v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->clampPercentage(F)F

    move-result v0

    .line 387
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 388
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 390
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 391
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 393
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 394
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 397
    iget p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutElevation:I

    int-to-float v0, p1

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleElevation:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 400
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method setupFlyoutStartingAsDot(Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;Landroid/graphics/PointF;FZILjava/lang/Runnable;Ljava/lang/Runnable;[FZLcom/android/wm/shell/bubbles/BubblePositioner;)V
    .locals 2

    .line 303
    invoke-virtual {p10}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleBitmapSize()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleBitmapSize:I

    .line 304
    invoke-virtual {p10}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleSize()I

    move-result p10

    iput p10, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleSize:I

    .line 306
    iget p10, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleBitmapSize:I

    int-to-float p10, p10

    const v0, 0x3e6978d5    # 0.228f

    mul-float/2addr p10, v0

    iput p10, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mOriginalDotSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p10, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p10, v1

    .line 307
    iput p10, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    mul-float/2addr p10, v1

    .line 308
    iput p10, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mNewDotSize:F

    .line 310
    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->updateFlyoutMessage(Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;F)V

    .line 312
    iput-boolean p4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    .line 313
    iput p5, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mDotColor:I

    .line 314
    iput-object p7, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    .line 315
    iput-object p8, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mDotCenter:[F

    .line 317
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->setCollapsePercent(F)V

    .line 320
    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleFlyoutView-$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2, p9, p6}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Landroid/graphics/PointF;ZLjava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateFontSize(F)V
    .locals 2

    .line 220
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050280

    .line 221
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 223
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 224
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
