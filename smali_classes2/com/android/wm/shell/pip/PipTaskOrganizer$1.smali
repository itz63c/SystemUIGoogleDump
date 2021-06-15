.class Lcom/android/wm/shell/pip/PipTaskOrganizer$1;
.super Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;
.source "PipTaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/PipTaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPipAnimationCancel(Landroid/app/TaskInfo;Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$500(Lcom/android/wm/shell/pip/PipTaskOrganizer;I)V

    return-void
.end method

.method public onPipAnimationEnd(Landroid/app/TaskInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V
    .locals 2

    .line 173
    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result p1

    .line 174
    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getAnimationType()I

    move-result v0

    .line 175
    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object p3

    .line 176
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$100(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 179
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 180
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$200(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Landroid/window/WindowContainerTransaction;->scheduleFinishEnterPip(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 181
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object p3, p3, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p3, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 184
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {p0, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$302(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {v1, p2, p3, p1, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$400(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V

    .line 188
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionFinished(I)V

    return-void
.end method

.method public onPipAnimationStart(Landroid/app/TaskInfo;Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V
    .locals 0

    .line 161
    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result p1

    .line 167
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$000(Lcom/android/wm/shell/pip/PipTaskOrganizer;I)V

    return-void
.end method
