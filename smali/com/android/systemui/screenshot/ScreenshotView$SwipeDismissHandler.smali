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
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mStartX:F

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
    .locals 2

    .line 851
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;-><init>(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;)V

    .line 853
    new-instance v1, Landroid/view/GestureDetector;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$700(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;)F
    .locals 0

    .line 843
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mStartX:F

    return p0
.end method

.method private createSwipeDismissAnimation()Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 900
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 901
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {v1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$1100(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 906
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {v2}, Lcom/android/systemui/screenshot/ScreenshotView;->access$1300(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 907
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {v2}, Lcom/android/systemui/screenshot/ScreenshotView;->access$1400(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    int-to-float v2, v2

    .line 909
    new-instance v3, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;FF)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x190

    .line 914
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

    .line 919
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 920
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {v1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$1100(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 923
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;FF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isPastDismissThreshold()Z
    .locals 2

    .line 895
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotView;->access$1100(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 896
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$1200(Lcom/android/systemui/screenshot/ScreenshotView;F)F

    move-result p0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$createSwipeDismissAnimation$0(FFLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 910
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    .line 911
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p2}, Lcom/android/systemui/screenshot/ScreenshotView;->access$1100(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 912
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

    .line 925
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    .line 924
    invoke-static {p1, p2, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    .line 926
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->access$1100(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 858
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 859
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotView;->access$600(Lcom/android/systemui/screenshot/ScreenshotView;)Lcom/android/systemui/screenshot/ScreenshotView$ScreenshotViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/screenshot/ScreenshotView$ScreenshotViewCallback;->onUserInteraction()V

    .line 860
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 861
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->mStartX:F

    return v1

    .line 863
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-ne p2, v1, :cond_5

    .line 864
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->isPastDismissThreshold()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 865
    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$800(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$800(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    .line 869
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$500(Lcom/android/systemui/screenshot/ScreenshotView;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SWIPE_DISMISSED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 870
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->createSwipeDismissAnimation()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/screenshot/ScreenshotView;->access$900(Lcom/android/systemui/screenshot/ScreenshotView;Landroid/animation/Animator;)V

    goto :goto_0

    .line 876
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$800(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$800(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_4

    .line 877
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->createSwipeReturnAnimation()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_0
    return v1

    :cond_5
    return p1
.end method
