.class Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;
.super Ljava/lang/Object;
.source "OneHandedDisplayAreaOrganizer.java"

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOneHandedAnimationCancel(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->access$000(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->removeAnimator(Landroid/window/WindowContainerToken;)V

    .line 102
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->access$000(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->isAnimatorsConsumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getTransitionDirection()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->access$100(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;I)V

    .line 104
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getDestinationOffset()I

    move-result v0

    .line 105
    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getTransitionDirection()I

    move-result p1

    .line 104
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->finishOffset(II)V

    :cond_0
    return-void
.end method

.method public onOneHandedAnimationEnd(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V
    .locals 1

    .line 90
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->access$000(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getToken()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->removeAnimator(Landroid/window/WindowContainerToken;)V

    .line 91
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->access$000(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->isAnimatorsConsumed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {p2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getTransitionDirection()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->access$100(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;I)V

    .line 93
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {p2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getDestinationOffset()I

    move-result p1

    .line 94
    invoke-virtual {p2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getTransitionDirection()I

    move-result p2

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->finishOffset(II)V

    :cond_0
    return-void
.end method

.method public onOneHandedAnimationStart(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V
    .locals 0

    return-void
.end method
