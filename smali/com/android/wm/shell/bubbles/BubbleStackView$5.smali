.class Lcom/android/wm/shell/bubbles/BubbleStackView$5;
.super Ljava/lang/Object;
.source "BubbleStackView.java"

# interfaces
.implements Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/bubbles/BubbleStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;


# direct methods
.method public static synthetic $r8$lambda$G9lz8mjgPFOg8OtYd3IPJOvkGI8(Lcom/android/wm/shell/bubbles/BubbleStackView$5;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$5;->lambda$onReleasedInTarget$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReleasedInTarget$0()V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$1000(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    .line 488
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$700(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    return-void
.end method


# virtual methods
.method public onReleasedInTarget(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;)V
    .locals 2

    .line 484
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$900(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 485
    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$600(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/DismissView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$5-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$5-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView$5;)V

    .line 484
    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->animateStackDismissal(FLjava/lang/Runnable;)V

    .line 492
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$600(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/DismissView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/DismissView;->hide()V

    return-void
.end method

.method public onStuckToTarget(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;)V
    .locals 1

    .line 465
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$800(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$500(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;Z)V

    return-void
.end method

.method public onUnstuckFromTarget(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;FFZ)V
    .locals 2

    .line 471
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$800(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$500(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;Z)V

    if-eqz p4, :cond_0

    .line 474
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$900(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    move-result-object p1

    iget-object p4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 475
    invoke-static {p4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$900(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object p4

    iget p4, p4, Landroid/graphics/PointF;->x:F

    .line 474
    invoke-virtual {p1, p4, p2, p3}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->flingStackThenSpringToEdge(FFF)F

    .line 476
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$600(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/DismissView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/DismissView;->hide()V

    goto :goto_0

    .line 478
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$900(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->onUnstuckFromTarget()V

    :goto_0
    return-void
.end method
