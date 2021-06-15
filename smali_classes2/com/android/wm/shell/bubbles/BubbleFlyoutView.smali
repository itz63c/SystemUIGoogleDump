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

.method public static synthetic $r8$lambda$Gr5QmHG0RgoeIBs9psKpzh3e_RQ(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;FLandroid/graphics/PointF;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->lambda$animateUpdate$2(Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;FLandroid/graphics/PointF;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$HQSFN6J5oiXnMkK_Npq3YXeYQ_k(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Landroid/graphics/PointF;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->lambda$animateUpdate$1(Landroid/graphics/PointF;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$nySwTwlrL1dC6OAwZm1wbwIcKnc(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Landroid/graphics/PointF;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->lambda$setupFlyoutStartingAsDot$3(Landroid/graphics/PointF;ZLjava/lang/Runnable;)V

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

    .line 422
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private fade(ZLandroid/graphics/PointF;ZLjava/lang/Runnable;)V
    .locals 7

    .line 246
    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleSize:I

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutTextContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 248
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/high16 v2, 0x42200000    # 40.0f

    .line 249
    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    if-eqz p1, :cond_1

    add-float/2addr v3, v2

    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 250
    iget v3, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->updateFlyoutX(F)V

    .line 251
    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 252
    invoke-virtual {p0, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->updateDot(Landroid/graphics/PointF;Z)V

    .line 254
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_2

    move v0, v1

    .line 255
    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0xfa

    const-wide/16 v3, 0x96

    if-eqz p1, :cond_3

    move-wide v5, v0

    goto :goto_1

    :cond_3
    move-wide v5, v3

    .line 256
    :goto_1
    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_4

    .line 257
    sget-object p3, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_4
    sget-object p3, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 258
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 259
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    sub-float/2addr p0, v2

    :goto_3
    invoke-virtual {p2, p0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move-wide v0, v3

    .line 260
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_7

    .line 261
    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_5

    :cond_7
    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_5
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 262
    invoke-virtual {p0, p4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private getInterpolatedRadius()F
    .locals 3

    .line 535
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

    .line 498
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    invoke-virtual {v0}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 500
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 501
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->getInterpolatedRadius()F

    move-result v1

    .line 502
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 504
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 507
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 508
    iget-object v0, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    iget-object v1, v1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 512
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 513
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

    .line 519
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    const v2, 0x3f7ae148    # 0.98f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    sub-float/2addr v1, v2

    const v2, 0x3ca3d70a    # 0.02f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    .line 524
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    mul-float v3, p0, v1

    mul-float/2addr p0, v1

    invoke-virtual {v0, v3, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 527
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 530
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

.method private synthetic lambda$animateUpdate$1(Landroid/graphics/PointF;Z)V
    .locals 2

    .line 236
    sget-object v0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->fade(ZLandroid/graphics/PointF;ZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$animateUpdate$2(Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;FLandroid/graphics/PointF;Z)V
    .locals 0

    .line 233
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->updateFlyoutMessage(Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;F)V

    .line 235
    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p3, p4}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Landroid/graphics/PointF;Z)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$setupFlyoutStartingAsDot$3(Landroid/graphics/PointF;ZLjava/lang/Runnable;)V
    .locals 3

    .line 355
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleSize:I

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutTextContainer:Landroid/view/ViewGroup;

    .line 356
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    .line 357
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 358
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->updateFlyoutX(F)V

    .line 359
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->updateDot(Landroid/graphics/PointF;Z)V

    if-eqz p3, :cond_0

    .line 361
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private renderBackground(Landroid/graphics/Canvas;)V
    .locals 8

    .line 432
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotWidthDelta:F

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 433
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotHeightDelta:F

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 434
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->getInterpolatedRadius()F

    move-result v2

    .line 437
    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgTranslationX:F

    .line 438
    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationYWhenDot:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgTranslationY:F

    .line 445
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

    .line 451
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    iget v5, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    iget v6, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    .line 453
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mDotColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 452
    invoke-virtual {v4, v5, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 451
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 455
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 456
    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgTranslationX:F

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgTranslationY:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 457
    invoke-direct {p0, p1, v0, v1}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->renderPointerTriangle(Landroid/graphics/Canvas;FF)V

    .line 458
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 459
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private renderPointerTriangle(Landroid/graphics/Canvas;FF)V
    .locals 5

    .line 465
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 469
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

    .line 483
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    .line 484
    :goto_2
    invoke-virtual {p1, v1, p3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x437f0000    # 255.0f

    .line 485
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    .line 486
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 490
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/ShapeDrawable;->getOutline(Landroid/graphics/Outline;)V

    .line 491
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    float-to-int p2, v1

    float-to-int p3, p3

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Outline;->offset(II)V

    .line 493
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private updateFlyoutMessage(Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;F)V
    .locals 4

    .line 266
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderAvatar:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 267
    iget-boolean v3, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->isGroupChat:Z

    if-eqz v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 273
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 274
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    :goto_0
    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 277
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutPadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    .line 281
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 283
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 293
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method animateUpdate(Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;FLandroid/graphics/PointF;Z)V
    .locals 7

    .line 232
    new-instance v6, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;FLandroid/graphics/PointF;Z)V

    const/4 p1, 0x0

    .line 239
    invoke-direct {p0, p1, p3, p4, v6}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->fade(ZLandroid/graphics/PointF;ZLjava/lang/Runnable;)V

    return-void
.end method

.method getRestingTranslationX()F
    .locals 0

    .line 417
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    return p0
.end method

.method hideFlyout()V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 373
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    :cond_0
    const/16 v0, 0x8

    .line 377
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

    .line 385
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 389
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    sub-float/2addr v1, p1

    .line 390
    iput v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    .line 394
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

    .line 395
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    const/high16 v1, 0x3f400000    # 0.75f

    sub-float/2addr v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->clampPercentage(F)F

    move-result v0

    .line 399
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 400
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 402
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 403
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 405
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 406
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 409
    iget p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutElevation:I

    int-to-float v0, p1

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleElevation:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 412
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method setupFlyoutStartingAsDot(Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;Landroid/graphics/PointF;FZILjava/lang/Runnable;Ljava/lang/Runnable;[FZLcom/android/wm/shell/bubbles/BubblePositioner;)V
    .locals 2

    .line 336
    invoke-virtual {p10}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleBitmapSize()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleBitmapSize:I

    .line 337
    invoke-virtual {p10}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleSize()I

    move-result p10

    iput p10, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleSize:I

    .line 339
    iget p10, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleBitmapSize:I

    int-to-float p10, p10

    const v0, 0x3e6978d5    # 0.228f

    mul-float/2addr p10, v0

    iput p10, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mOriginalDotSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p10, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p10, v1

    .line 340
    iput p10, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    mul-float/2addr p10, v1

    .line 341
    iput p10, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mNewDotSize:F

    .line 343
    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->updateFlyoutMessage(Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;F)V

    .line 345
    iput-boolean p4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    .line 346
    iput p5, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mDotColor:I

    .line 347
    iput-object p7, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    .line 348
    iput-object p8, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mDotCenter:[F

    .line 350
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->setCollapsePercent(F)V

    .line 353
    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2, p9, p6}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Landroid/graphics/PointF;ZLjava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateDot(Landroid/graphics/PointF;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    .line 307
    :cond_0
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mNewDotSize:F

    .line 308
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotWidthDelta:F

    .line 309
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotHeightDelta:F

    if-eqz p2, :cond_1

    goto :goto_1

    .line 312
    :cond_1
    iget p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mOriginalDotSize:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p2, v0

    .line 313
    :goto_1
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mDotCenter:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    add-float/2addr p2, v2

    sub-float/2addr p2, v0

    .line 314
    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x1

    aget v1, v1, v2

    add-float/2addr p1, v1

    sub-float/2addr p1, v0

    .line 316
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    sub-float/2addr v0, p2

    .line 317
    iget p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    sub-float/2addr p2, p1

    neg-float p1, v0

    .line 319
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    neg-float p1, p2

    .line 320
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationYWhenDot:F

    return-void
.end method

.method updateFlyoutX(F)V
    .locals 1

    .line 299
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz v0, :cond_0

    .line 300
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleSize:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    :goto_0
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

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
