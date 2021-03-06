.class public Lcom/android/systemui/assist/AssistOrbView;
.super Landroid/widget/FrameLayout;
.source "AssistOrbView.java"


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mBaseMargin:I

.field private mCircleAnimationEndValue:F

.field private mCircleAnimator:Landroid/animation/ValueAnimator;

.field private final mCircleMinSize:I

.field private final mCircleRect:Landroid/graphics/Rect;

.field private mCircleSize:F

.field private mCircleUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mClipToOutline:Z

.field private mLogo:Landroid/widget/ImageView;

.field private final mMaxElevation:I

.field private mOffset:F

.field private mOffsetAnimator:Landroid/animation/ValueAnimator;

.field private mOffsetUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mOutlineAlpha:F

.field private final mOvershootInterpolator:Landroid/view/animation/Interpolator;

.field private final mStaticOffset:I

.field private final mStaticRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/assist/AssistOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/assist/AssistOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/assist/AssistOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/assist/AssistOrbView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 44
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleRect:Landroid/graphics/Rect;

    .line 45
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/assist/AssistOrbView;->mStaticRect:Landroid/graphics/Rect;

    .line 46
    new-instance p3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/assist/AssistOrbView;->mOvershootInterpolator:Landroid/view/animation/Interpolator;

    .line 59
    new-instance p3, Lcom/android/systemui/assist/AssistOrbView$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/assist/AssistOrbView$1;-><init>(Lcom/android/systemui/assist/AssistOrbView;)V

    iput-object p3, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 67
    new-instance p3, Lcom/android/systemui/assist/AssistOrbView$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/assist/AssistOrbView$2;-><init>(Lcom/android/systemui/assist/AssistOrbView;)V

    iput-object p3, p0, Lcom/android/systemui/assist/AssistOrbView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 73
    new-instance p3, Lcom/android/systemui/assist/AssistOrbView$3;

    invoke-direct {p3, p0}, Lcom/android/systemui/assist/AssistOrbView$3;-><init>(Lcom/android/systemui/assist/AssistOrbView;)V

    iput-object p3, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 98
    new-instance p3, Lcom/android/systemui/assist/AssistOrbView$4;

    invoke-direct {p3, p0}, Lcom/android/systemui/assist/AssistOrbView$4;-><init>(Lcom/android/systemui/assist/AssistOrbView;)V

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p3, 0x0

    .line 109
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/systemui/R$dimen;->assist_orb_size:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleMinSize:I

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/systemui/R$dimen;->assist_orb_base_margin:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/assist/AssistOrbView;->mBaseMargin:I

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/systemui/R$dimen;->assist_orb_travel_distance:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/assist/AssistOrbView;->mStaticOffset:I

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/systemui/R$dimen;->assist_orb_elevation:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/assist/AssistOrbView;->mMaxElevation:I

    const/4 p1, 0x1

    .line 118
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$color;->assist_orb_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/assist/AssistOrbView;F)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistOrbView;->applyCircleSize(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/assist/AssistOrbView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbView;->updateElevation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/assist/AssistOrbView;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOvershootInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/assist/AssistOrbView;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/android/systemui/assist/AssistOrbView;->mStaticOffset:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/assist/AssistOrbView;FJJLandroid/view/animation/Interpolator;)V
    .locals 0

    .line 38
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/assist/AssistOrbView;->animateOffset(FJJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/assist/AssistOrbView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/assist/AssistOrbView;F)F
    .locals 0

    .line 38
    iput p1, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffset:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/assist/AssistOrbView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbView;->updateLayout()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/assist/AssistOrbView;)F
    .locals 0

    .line 38
    iget p0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleSize:F

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/assist/AssistOrbView;)Landroid/graphics/Rect;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/assist/AssistOrbView;)F
    .locals 0

    .line 38
    iget p0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOutlineAlpha:F

    return p0
.end method

