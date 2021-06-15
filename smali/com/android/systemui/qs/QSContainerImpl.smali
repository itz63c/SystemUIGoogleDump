.class public Lcom/android/systemui/qs/QSContainerImpl;
.super Landroid/widget/FrameLayout;
.source "QSContainerImpl.java"


# static fields
.field private static final BACKGROUND_BOTTOM:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/systemui/qs/QSContainerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final BACKGROUND_SPRING:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;


# instance fields
.field private mAnimateBottomOnNextLayout:Z

.field private mBackgroundBottom:I

.field private mClippingEnabled:Z

.field private mContentPadding:I

.field private mFancyClippingBottom:I

.field private final mFancyClippingPath:Landroid/graphics/Path;

.field private final mFancyClippingRadii:[F

.field private mFancyClippingTop:I

.field private mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private mHeightOverride:I

.field private mNavBarInset:I

.field private mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

.field private mQSDetail:Landroid/view/View;

.field private mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

.field private mQsDisabled:Z

.field private mQsExpansion:F

.field private mSideMargins:I

.field private final mSizePoint:Landroid/graphics/Point;


# direct methods
.method public static synthetic $r8$lambda$vk7DttMsGmBr76pkZSReKf_PsXQ(Lcom/android/systemui/qs/QSContainerImpl;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->lambda$onFinishInflate$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lcom/android/systemui/qs/QSContainerImpl$1;

    const-string v1, "backgroundBottom"

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSContainerImpl$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/QSContainerImpl;->BACKGROUND_BOTTOM:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 56
    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const v1, 0x44bb8000    # 1500.0f

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    sput-object v0, Lcom/android/systemui/qs/QSContainerImpl;->BACKGROUND_SPRING:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 61
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRadii:[F

    .line 62
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingPath:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundBottom:I

    const/4 p2, -0x1

    .line 64
    iput p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    .line 73
    iput p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPadding:I

    .line 75
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNavBarInset:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSContainerImpl;)F
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getBackgroundBottom()F

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSContainerImpl;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setBackgroundBottom(I)V

    return-void
.end method

.method private getBackgroundBottom()F
    .locals 0

    .line 113
    iget p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundBottom:I

    int-to-float p0, p0

    return p0
.end method

.method private getDisplayHeight()I
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_0

    .line 310
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 312
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method private synthetic lambda$onFinishInflate$0(Ljava/lang/Boolean;)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeaderQsPanel()Lcom/android/systemui/qs/QuickQSPanel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mAnimateBottomOnNextLayout:Z

    :cond_0
    return-void
.end method

.method private setBackgroundBottom(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundBottom:I

    return-void
.end method

.method private updateBackgroundBottom(IZ)V
    .locals 3

    .line 244
    invoke-static {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    .line 245
    sget-object v1, Lcom/android/systemui/qs/QSContainerImpl;->BACKGROUND_BOTTOM:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->isPropertyAnimating(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    .line 252
    invoke-virtual {v1, p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    goto :goto_1

    .line 249
    :cond_1
    :goto_0
    invoke-virtual {v1, p0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {v1, p0, p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    int-to-float p0, p1

    .line 250
    sget-object p1, Lcom/android/systemui/qs/QSContainerImpl;->BACKGROUND_SPRING:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    :goto_1
    return-void
.end method

.method private updateClippingPath()V
    .locals 8

    .line 346
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 347
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mClippingEnabled:Z

    if-nez v0, :cond_0

    .line 348
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingTop:I

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingBottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRadii:[F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 354
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private updatePaddingsAndMargins(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V
    .locals 5

    const/4 p2, 0x0

    .line 281
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 282
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 287
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 288
    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSideMargins:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 289
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 290
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    if-ne v0, v1, :cond_1

    .line 292
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPadding:I

    invoke-virtual {p1, v0, v0}, Lcom/android/systemui/qs/QSPanelController;->setContentMargins(II)V

    .line 295
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSideMargins:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSPanelController;->setPageMargin(I)V

    goto :goto_1

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 299
    :cond_2
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPadding:I

    .line 301
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPadding:I

    .line 303
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 299
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method calculateContainerBottom()I
    .locals 3

    .line 265
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 266
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    goto :goto_1

    .line 270
    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 268
    invoke-virtual {v2}, Lcom/android/systemui/qs/NonInterceptingScrollView;->getScrollRange()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 269
    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v1, v0

    .line 267
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 270
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    :goto_1
    return p0
.end method

.method protected calculateContainerHeight()I
    .locals 3

    .line 258
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 259
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    goto :goto_1

    .line 261
    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 260
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 261
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    :goto_1
    return p0
.end method

.method public disable(IIZ)V
    .locals 0

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 196
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    if-ne p1, p2, :cond_1

    return-void

    .line 197
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 169
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 171
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    if-eq p1, v0, :cond_0

    .line 181
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 131
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNavBarInset:I

    .line 132
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 133
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 134
    invoke-virtual {v2}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 135
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getPaddingEnd()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNavBarInset:I

    .line 132
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ScrollView;->setPaddingRelative(IIII)V

    .line 138
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 119
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 84
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 85
    sget v0, Lcom/android/systemui/R$id;->expanded_qs_scroll_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/NonInterceptingScrollView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 86
    sget v0, Lcom/android/systemui/R$id;->qs_detail:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    .line 87
    sget v0, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 88
    sget v0, Lcom/android/systemui/R$id;->qs_customize:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeaderQsPanel()Lcom/android/systemui/qs/QuickQSPanel;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSContainerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSContainerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSContainerImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V

    const/4 v0, 0x2

    .line 94
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 188
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 189
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mAnimateBottomOnNextLayout:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion(Z)V

    const/4 p1, 0x0

    .line 190
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mAnimateBottomOnNextLayout:Z

    .line 191
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateClippingPath()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 145
    iget-object p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {p2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplayHeight()I

    move-result v0

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v0, v1

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 149
    iget v1, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 151
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p1, v1, p2}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p2

    .line 153
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    const/high16 v3, -0x80000000

    .line 154
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 153
    invoke-virtual {v2, p2, v0}, Landroid/widget/ScrollView;->measure(II)V

    .line 155
    iget-object p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {p2}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, v1

    const/high16 v0, 0x40000000    # 2.0f

    .line 156
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplayHeight()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 156
    invoke-super {p0, p2, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 160
    iget-object p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplayHeight()I

    move-result p0

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 160
    invoke-virtual {p2, p1, p0}, Landroid/widget/LinearLayout;->measure(II)V

    return-void
.end method

.method onMediaVisibilityChanged(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mAnimateBottomOnNextLayout:Z

    return-void
.end method

.method public performClick()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setExpansion(F)V
    .locals 2

    .line 274
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    .line 275
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/NonInterceptingScrollView;->setScrollingEnabled(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void
.end method

.method public setFancyClipping(IIIZ)V
    .locals 4

    .line 320
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRadii:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float p3, p3

    cmpl-float v2, v2, p3

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 321
    aput p3, v0, v1

    .line 322
    aput p3, v0, v3

    const/4 v1, 0x2

    .line 323
    aput p3, v0, v1

    const/4 v1, 0x3

    .line 324
    aput p3, v0, v1

    move v1, v3

    .line 327
    :cond_0
    iget p3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingTop:I

    if-eq p3, p1, :cond_1

    .line 328
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingTop:I

    move v1, v3

    .line 331
    :cond_1
    iget p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingBottom:I

    if-eq p1, p2, :cond_2

    .line 332
    iput p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingBottom:I

    move v1, v3

    .line 335
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mClippingEnabled:Z

    if-eq p1, p4, :cond_3

    .line 336
    iput-boolean p4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mClippingEnabled:Z

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    if-eqz v3, :cond_4

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateClippingPath()V

    :cond_4
    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0

    .line 225
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void
.end method

.method public updateExpansion()V
    .locals 1

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion(Z)V

    return-void
.end method

.method public updateExpansion(Z)V
    .locals 4

    .line 234
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->calculateContainerHeight()I

    move-result v0

    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->calculateContainerBottom()I

    move-result v1

    .line 236
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setBottom(I)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setBottom(I)V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 239
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    add-int/2addr v3, v1

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBottom(I)V

    .line 240
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/qs/QSContainerImpl;->updateBackgroundBottom(IZ)V

    return-void
.end method

.method updateResources(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 203
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 205
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_side_paddings:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 208
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->notification_shade_content_margin_horizontal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 210
    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPadding:I

    if-ne v1, v2, :cond_1

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSideMargins:I

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 211
    :goto_1
    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPadding:I

    .line 212
    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSideMargins:I

    if-eqz v2, :cond_2

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSContainerImpl;->updatePaddingsAndMargins(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V

    :cond_2
    return-void
.end method
