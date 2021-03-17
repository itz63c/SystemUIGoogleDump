.class Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;
.super Ljava/lang/Object;
.source "ScreenshotView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/ScreenshotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwipeDismissHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;
    }
.end annotation


# instance fields
.field private final mActionsRect:Landroid/graphics/Rect;

.field private final mDismissStartX:F

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mInteractionStarted:Z

.field private mIsDragging:Z

.field private mStartX:F

.field private mStartY:F

.field private mTranslationX:F

.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotView;


# direct methods
.method public static synthetic $r8$lambda$ESzr2GccPDv_7bsDcr3yQ95NBI0(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->lambda$createSwipeDismissAnimation$0(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jpOsFu_aNu85igNBu-CIb5j1MbA(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->lambda$createSwipeReturnAnimation$1(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotView;)V
    .locals 3

    .line 799
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mActionsRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 792
    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mTranslationX:F

    const/4 v0, 0x0

    .line 795
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mInteractionStarted:Z

    .line 797
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mIsDragging:Z

    .line 800
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;-><init>(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;)V

    .line 801
    new-instance v1, Landroid/view/GestureDetector;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$800(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mGestureDetector:Landroid/view/GestureDetector;

    .line 802
    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$100(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mDismissStartX:F

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;)Landroid/graphics/Rect;
    .locals 0

    .line 778
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mActionsRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;)Z
    .locals 0

    .line 778
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mInteractionStarted:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;Z)Z
    .locals 0

    .line 778
    iput-boolean p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mInteractionStarted:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;)F
    .locals 0

    .line 778
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mStartX:F

    return p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;F)F
    .locals 0

    .line 778
    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mStartX:F

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;)Z
    .locals 0

    .line 778
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mIsDragging:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;Z)Z
    .locals 0

    .line 778
    iput-boolean p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mIsDragging:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;)F
    .locals 0

    .line 778
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mTranslationX:F

    return p0
.end method

.method static synthetic access$1602(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;F)F
    .locals 0

    .line 778
    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mTranslationX:F

    return p1
.end method

.method private createSwipeDismissAnimation()Landroid/animation/ValueAnimator;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 893
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 894
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mTranslationX:F

    .line 895
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {v2}, Lcom/android/systemui/screenshot/ScreenshotView;->access$200(Lcom/android/systemui/screenshot/ScreenshotView;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    .line 896
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {v3}, Lcom/android/systemui/screenshot/ScreenshotView;->access$400(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 897
    invoke-static {v4}, Lcom/android/systemui/screenshot/ScreenshotView;->access$400(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    mul-float/2addr v3, v2

    goto :goto_0

    .line 898
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {v2}, Lcom/android/systemui/screenshot/ScreenshotView;->access$1800(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v2

    .line 900
    :goto_0
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler-$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, v3}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;FF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x190

    .line 907
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createSwipeReturnAnimation()Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 912
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 913
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mTranslationX:F

    const/4 v2, 0x0

    .line 915
    iput v2, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mTranslationX:F

    .line 917
    new-instance v3, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler-$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;FF)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isPastDismissThreshold()Z
    .locals 5

    .line 885
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotView;->access$200(Lcom/android/systemui/screenshot/ScreenshotView;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x41f00000    # 30.0f

    if-eqz v0, :cond_1

    .line 886
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mTranslationX:F

    const/high16 v4, -0x40800000    # -1.0f

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p0, v3}, Lcom/android/systemui/screenshot/ScreenshotView;->access$1100(Lcom/android/systemui/screenshot/ScreenshotView;F)F

    move-result p0

    mul-float/2addr p0, v4

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 888
    :cond_1
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mTranslationX:F

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p0, v3}, Lcom/android/systemui/screenshot/ScreenshotView;->access$1100(Lcom/android/systemui/screenshot/ScreenshotView;F)F

    move-result p0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private synthetic lambda$createSwipeDismissAnimation$0(FFLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 902
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 901
    invoke-static {p1, p2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    .line 903
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p2}, Lcom/android/systemui/screenshot/ScreenshotView;->access$1700(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 905
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$createSwipeReturnAnimation$1(FFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 919
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    .line 918
    invoke-static {p1, p2, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    .line 920
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->access$1700(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 807
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 808
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {v1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$700(Lcom/android/systemui/screenshot/ScreenshotView;)Lcom/android/systemui/screenshot/ScreenshotView$ScreenshotViewCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/screenshot/ScreenshotView$ScreenshotViewCallback;->onUserInteraction()V

    .line 809
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 810
    iput-boolean v2, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mInteractionStarted:Z

    .line 811
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mStartX:F

    .line 812
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mStartY:F

    return v2

    .line 814
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v2, :cond_6

    const/4 v1, 0x0

    .line 815
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mInteractionStarted:Z

    .line 816
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mIsDragging:Z

    .line 817
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->isPastDismissThreshold()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 818
    invoke-static {v1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$900(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {v1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$900(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 822
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$600(Lcom/android/systemui/screenshot/ScreenshotView;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SWIPE_DISMISSED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 823
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->createSwipeDismissAnimation()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/screenshot/ScreenshotView;->access$1000(Lcom/android/systemui/screenshot/ScreenshotView;Landroid/animation/Animator;)V

    return v2

    .line 825
    :cond_2
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mStartX:F

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mStartY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {v1, v3, v4, p2}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 826
    invoke-static {v1, v3}, Lcom/android/systemui/screenshot/ScreenshotView;->access$1100(Lcom/android/systemui/screenshot/ScreenshotView;F)F

    move-result v1

    cmpl-float p2, p2, v1

    if-lez p2, :cond_5

    .line 832
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$900(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$900(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_4

    .line 833
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->createSwipeReturnAnimation()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return v2

    .line 837
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p2}, Lcom/android/systemui/screenshot/ScreenshotView;->access$000(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/ImageView;

    move-result-object p2

    if-ne p1, p2, :cond_6

    .line 838
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->access$000(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->performClick()Z

    :cond_6
    return v0
.end method
