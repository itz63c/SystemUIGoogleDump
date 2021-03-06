.class public Lcom/android/wm/shell/common/split/SplitLayout;
.super Ljava/lang/Object;
.source "SplitLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/common/split/SplitLayout$LayoutChangeListener;
    }
.end annotation


# instance fields
.field private final mBounds1:Landroid/graphics/Rect;

.field private final mBounds2:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mDividePosition:I

.field private final mDividerBounds:Landroid/graphics/Rect;

.field private final mDividerInsets:I

.field private final mDividerSize:I

.field private mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private final mDividerWindowWidth:I

.field private mInitialized:Z

.field private final mLayoutChangeListener:Lcom/android/wm/shell/common/split/SplitLayout$LayoutChangeListener;

.field private final mRootBounds:Landroid/graphics/Rect;

.field private final mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;


# direct methods
.method public static synthetic $r8$lambda$fanpTAUMcvNjWd7aXkZ-6RP-ugo(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->lambda$flingDividePosition$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitLayout$LayoutChangeListener;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 49
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    .line 50
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    .line 51
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    .line 63
    invoke-virtual {p2, p3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 64
    iput-object p4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mLayoutChangeListener:Lcom/android/wm/shell/common/split/SplitLayout$LayoutChangeListener;

    .line 65
    new-instance p4, Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-direct {p4, p1, v1, p3, p5}, Lcom/android/wm/shell/common/split/SplitWindowManager;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;)V

    iput-object p4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 68
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x1050126

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerWindowWidth:I

    .line 70
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x1050125

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    mul-int/lit8 p4, p4, 0x2

    sub-int/2addr p1, p4

    .line 72
    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 74
    iget-object p1, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 75
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getSnapAlgorithm(Landroid/content/res/Resources;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 76
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    return-void
.end method

.method private flingDividePosition(II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 231
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    .line 232
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 233
    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 234
    new-instance v0, Lcom/android/wm/shell/common/split/SplitLayout-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/split/SplitLayout-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 236
    new-instance v0, Lcom/android/wm/shell/common/split/SplitLayout$1;

    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/common/split/SplitLayout$1;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 247
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getSnapAlgorithm(Landroid/content/res/Resources;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 10

    .line 218
    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    move-result v0

    .line 219
    new-instance v9, Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 221
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 222
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    xor-int/lit8 v6, v0, 0x1

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    move v8, p0

    move-object v1, v9

    move-object v2, p1

    .line 226
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;I)V

    return-object v9
.end method

.method private static isLandscape(Landroid/graphics/Rect;)Z
    .locals 1

    .line 251
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$flingDividePosition$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 235
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateDivideBounds(I)V

    return-void
.end method

.method private updateBounds(I)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 130
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 131
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 132
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    .line 134
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 135
    iget v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerWindowWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 136
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 137
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    add-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    .line 140
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 141
    iget v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerWindowWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 142
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 143
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    add-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    return-void
.end method


# virtual methods
.method public findSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p0

    return-object p0
.end method

.method public getBounds1()Landroid/graphics/Rect;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getBounds2()Landroid/graphics/Rect;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    return-object p0
.end method

.method getDividePosition()I
    .locals 0

    .line 101
    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    return p0
.end method

.method public getDividerBounds()Landroid/graphics/Rect;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getDividerLeash()Landroid/view/SurfaceControl;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitWindowManager;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public init()V
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    .line 151
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/split/SplitWindowManager;->init(Lcom/android/wm/shell/common/split/SplitLayout;)V

    return-void
.end method

.method onDoubleTappedDivider()V
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mLayoutChangeListener:Lcom/android/wm/shell/common/split/SplitLayout$LayoutChangeListener;

    invoke-interface {p0}, Lcom/android/wm/shell/common/split/SplitLayout$LayoutChangeListener;->onDoubleTappedDivider()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    .line 158
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitWindowManager;->release()V

    return-void
.end method

.method public resetDividerPosition()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 181
    invoke-direct {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    return-void
.end method

.method setDividePosition(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 173
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    .line 174
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mLayoutChangeListener:Lcom/android/wm/shell/common/split/SplitLayout$LayoutChangeListener;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/common/split/SplitLayout$LayoutChangeListener;->onBoundsChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V

    .line 175
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setResizingSplits(Z)V

    return-void
.end method

.method public snapToTarget(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 4

    .line 189
    iget v0, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 199
    iget p2, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividePosition(II)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mLayoutChangeListener:Lcom/android/wm/shell/common/split/SplitLayout$LayoutChangeListener;

    invoke-interface {p1, v1}, Lcom/android/wm/shell/common/split/SplitLayout$LayoutChangeListener;->onSnappedToDismiss(Z)V

    .line 196
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setResizingSplits(Z)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mLayoutChangeListener:Lcom/android/wm/shell/common/split/SplitLayout$LayoutChangeListener;

    invoke-interface {p1, v2}, Lcom/android/wm/shell/common/split/SplitLayout$LayoutChangeListener;->onSnappedToDismiss(Z)V

    .line 192
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setResizingSplits(Z)V

    :goto_0
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)Z
    .locals 3

    .line 106
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 112
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 113
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 114
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getSnapAlgorithm(Landroid/content/res/Resources;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 115
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    .line 118
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    if-nez p1, :cond_1

    return v2

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->release()V

    .line 123
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    const/4 p0, 0x1

    return p0
.end method

.method updateDivideBounds(I)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    .line 167
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mLayoutChangeListener:Lcom/android/wm/shell/common/split/SplitLayout$LayoutChangeListener;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/common/split/SplitLayout$LayoutChangeListener;->onBoundsChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V

    .line 168
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setResizingSplits(Z)V

    return-void
.end method
