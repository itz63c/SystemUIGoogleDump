.class Lcom/android/wm/shell/pip/phone/PipMenuView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PipMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu(Ljava/lang/Runnable;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

.field final synthetic val$animationFinishedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/pip/phone/PipMenuView;Ljava/lang/Runnable;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$4;->this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$4;->val$animationFinishedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 363
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$4;->this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 364
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$4;->val$animationFinishedRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 365
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
