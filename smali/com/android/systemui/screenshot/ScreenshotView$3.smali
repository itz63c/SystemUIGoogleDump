.class Lcom/android/systemui/screenshot/ScreenshotView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScreenshotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ScreenshotView;->createScreenshotDropInAnimation(Landroid/graphics/Rect;Z)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotView;

.field final synthetic val$bounds:Landroid/graphics/Rect;

.field final synthetic val$cornerScale:F

.field final synthetic val$finalPos:Landroid/graphics/PointF;


# direct methods
.method public static synthetic $r8$lambda$jKl2H_cG5B4KYcRS4AVKF9a67p8(Lcom/android/systemui/screenshot/ScreenshotView$3;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView$3;->lambda$onAnimationEnd$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotView;Landroid/graphics/PointF;Landroid/graphics/Rect;F)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->val$finalPos:Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->val$bounds:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->val$cornerScale:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(Landroid/view/View;)V
    .locals 1

    .line 439
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$600(Lcom/android/systemui/screenshot/ScreenshotView;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_EXPLICIT_DISMISSAL:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 440
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->animateDismissal()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 435
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$100(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/FrameLayout;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotView$3-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotView$3-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/ScreenshotView$3;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$100(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 443
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$100(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    .line 444
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {v2}, Lcom/android/systemui/screenshot/ScreenshotView;->access$200(Lcom/android/systemui/screenshot/ScreenshotView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->val$finalPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->val$bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->val$cornerScale:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v1

    add-float/2addr v2, v3

    goto :goto_0

    .line 446
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->val$finalPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->val$bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->val$cornerScale:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    .line 447
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {v3}, Lcom/android/systemui/screenshot/ScreenshotView;->access$100(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setX(F)V

    .line 448
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {v2}, Lcom/android/systemui/screenshot/ScreenshotView;->access$100(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->val$finalPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, p1

    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->val$bounds:Landroid/graphics/Rect;

    .line 449
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->val$cornerScale:F

    mul-float/2addr p1, v4

    div-float/2addr p1, v1

    sub-float/2addr v3, p1

    .line 448
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setY(F)V

    .line 450
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$000(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 451
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$000(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 452
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$000(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->val$finalPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->val$bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->val$cornerScale:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 453
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$000(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->val$finalPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->val$bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->val$cornerScale:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setY(F)V

    .line 454
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 456
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->createScreenshotActionsShadeAnimation()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 458
    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-direct {p1, v0}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;)V

    .line 459
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotView;->access$000(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 460
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotView;->access$300(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 461
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotView;->access$400(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 462
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->access$500(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
