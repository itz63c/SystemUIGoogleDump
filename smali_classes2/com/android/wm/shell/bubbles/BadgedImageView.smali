.class public Lcom/android/wm/shell/bubbles/BadgedImageView;
.super Landroid/widget/ImageView;
.source "BadgedImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;
    }
.end annotation


# instance fields
.field private mAnimatingToDotScale:F

.field private mBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

.field private mDotColor:I

.field private mDotIsAnimating:Z

.field private mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

.field private mDotScale:F

.field private final mDotSuppressionFlags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

.field private mOnLeft:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field private mTempBounds:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$N6KHL4ZJBhm9rHWCHgyu_ws3UOA(Lcom/android/wm/shell/bubbles/BadgedImageView;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BadgedImageView;->lambda$animateDotScale$1(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ojUBGj1BG046sFWMgq39STntRq4(Lcom/android/wm/shell/bubbles/BadgedImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->lambda$animateDotBadgePositions$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$s2TkTq4kjtBRDAlbGP_L9UvDq9Y(Lcom/android/wm/shell/bubbles/BadgedImageView;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BadgedImageView;->lambda$animateDotScale$2(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BadgedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/bubbles/BadgedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/bubbles/BadgedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    sget-object p1, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->FLYOUT_VISIBLE:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    .line 71
    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotSuppressionFlags:Ljava/util/EnumSet;

    const/4 p1, 0x0

    .line 73
    iput p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotScale:F

    .line 74
    iput p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mAnimatingToDotScale:F

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotIsAnimating:Z

    .line 85
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mPaint:Landroid/graphics/Paint;

    .line 86
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    .line 103
    new-instance p1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-direct {p1}, Lcom/android/launcher3/icons/DotRenderer$DrawParams;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDrawParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    .line 105
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 106
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method private animateDotScale(FLjava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x1

    .line 277
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotIsAnimating:Z

    .line 280
    iget v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mAnimatingToDotScale:F

    cmpl-float v1, v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->shouldDrawDot()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 285
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mAnimatingToDotScale:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 291
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 292
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xc8

    .line 293
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 294
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/android/wm/shell/bubbles/BadgedImageView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/bubbles/BadgedImageView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BadgedImageView;Z)V

    .line 295
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/android/wm/shell/bubbles/BadgedImageView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/wm/shell/bubbles/BadgedImageView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BadgedImageView;ZLjava/lang/Runnable;)V

    .line 299
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 305
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 281
    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotIsAnimating:Z

    return-void
.end method

.method private synthetic lambda$animateDotBadgePositions$0()V
    .locals 2

    .line 249
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 250
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->animateDotScale(FLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$animateDotScale$1(ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 296
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    .line 298
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/BadgedImageView;->setDotScale(F)V

    return-void
.end method

.method private synthetic lambda$animateDotScale$2(ZLjava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 300
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->setDotScale(F)V

    const/4 p1, 0x0

    .line 301
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotIsAnimating:Z

    if-eqz p2, :cond_1

    .line 303
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private shouldDrawDot()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotIsAnimating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->showDot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotSuppressionFlags:Ljava/util/EnumSet;

    invoke-virtual {p0}, Ljava/util/EnumSet;->isEmpty()Z

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


# virtual methods
.method addDotSuppressionFlag(Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotSuppressionFlags:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    sget-object v0, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->BEHIND_STACK:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->updateDotVisibility(Z)V

    :cond_1
    return-void
.end method

.method animateDotBadgePositions(Z)V
    .locals 1

    .line 245
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mOnLeft:Z

    .line 247
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->getDotOnLeft()Z

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->shouldDrawDot()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 248
    new-instance v0, Lcom/android/wm/shell/bubbles/BadgedImageView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/BadgedImageView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BadgedImageView;)V

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->animateDotScale(FLjava/lang/Runnable;)V

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->showBadge()V

    return-void
.end method

.method drawDot(Landroid/graphics/Path;)V
    .locals 3

    .line 195
    new-instance v0, Lcom/android/launcher3/icons/DotRenderer;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleBitmapSize()I

    move-result v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, p1, v2}, Lcom/android/launcher3/icons/DotRenderer;-><init>(ILandroid/graphics/Path;I)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    .line 197
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method getDotCenter()[F
    .locals 4

    .line 220
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mOnLeft:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/DotRenderer;->getLeftDotPosition()[F

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/DotRenderer;->getRightDotPosition()[F

    move-result-object v0

    .line 225
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 226
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v3, v0, v2

    mul-float/2addr v1, v3

    .line 227
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/4 v3, 0x1

    aget v0, v0, v3

    mul-float/2addr p0, v0

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v1, v0, v2

    aput p0, v0, v3

    return-object v0
.end method

.method getDotColor()I
    .locals 0

    .line 240
    iget p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotColor:I

    return p0
.end method

.method getDotOnLeft()Z
    .locals 0

    .line 212
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mOnLeft:Z

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method hideBadge()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public hideDotAndBadge(Z)V
    .locals 1

    .line 125
    sget-object v0, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->BEHIND_STACK:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->addDotSuppressionFlag(Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;)V

    .line 126
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mOnLeft:Z

    .line 127
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->hideBadge()V

    return-void
.end method

.method public initialize(Lcom/android/wm/shell/bubbles/BubblePositioner;)V
    .locals 3

    .line 110
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 113
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1040249

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    .line 114
    new-instance v0, Lcom/android/launcher3/icons/DotRenderer;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleBitmapSize()I

    move-result v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, p1, v2}, Lcom/android/launcher3/icons/DotRenderer;-><init>(ILandroid/graphics/Path;I)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 146
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 148
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->shouldDrawDot()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 154
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDrawParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotColor:I

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->color:I

    .line 155
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    iput-object v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    .line 156
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mOnLeft:Z

    iput-boolean v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    .line 157
    iget v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotScale:F

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    .line 159
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/icons/DotRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V

    return-void
.end method

.method removeDotSuppressionFlag(Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotSuppressionFlags:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    sget-object v0, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->BEHIND_STACK:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->updateDotVisibility(Z)V

    :cond_1
    return-void
.end method

.method setDotBadgeOnLeft(Z)V
    .locals 0

    .line 260
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mOnLeft:Z

    .line 261
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 262
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->showBadge()V

    return-void
.end method

.method setDotScale(F)V
    .locals 0

    .line 204
    iput p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotScale:F

    .line 205
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setRenderedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 2

    .line 134
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 135
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotSuppressionFlags:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->BEHIND_STACK:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->hideBadge()V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->showBadge()V

    .line 140
    :goto_0
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getDotColor()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotColor:I

    .line 141
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getDotPath()Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->drawDot(Landroid/graphics/Path;)V

    return-void
.end method

.method showBadge()V
    .locals 8

    .line 309
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getAppBadge()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 314
    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 315
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 316
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 318
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 319
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 320
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const v4, 0x3ee353f8    # 0.444f

    int-to-float v5, v3

    mul-float/2addr v5, v4

    float-to-int v4, v5

    .line 322
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 323
    iget-boolean v6, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mOnLeft:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    sub-int v7, v3, v4

    .line 324
    invoke-virtual {v5, v6, v7, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    sub-int v4, v3, v4

    .line 326
    invoke-virtual {v5, v4, v4, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 328
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 329
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 330
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public showDotAndBadge(Z)V
    .locals 1

    .line 119
    sget-object v0, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->BEHIND_STACK:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->removeDotSuppressionFlag(Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->animateDotBadgePositions(Z)V

    return-void
.end method

.method updateDotVisibility(Z)V
    .locals 1

    .line 180
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->shouldDrawDot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 183
    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->animateDotScale(FLjava/lang/Runnable;)V

    goto :goto_1

    .line 185
    :cond_1
    iput v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotScale:F

    .line 186
    iput v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mAnimatingToDotScale:F

    .line 187
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :goto_1
    return-void
.end method
