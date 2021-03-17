.class Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWasCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field final synthetic val$isAppearing:Z

.field final synthetic val$onFinishedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Ljava/lang/Runnable;Z)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;->val$onFinishedRunnable:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;->val$isAppearing:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 771
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;->mWasCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 750
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;->val$onFinishedRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 751
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 753
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;->mWasCancelled:Z

    if-nez p1, :cond_1

    .line 754
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->access$500(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V

    .line 755
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;->val$isAppearing:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onAppearAnimationFinished(Z)V

    .line 756
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;->val$isAppearing:Z

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->access$600(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    goto :goto_0

    .line 758
    :cond_1
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;->val$isAppearing:Z

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->access$600(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x0

    .line 764
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;->mWasCancelled:Z

    .line 765
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$5;->val$isAppearing:Z

    .line 766
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->access$600(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)I

    move-result p0

    .line 765
    invoke-virtual {p1, v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    return-void
.end method
