.class public Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;
.super Landroid/widget/FrameLayout;
.source "AccessibilityFloatingMenuView.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$OnDragEndListener;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

.field private mAlignment:I

.field final mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mDownX:I

.field private mDownY:I

.field final mDragAnimator:Landroid/animation/ValueAnimator;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mFadeOutValue:F

.field private mIconHeight:I

.field private mIconWidth:I

.field private mInset:I

.field private mIsDownInEnlargedTouchArea:Z

.field private mIsDragging:Z

.field private mIsFadeEffectEnabled:Z

.field private mIsShowing:Z

.field private final mLastConfiguration:Landroid/content/res/Configuration;

.field private final mListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mMargin:I

.field private mOnDragEndListener:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$OnDragEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPadding:I

.field private mPercentageY:F

.field private mRadius:F

.field private mRadiusType:I

.field private mRelativeToPointerDownX:I

.field private mRelativeToPointerDownY:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field mShapeType:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSizeType:I

.field private mSquareScaledTouchSlop:F

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mTemporaryShapeType:I

.field private final mUiHandler:Landroid/os/Handler;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$5bG5QODkB5kpCy3trp3wc4ipVMw(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->lambda$setSystemGestureExclusion$5(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9PMrfZKCe1NwpL_Ydg1je4jmS9Q(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OO8-Eh80oP92UCqzrbxmnHhLhdM(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->lambda$fadeIn$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$_SQB05kyLf5q4wtZT4Al47xHZgY(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->lambda$snapToLocation$4(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_ucrjau7jAa9cQIsI_WHsb7LczU(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->lambda$fadeOut$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$h9DeXJMA97srPL0SG475x8xw-JQ(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->lambda$setShapeType$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 186
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 192
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDragging:Z

    const/4 v1, 0x1

    .line 94
    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    .line 96
    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    .line 98
    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mShapeType:I

    .line 102
    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    const v2, 0x3f4ccccd    # 0.8f

    .line 116
    iput v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPercentageY:F

    .line 119
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mOnDragEndListener:Ljava/util/Optional;

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    .line 194
    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 195
    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->createDefaultLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 197
    new-instance p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    invoke-direct {p1, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->createUiHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mUiHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    new-array p2, p1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, p2, v0

    .line 200
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutValue:F

    aput v0, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3e8

    .line 201
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 202
    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, p1, [F

    .line 205
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDragAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    .line 206
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 207
    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 208
    new-instance p2, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 230
    new-instance p1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 232
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateDimensions()V

    .line 233
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->initListView()V

    .line 234
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateStrokeWith(II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)I
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->calculateCurrentAlignment()I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;III)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateRadiusWith(III)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)Ljava/util/Optional;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mOnDragEndListener:Ljava/util/Optional;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)F
    .locals 0

    .line 76
    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPercentageY:F

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;F)F
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPercentageY:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)F
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->calculateCurrentPercentageY()F

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;IF)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateLocationWith(IF)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateMarginsWith(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;II)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateInsetWith(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)Ljava/util/List;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    return-object p0
.end method

.method private calculateActualLayoutHeight()I
    .locals 2

    .line 827
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPadding:I

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIconHeight:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPadding:I

    add-int/2addr v0, p0

    return v0
.end method

.method private calculateCurrentAlignment()I
    .locals 2

    .line 817
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result p0

    const/4 v1, 0x0

    add-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x2

    if-lt v0, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private calculateCurrentPercentageY()F
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowY()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method private createDefaultLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 656
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x7e8

    const/16 v4, 0x8

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v0, 0x1030003

    .line 662
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const v0, 0x800033

    .line 663
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 664
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 665
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowY()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPercentageY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 666
    invoke-direct {p0, v6}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateAccessibilityTitle(Landroid/view/WindowManager$LayoutParams;)V

    return-object v6
.end method

.method private createRadii(FI)[F
    .locals 9

    const/4 p0, 0x7

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-nez p2, :cond_0

    new-array p2, v6, [F

    aput p1, p2, v5

    aput p1, p2, v4

    aput v8, p2, v7

    aput v8, p2, v3

    aput v8, p2, v2

    aput v8, p2, v1

    aput p1, p2, v0

    aput p1, p2, p0

    return-object p2

    :cond_0
    if-ne p2, v7, :cond_1

    new-array p2, v6, [F

    aput v8, p2, v5

    aput v8, p2, v4

    aput p1, p2, v7

    aput p1, p2, v3

    aput p1, p2, v2

    aput p1, p2, v1

    aput v8, p2, v0

    aput v8, p2, p0

    return-object p2

    :cond_1
    new-array p2, v6, [F

    aput p1, p2, v5

    aput p1, p2, v4

    aput p1, p2, v7

    aput p1, p2, v3

    aput p1, p2, v2

    aput p1, p2, v1

    aput p1, p2, v0

    aput p1, p2, p0

    return-object p2
.end method

.method private createUiHandler()Landroid/os/Handler;
    .locals 2

    .line 595
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "looper must not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/os/Looper;

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method private getLargeSizeResIdWith(I)I
    .locals 0

    const/4 p0, 0x1

    if-le p1, p0, :cond_0

    .line 844
    sget p0, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_large_multiple_radius:I

    goto :goto_0

    .line 845
    :cond_0
    sget p0, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_large_single_radius:I

    :goto_0
    return p0
.end method

.method private getLayoutHeight()I
    .locals 1

    .line 862
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxLayoutHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->calculateActualLayoutHeight()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getLayoutWidth()I
    .locals 1

    .line 858
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPadding:I

    mul-int/lit8 v0, v0, 0x2

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIconWidth:I

    add-int/2addr v0, p0

    return v0
.end method

.method private getMaxLayoutHeight()I
    .locals 1

    .line 854
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenHeight:I

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method private getMaxWindowX()I
    .locals 2

    .line 708
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenWidth:I

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private getMaxWindowY()I
    .locals 1

    .line 712
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenHeight:I

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowHeight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private getMenuGradientDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 720
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMenuLayerDrawable()Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method private getMenuLayerDrawable()Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;
    .locals 0

    .line 716
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;

    return-object p0
.end method

.method private getRadiusResId(II)I
    .locals 0

    if-nez p1, :cond_0

    .line 832
    invoke-direct {p0, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getSmallSizeResIdWith(I)I

    move-result p0

    goto :goto_0

    .line 833
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLargeSizeResIdWith(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getSmallSizeResIdWith(I)I
    .locals 0

    const/4 p0, 0x1

    if-le p1, p0, :cond_0

    .line 838
    sget p0, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_small_multiple_radius:I

    goto :goto_0

    .line 839
    :cond_0
    sget p0, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_small_single_radius:I

    :goto_0
    return p0
.end method

.method private getWindowHeight()I
    .locals 2

    .line 870
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenHeight:I

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutHeight()I

    move-result p0

    add-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getWindowWidth()I
    .locals 1

    .line 866
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private hasExceededTouchSlop(IIII)Z
    .locals 0

    sub-int/2addr p3, p1

    int-to-float p1, p3

    .line 575
    invoke-static {p1}, Landroid/util/MathUtils;->sq(F)F

    move-result p1

    sub-int/2addr p4, p2

    int-to-float p2, p4

    invoke-static {p2}, Landroid/util/MathUtils;->sq(F)F

    move-result p2

    add-float/2addr p1, p2

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSquareScaledTouchSlop:F

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initListView()V
    .locals 5

    .line 629
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->accessibility_floating_menu_background:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 630
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 631
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 634
    iget-object v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 635
    new-instance v2, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 637
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 638
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 639
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 640
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 641
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 642
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateListView()V

    .line 644
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private isMovingTowardsScreenEdge(III)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    if-gt p2, p3, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-le p3, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0
.end method

.method private synthetic lambda$fadeIn$2()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 493
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$fadeOut$3()V
    .locals 0

    .line 502
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 203
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$setShapeType$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 432
    invoke-direct {p0, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->onTouched(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setSystemGestureExclusion$5(Landroid/graphics/Rect;)V
    .locals 1

    .line 877
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsShowing:Z

    if-eqz v0, :cond_0

    .line 878
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 879
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 876
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$snapToLocation$4(IILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 693
    invoke-direct {p0, p3, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->onDragAnimationUpdate(Landroid/animation/ValueAnimator;II)V

    return-void
.end method

.method private onDragAnimationUpdate(Landroid/animation/ValueAnimator;II)V
    .locals 3

    .line 698
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 699
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    int-to-float p2, p2

    mul-float/2addr p2, p1

    add-float/2addr v2, p2

    float-to-int p2, v2

    .line 700
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    int-to-float p3, p3

    mul-float/2addr p1, p3

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 702
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 703
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 704
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private onTouched(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 544
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 545
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 547
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 548
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    add-int/2addr v3, v5

    .line 549
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {v4, v5, v5, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 551
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 552
    iput-boolean v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDownInEnlargedTouchArea:Z

    .line 555
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDownInEnlargedTouchArea:Z

    const/4 v5, 0x0

    if-nez v4, :cond_1

    return v5

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 561
    :cond_2
    iput-boolean v5, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDownInEnlargedTouchArea:Z

    .line 565
    :cond_3
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 566
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private setInset(II)V
    .locals 6

    .line 801
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMenuLayerDrawable()Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;

    move-result-object v0

    const/4 p0, 0x0

    .line 802
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 803
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result p0

    if-ne p0, p2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v2, p1

    move v4, p2

    .line 807
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    return-void
.end method

.method private setRadius(FI)V
    .locals 1

    .line 579
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMenuGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->createRadii(FI)[F

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-void
.end method

.method private setSystemGestureExclusion()V
    .locals 4

    .line 874
    new-instance v0, Landroid/graphics/Rect;

    .line 875
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 876
    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setupAccessibilityActions(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 506
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 507
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v2, Lcom/android/systemui/R$id;->action_move_top_left:I

    sget v3, Lcom/android/systemui/R$string;->accessibility_floating_button_action_move_top_left:I

    .line 509
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 511
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 513
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v2, Lcom/android/systemui/R$id;->action_move_top_right:I

    sget v3, Lcom/android/systemui/R$string;->accessibility_floating_button_action_move_top_right:I

    .line 515
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 517
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 519
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v2, Lcom/android/systemui/R$id;->action_move_bottom_left:I

    sget v3, Lcom/android/systemui/R$string;->accessibility_floating_button_action_move_bottom_left:I

    .line 521
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 523
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 525
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v2, Lcom/android/systemui/R$id;->action_move_bottom_right:I

    sget v3, Lcom/android/systemui/R$string;->accessibility_floating_button_action_move_bottom_right:I

    .line 527
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 529
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 531
    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mShapeType:I

    if-nez p0, :cond_0

    .line 532
    sget v1, Lcom/android/systemui/R$id;->action_move_to_edge_and_hide:I

    goto :goto_0

    .line 533
    :cond_0
    sget v1, Lcom/android/systemui/R$id;->action_move_out_edge_and_show:I

    :goto_0
    if-nez p0, :cond_1

    .line 535
    sget p0, Lcom/android/systemui/R$string;->accessibility_floating_button_action_move_to_edge_and_hide_to_half:I

    goto :goto_1

    .line 536
    :cond_1
    sget p0, Lcom/android/systemui/R$string;->accessibility_floating_button_action_move_out_edge_and_show:I

    .line 537
    :goto_1
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 538
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 539
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method private updateAccessibilityTitle(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 796
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10400d8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method private updateColor()V
    .locals 2

    .line 759
    sget v0, Lcom/android/systemui/R$color;->accessibility_floating_menu_background:I

    .line 760
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMenuGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method private updateDimensions()V
    .locals 3

    .line 599
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 601
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenWidth:I

    .line 602
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenHeight:I

    .line 603
    sget v1, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_margin:I

    .line 604
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    .line 605
    sget v1, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_padding:I

    .line 606
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPadding:I

    .line 607
    sget v1, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_stroke_inset:I

    .line 608
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mInset:I

    .line 611
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Landroid/util/MathUtils;->sq(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSquareScaledTouchSlop:F

    return-void
.end method

.method private updateIconSizeWith(I)V
    .locals 1

    .line 615
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez p1, :cond_0

    .line 618
    sget p1, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_small_width_height:I

    goto :goto_0

    .line 619
    :cond_0
    sget p1, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_large_width_height:I

    .line 620
    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIconWidth:I

    .line 621
    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIconHeight:I

    .line 623
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;->setIconWidthHeight(I)V

    .line 624
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateInsetWith(II)V
    .locals 3

    and-int/lit8 p1, p1, 0x30

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-ne p1, v2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 789
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mInset:I

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-nez p2, :cond_2

    move v2, p1

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-ne p2, v0, :cond_3

    move v1, p1

    .line 792
    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setInset(II)V

    return-void
.end method

.method private updateListView()V
    .locals 2

    .line 649
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 650
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 652
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    invoke-direct {p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateMarginsWith(I)V

    return-void
.end method

.method private updateLocationWith(IF)V
    .locals 2

    .line 727
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 728
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowY()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 729
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateMarginsWith(I)V
    .locals 4

    .line 739
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    .line 740
    :cond_0
    iget v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    :goto_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    goto :goto_1

    .line 741
    :cond_1
    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    .line 743
    :goto_1
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-ne v2, p1, :cond_2

    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-ne v1, p1, :cond_2

    return-void

    .line 748
    :cond_2
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    invoke-virtual {v0, v2, p1, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 749
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateOffsetWith(II)V
    .locals 2

    .line 733
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 735
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    neg-float v0, v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private updateRadiusWith(III)V
    .locals 1

    .line 780
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1, p3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getRadiusResId(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadius:F

    .line 781
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setRadius(FI)V

    return-void
.end method

.method private updateScrollModeWith(Z)V
    .locals 0

    .line 753
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    return-void
.end method

.method private updateStrokeWith(II)V
    .locals 2

    .line 764
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateInsetWith(II)V

    and-int/lit8 p1, p1, 0x30

    const/4 p2, 0x0

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    .line 769
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 770
    sget v1, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_stroke_width:I

    .line 771
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz p1, :cond_1

    move p2, v1

    .line 773
    :cond_1
    sget p1, Lcom/android/systemui/R$color;->accessibility_floating_menu_stroke_dark:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 774
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMenuGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void
.end method


# virtual methods
.method fadeIn()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 487
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsFadeEffectEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 492
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 493
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method fadeOut()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 498
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsFadeEffectEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method getAvailableBounds()Landroid/graphics/Rect;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 850
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenWidth:I

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenHeight:I

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowHeight()I

    move-result p0

    sub-int/2addr v2, p0

    const/4 p0, 0x0

    invoke-direct {v0, p0, p0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method getWindowLocationOnScreen()Landroid/graphics/Rect;
    .locals 4

    .line 467
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 468
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 469
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-direct {v2, v1, v0, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method hasExceededMaxLayoutHeight()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 812
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->calculateActualLayoutHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxLayoutHeight()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method hide()V
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsShowing:Z

    .line 381
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 382
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setSystemGestureExclusion()V

    return-void
.end method

.method isOvalShape()Z
    .locals 0

    .line 390
    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mShapeType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isShowing()Z
    .locals 0

    .line 386
    iget-boolean p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsShowing:Z

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 672
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 673
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateAccessibilityTitle(Landroid/view/WindowManager$LayoutParams;)V

    .line 678
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateDimensions()V

    .line 679
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateListView()V

    .line 680
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateIconSizeWith(I)V

    .line 681
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateColor()V

    .line 682
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateStrokeWith(II)V

    .line 683
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPercentageY:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateLocationWith(IF)V

    .line 684
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->hasExceededMaxLayoutHeight()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateScrollModeWith(Z)V

    .line 686
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method onEnabledFeaturesChanged()V
    .locals 0

    .line 482
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 319
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 320
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setupAccessibilityActions(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 240
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    .line 241
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 243
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_3

    goto/16 :goto_0

    .line 254
    :cond_0
    iget-boolean p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDragging:Z

    if-nez p2, :cond_1

    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownX:I

    iget v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownY:I

    .line 255
    invoke-direct {p0, p2, v2, p1, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->hasExceededTouchSlop(IIII)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 256
    :cond_1
    iget-boolean p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDragging:Z

    if-nez p2, :cond_2

    .line 257
    iput-boolean v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDragging:Z

    .line 258
    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadius:F

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setRadius(FI)V

    .line 259
    invoke-direct {p0, v1, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setInset(II)V

    .line 263
    :cond_2
    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    iget v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownX:I

    invoke-direct {p0, p2, p1, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isMovingTowardsScreenEdge(III)Z

    move-result p2

    .line 265
    iput p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTemporaryShapeType:I

    .line 266
    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRelativeToPointerDownX:I

    add-int/2addr p1, p2

    .line 267
    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRelativeToPointerDownY:I

    add-int/2addr v0, p2

    .line 268
    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 269
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowY()I

    move-result p2

    invoke-static {v0, v1, p2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 270
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 275
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDragging:Z

    if-eqz p1, :cond_5

    .line 276
    iput-boolean v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDragging:Z

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result p1

    .line 279
    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/lit8 v4, p1, 0x0

    div-int/2addr v4, v2

    if-le v0, v4, :cond_4

    move v1, p1

    .line 281
    :cond_4
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 282
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->snapToLocation(II)V

    .line 284
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTemporaryShapeType:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    return v3

    .line 292
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isOvalShape()Z

    move-result p1

    if-nez p1, :cond_6

    .line 293
    invoke-virtual {p0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    return v3

    .line 298
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeOut()V

    goto :goto_0

    .line 245
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeIn()V

    .line 247
    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownX:I

    .line 248
    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownY:I

    .line 249
    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRelativeToPointerDownX:I

    .line 250
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRelativeToPointerDownY:I

    .line 251
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_8
    :goto_0
    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method onTargetsChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;)V"
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeIn()V

    .line 396
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 398
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->onEnabledFeaturesChanged()V

    .line 400
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateRadiusWith(III)V

    .line 401
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->hasExceededMaxLayoutHeight()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateScrollModeWith(Z)V

    .line 402
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setSystemGestureExclusion()V

    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeOut()V

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4

    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeIn()V

    .line 327
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getAvailableBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 328
    sget v1, Lcom/android/systemui/R$id;->action_move_top_left:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    .line 329
    invoke-virtual {p0, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    .line 330
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->snapToLocation(II)V

    return v3

    .line 334
    :cond_0
    sget v1, Lcom/android/systemui/R$id;->action_move_top_right:I

    if-ne p1, v1, :cond_1

    .line 335
    invoke-virtual {p0, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    .line 336
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget p2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->snapToLocation(II)V

    return v3

    .line 340
    :cond_1
    sget v1, Lcom/android/systemui/R$id;->action_move_bottom_left:I

    if-ne p1, v1, :cond_2

    .line 341
    invoke-virtual {p0, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    .line 342
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->snapToLocation(II)V

    return v3

    .line 346
    :cond_2
    sget v1, Lcom/android/systemui/R$id;->action_move_bottom_right:I

    if-ne p1, v1, :cond_3

    .line 347
    invoke-virtual {p0, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    .line 348
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->snapToLocation(II)V

    return v3

    .line 352
    :cond_3
    sget v0, Lcom/android/systemui/R$id;->action_move_to_edge_and_hide:I

    if-ne p1, v0, :cond_4

    .line 353
    invoke-virtual {p0, v3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    return v3

    .line 357
    :cond_4
    sget v0, Lcom/android/systemui/R$id;->action_move_out_edge_and_show:I

    if-ne p1, v0, :cond_5

    .line 358
    invoke-virtual {p0, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    return v3

    .line 362
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public setOnDragEndListener(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$OnDragEndListener;)V
    .locals 0

    .line 438
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mOnDragEndListener:Ljava/util/Optional;

    return-void
.end method

.method setShapeType(I)V
    .locals 1

    .line 423
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeIn()V

    .line 425
    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mShapeType:I

    .line 427
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateOffsetWith(II)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 432
    :cond_0
    new-instance p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    .line 429
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 434
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeOut()V

    return-void
.end method

.method setSizeType(I)V
    .locals 2

    .line 408
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeIn()V

    .line 410
    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    .line 412
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateIconSizeWith(I)V

    .line 413
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateRadiusWith(III)V

    .line 416
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPercentageY:F

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateLocationWith(IF)V

    .line 417
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setSystemGestureExclusion()V

    .line 419
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeOut()V

    return-void
.end method

.method show()V
    .locals 2

    .line 366
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 370
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsShowing:Z

    .line 371
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setSystemGestureExclusion()V

    return-void
.end method

.method snapToLocation(II)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 691
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDragAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 692
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDragAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 693
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDragAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;II)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 694
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDragAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method startTranslateXAnimation()V
    .locals 10

    .line 442
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeIn()V

    .line 444
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 v0, -0x41000000    # -0.5f

    :goto_0
    move v5, v0

    .line 447
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x258

    .line 452
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v3, 0x2

    .line 453
    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 454
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v3, -0x1

    .line 455
    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 456
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 457
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method stopTranslateXAnimation()V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 463
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeOut()V

    return-void
.end method

.method updateOpacityWith(ZF)V
    .locals 3

    .line 473
    iput-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsFadeEffectEnabled:Z

    .line 474
    iput p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutValue:F

    .line 476
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 477
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p2, v0

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutValue:F

    const/4 v2, 0x1

    aput v0, p2, v2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 478
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsFadeEffectEnabled:Z

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutValue:F

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