.method static synthetic access$802(Lcom/android/systemui/assist/AssistOrbView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/assist/AssistOrbView;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleMinSize:I

    return p0
.end method

.method private animateOffset(FJJLandroid/view/animation/Interpolator;)V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 197
    iget v2, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffset:F

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 198
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 199
    iget-object p1, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/assist/AssistOrbView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistOrbView$5;-><init>(Lcom/android/systemui/assist/AssistOrbView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 205
    iget-object p1, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 206
    iget-object p1, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 207
    iget-object p1, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 208
    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private applyCircleSize(F)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleSize:F

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbView;->updateLayout()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private updateCircleRect()V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffset:F

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/assist/AssistOrbView;->updateCircleRect(Landroid/graphics/Rect;FZ)V

    return-void
.end method

.method private updateCircleRect(Landroid/graphics/Rect;FZ)V
    .locals 3

    if-eqz p3, :cond_0

    .line 246
    iget p3, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleMinSize:I

    int-to-float p3, p3

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleSize:F

    .line 247
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p3

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 248
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p3, v2

    sub-float/2addr v1, v2

    iget p0, p0, Lcom/android/systemui/assist/AssistOrbView;->mBaseMargin:I

    int-to-float p0, p0

    sub-float/2addr v1, p0

    sub-float/2addr v1, p2

    float-to-int p0, v1

    int-to-float p2, v0

    add-float/2addr p2, p3

    float-to-int p2, p2

    int-to-float v1, p0

    add-float/2addr v1, p3

    float-to-int p3, v1

    .line 249
    invoke-virtual {p1, v0, p0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private updateClipping()V
    .locals 2

    .line 220
    iget v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleSize:F

    iget v1, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleMinSize:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 221
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistOrbView;->mClipToOutline:Z

    if-eq v0, v1, :cond_1

    .line 222
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 223
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mClipToOutline:Z

    :cond_1
    return-void
.end method

.method private updateElevation()V
    .locals 3

    .line 175
    iget v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mStaticOffset:I

    int-to-float v1, v0

    iget v2, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffset:F

    sub-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/4 v0, 0x0

    .line 176
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    .line 177
    iget v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mMaxElevation:I

    int-to-float v0, v0

    mul-float/2addr v1, v0

    .line 178
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setElevation(F)V

    return-void
.end method

.method private updateLayout()V
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbView;->updateCircleRect()V

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbView;->updateLogo()V

    .line 214
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 215
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbView;->updateClipping()V

    return-void
.end method

.method private updateLogo()V
    .locals 6

    .line 228
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/assist/AssistOrbView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 229
    iget-object v2, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    int-to-float v2, v3

    div-float/2addr v2, v1

    iget-object v3, p0, Lcom/android/systemui/assist/AssistOrbView;->mLogo:Landroid/widget/ImageView;

    .line 230
    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleMinSize:I

    int-to-float v3, v3

    const/high16 v4, 0x40e00000    # 7.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 231
    iget v3, p0, Lcom/android/systemui/assist/AssistOrbView;->mStaticOffset:I

    int-to-float v4, v3

    iget v5, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffset:F

    sub-float/2addr v4, v5

    int-to-float v5, v3

    div-float/2addr v4, v5

    int-to-float v3, v3

    mul-float/2addr v3, v4

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    const/4 v1, 0x0

    .line 234
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 235
    iget-object v3, p0, Lcom/android/systemui/assist/AssistOrbView;->mLogo:Landroid/widget/ImageView;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 236
    iget-object v1, p0, Lcom/android/systemui/assist/AssistOrbView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 237
    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public animateCircleSize(FJJLandroid/view/animation/Interpolator;)V
    .locals 3

    .line 153
    iget v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimationEndValue:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 159
    iget v2, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleSize:F

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    .line 160
    iget-object v1, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistOrbView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 163
    iget-object p6, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p6, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 164
    iget-object p2, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p4, p5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 165
    iget-object p2, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 166
    iput p1, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimationEndValue:F

    return-void
.end method

.method public getLogo()Landroid/widget/ImageView;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbView;->mLogo:Landroid/widget/ImageView;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 128
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistOrbView;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 139
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 140
    sget v0, Lcom/android/systemui/R$id;->search_logo:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mLogo:Landroid/widget/ImageView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 145
    iget-object p2, p0, Lcom/android/systemui/assist/AssistOrbView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    iget-object p4, p0, Lcom/android/systemui/assist/AssistOrbView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p5, p3, p4}, Landroid/widget/ImageView;->layout(IIII)V

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/android/systemui/assist/AssistOrbView;->mStaticRect:Landroid/graphics/Rect;

    iget p2, p0, Lcom/android/systemui/assist/AssistOrbView;->mStaticOffset:I

    int-to-float p2, p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/assist/AssistOrbView;->updateCircleRect(Landroid/graphics/Rect;FZ)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 269
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mClipToOutline:Z

    .line 270
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 271
    iput v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOutlineAlpha:F

    return-void
.end method

.method public startEnterAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 258
    invoke-direct {p0, v0}, Lcom/android/systemui/assist/AssistOrbView;->applyCircleSize(F)V

    .line 259
    new-instance v0, Lcom/android/systemui/assist/AssistOrbView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistOrbView$6;-><init>(Lcom/android/systemui/assist/AssistOrbView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startExitAnimation(J)V
    .locals 8

    .line 253
    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    move-object v0, p0

    move-wide v4, p1

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/assist/AssistOrbView;->animateCircleSize(FJJLandroid/view/animation/Interpolator;)V

    .line 254
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/assist/AssistOrbView;->animateOffset(FJJLandroid/view/animation/Interpolator;)V

    return-void
.end method
