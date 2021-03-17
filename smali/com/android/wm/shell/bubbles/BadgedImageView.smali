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

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BadgedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/bubbles/BadgedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/bubbles/BadgedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    sget-object p1, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->FLYOUT_VISIBLE:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    .line 70
    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotSuppressionFlags:Ljava/util/EnumSet;

    const/4 p1, 0x0

    .line 72
    iput p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotScale:F

    .line 73
    iput p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mAnimatingToDotScale:F

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotIsAnimating:Z

    .line 85
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    .line 102
    new-instance p1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-direct {p1}, Lcom/android/launcher3/icons/DotRenderer$DrawParams;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDrawParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    const/4 p1, 0x1

    .line 104
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 105
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method private animateDotScale(FLjava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotIsAnimating:Z

    .line 279
    iget v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mAnimatingToDotScale:F

    cmpl-float v1, v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->shouldDrawDot()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 284
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mAnimatingToDotScale:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 290
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 291
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xc8

    .line 292
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 293
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/android/wm/shell/bubbles/BadgedImageView-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/bubbles/BadgedImageView-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BadgedImageView;Z)V

    .line 294
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/android/wm/shell/bubbles/BadgedImageView-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/wm/shell/bubbles/BadgedImageView-$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BadgedImageView;ZLjava/lang/Runnable;)V

    .line 298
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 304
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 280
    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotIsAnimating:Z

    return-void
.end method

.method private synthetic lambda$animateDotBadgePositions$0()V
    .locals 2

    .line 248
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 249
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->animateDotScale(FLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$animateDotScale$1(ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 295
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    .line 297
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

    .line 299
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->setDotScale(F)V

    const/4 p1, 0x0

    .line 300
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotIsAnimating:Z

    if-eqz p2, :cond_1

    .line 302
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private shouldDrawDot()Z
    .locals 1

    .line 269
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

    .line 163
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotSuppressionFlags:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
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

    .line 244
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mOnLeft:Z

    .line 246
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->getDotOnLeft()Z

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->shouldDrawDot()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 247
    new-instance v0, Lcom/android/wm/shell/bubbles/BadgedImageView-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/BadgedImageView-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BadgedImageView;)V

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->animateDotScale(FLjava/lang/Runnable;)V

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->showBadge()V

    return-void
.end method

.method drawDot(Landroid/graphics/Path;)V
    .locals 3

    .line 194
    new-instance v0, Lcom/android/launcher3/icons/DotRenderer;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleBitmapSize()I

    move-result v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, p1, v2}, Lcom/android/launcher3/icons/DotRenderer;-><init>(ILandroid/graphics/Path;I)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    .line 196
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method getDotCenter()[F
    .locals 4

    .line 219
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mOnLeft:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/DotRenderer;->getLeftDotPosition()[F

    move-result-object v0

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/DotRenderer;->getRightDotPosition()[F

    move-result-object v0

    .line 224
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 225
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v3, v0, v2

    mul-float/2addr v1, v3

    .line 226
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

    .line 239
    iget p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotColor:I

    return p0
.end method

.method getDotOnLeft()Z
    .locals 0

    .line 211
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mOnLeft:Z

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 235
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

    .line 333
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public hideDotAndBadge(Z)V
    .locals 1

    .line 124
    sget-object v0, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->BEHIND_STACK:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->addDotSuppressionFlag(Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;)V

    .line 125
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mOnLeft:Z

    .line 126
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->hideBadge()V

    return-void
.end method

.method public initialize(Lcom/android/wm/shell/bubbles/BubblePositioner;)V
    .locals 3

    .line 109
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 112
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1040234

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    .line 113
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

    .line 145
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 147
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->shouldDrawDot()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 153
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDrawParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotColor:I

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->color:I

    .line 154
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    iput-object v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    .line 155
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mOnLeft:Z

    iput-boolean v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    .line 156
    iget v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotScale:F

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    .line 158
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/icons/DotRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V

    return-void
.end method

.method removeDotSuppressionFlag(Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotSuppressionFlags:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
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

    .line 259
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mOnLeft:Z

    .line 260
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 261
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->showBadge()V

    return-void
.end method

.method setDotScale(F)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotScale:F

    .line 204
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setRenderedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 2

    .line 133
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 134
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotSuppressionFlags:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->BEHIND_STACK:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->hideBadge()V

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->showBadge()V

    .line 139
    :goto_0
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getDotColor()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotColor:I

    .line 140
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getDotPath()Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->drawDot(Landroid/graphics/Path;)V

    return-void
.end method

.method showBadge()V
    .locals 7

    .line 308
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getAppBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 313
    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 314
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 315
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 317
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 318
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 319
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const v4, 0x3ee353f8    # 0.444f

    int-to-float v5, v3

    mul-float/2addr v5, v4

    float-to-int v4, v5

    .line 321
    iget-boolean v5, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mOnLeft:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    sub-int v6, v3, v4

    .line 322
    invoke-virtual {v0, v5, v6, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_1
    sub-int v4, v3, v4

    .line 324
    invoke-virtual {v0, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 327
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    .line 328
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 329
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public showDotAndBadge(Z)V
    .locals 1

    .line 118
    sget-object v0, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->BEHIND_STACK:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->removeDotSuppressionFlag(Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->animateDotBadgePositions(Z)V

    return-void
.end method

.method updateDotVisibility(Z)V
    .locals 1

    .line 179
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

    .line 182
    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->animateDotScale(FLjava/lang/Runnable;)V

    goto :goto_1

    .line 184
    :cond_1
    iput v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotScale:F

    .line 185
    iput v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mAnimatingToDotScale:F

    .line 186
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :goto_1
    return-void
.end method
