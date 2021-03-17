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

.field private mBackground:Landroid/view/View;

.field private mBackgroundBottom:I

.field private mBackgroundVisible:Z

.field private mContentPadding:I

.field private mDragHandle:Landroid/view/View;

.field private mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private mHeightOverride:I

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

    .line 42
    new-instance v0, Lcom/android/systemui/qs/QSContainerImpl$1;

    const-string v1, "backgroundBottom"

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSContainerImpl$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/QSContainerImpl;->BACKGROUND_BOTTOM:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 54
    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const v1, 0x44bb8000    # 1500.0f

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    sput-object v0, Lcom/android/systemui/qs/QSContainerImpl;->BACKGROUND_SPRING:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundBottom:I

    .line 58
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    .line 71
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPadding:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSContainerImpl;)F
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getBackgroundBottom()F

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSContainerImpl;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setBackgroundBottom(I)V

    return-void
.end method

.method private getBackgroundBottom()F
    .locals 2

    .line 107
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundBottom:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 108
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    int-to-float p0, v0

    return p0
.end method

.method private getDisplayHeight()I
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 307
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method private synthetic lambda$onFinishInflate$0(Ljava/lang/Boolean;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeaderQsPanel()Lcom/android/systemui/qs/QuickQSPanel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mAnimateBottomOnNextLayout:Z

    :cond_0
    return-void
.end method

.method private setBackgroundBottom(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundBottom:I

    .line 103
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBottom(I)V

    return-void
.end method

.method private updateBackgroundBottom(IZ)V
    .locals 3

    .line 237
    invoke-static {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    .line 238
    sget-object v1, Lcom/android/systemui/qs/QSContainerImpl;->BACKGROUND_BOTTOM:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->isPropertyAnimating(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    .line 245
    invoke-virtual {v1, p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    goto :goto_1

    .line 242
    :cond_1
    :goto_0
    invoke-virtual {v1, p0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {v1, p0, p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    int-to-float p0, p1

    .line 243
    sget-object p1, Lcom/android/systemui/qs/QSContainerImpl;->BACKGROUND_SPRING:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    :goto_1
    return-void
.end method

.method private updateBackgroundVisibility()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundVisible:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x8

    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updatePaddingsAndMargins(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V
    .locals 6

    const/4 v0, 0x0

    .line 274
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 275
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 276
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 280
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 281
    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSideMargins:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 282
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 283
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    if-ne v1, v2, :cond_1

    .line 285
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPadding:I

    invoke-virtual {p1, v1, v1}, Lcom/android/systemui/qs/QSPanelController;->setContentMargins(II)V

    .line 286
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanelController;->getVisualSideMargins()Landroid/util/Pair;

    move-result-object v1

    .line 288
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setContentPaddings(II)V

    goto :goto_1

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    if-ne v1, v2, :cond_2

    .line 292
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPadding:I

    invoke-virtual {p2, v1, v1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->setContentMargins(II)V

    goto :goto_1

    .line 294
    :cond_2
    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPadding:I

    .line 296
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPadding:I

    .line 298
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 294
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method calculateContainerBottom()I
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

    .line 263
    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 261
    invoke-virtual {v2}, Lcom/android/systemui/qs/NonInterceptingScrollView;->getScrollRange()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 262
    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v1, v0

    .line 260
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 263
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    :goto_1
    return p0
.end method

.method protected calculateContainerHeight()I
    .locals 3

    .line 251
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 252
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    goto :goto_1

    .line 254
    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 253
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 254
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

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

    .line 184
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    if-ne p1, p2, :cond_1

    return-void

    .line 185
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateBackgroundVisibility()V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    if-eq p1, v0, :cond_0

    .line 170
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 116
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 80
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 81
    sget v0, Lcom/android/systemui/R$id;->expanded_qs_scroll_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/NonInterceptingScrollView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 82
    sget v0, Lcom/android/systemui/R$id;->qs_detail:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    .line 83
    sget v0, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 84
    sget v0, Lcom/android/systemui/R$id;->qs_customize:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 85
    sget v0, Lcom/android/systemui/R$id;->qs_drag_handle_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDragHandle:Landroid/view/View;

    .line 86
    sget v0, Lcom/android/systemui/R$id;->quick_settings_background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeaderQsPanel()Lcom/android/systemui/qs/QuickQSPanel;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSContainerImpl-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSContainerImpl-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSContainerImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V

    const/4 v0, 0x2

    .line 92
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 177
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 178
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mAnimateBottomOnNextLayout:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion(Z)V

    const/4 p1, 0x0

    .line 179
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mAnimateBottomOnNextLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 138
    iget-object p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {p2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplayHeight()I

    move-result v0

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v0, v1

    .line 143
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 145
    iget v1, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 147
    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p1, v1, v2}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 149
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    const/high16 v4, -0x80000000

    .line 150
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 149
    invoke-virtual {v3, v2, v0}, Landroid/widget/ScrollView;->measure(II)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v1

    .line 152
    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p2

    iget-object p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 153
    invoke-virtual {p2}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result p2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p2

    add-int/2addr v1, p2

    const/high16 p2, 0x40000000    # 2.0f

    .line 154
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 155
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 154
    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplayHeight()I

    move-result p0

    invoke-static {p0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 158
    invoke-virtual {v0, p1, p0}, Landroid/widget/LinearLayout;->measure(II)V

    return-void
.end method

.method onMediaVisibilityChanged(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mAnimateBottomOnNextLayout:Z

    return-void
.end method

.method public performClick()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setBackgroundVisible(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundVisible:Z

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateBackgroundVisibility()V

    return-void
.end method

.method public setExpansion(F)V
    .locals 2

    .line 267
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDragHandle:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0

    .line 217
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void
.end method

.method public updateExpansion()V
    .locals 1

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion(Z)V

    return-void
.end method

.method public updateExpansion(Z)V
    .locals 3

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->calculateContainerHeight()I

    move-result v0

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->calculateContainerBottom()I

    move-result v1

    .line 228
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setBottom(I)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setBottom(I)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDragHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, v1, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getTop()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTop(I)V

    .line 233
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/qs/QSContainerImpl;->updateBackgroundBottom(IZ)V

    return-void
.end method

.method updateResources(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 196
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105023e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 198
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_side_paddings:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSideMargins:I

    .line 201
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_shade_content_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 203
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPadding:I

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 204
    :goto_0
    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPadding:I

    if-eqz v1, :cond_1

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSContainerImpl;->updatePaddingsAndMargins(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V

    :cond_1
    return-void
.end method
