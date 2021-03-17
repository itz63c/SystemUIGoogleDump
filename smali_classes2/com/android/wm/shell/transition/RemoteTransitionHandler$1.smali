.class Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;
.super Landroid/window/IRemoteTransitionFinishedCallback$Stub;
.source "RemoteTransitionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/transition/RemoteTransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

.field final synthetic val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field final synthetic val$remote:Landroid/window/IRemoteTransition;

.field final synthetic val$remoteDied:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public static synthetic $r8$lambda$2pQM67zzsLXvcZVzEKb7phgXSng(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->lambda$onTransitionFinished$0(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler;Landroid/window/IRemoteTransition;Landroid/os/IBinder$DeathRecipient;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$remote:Landroid/window/IRemoteTransition;

    iput-object p3, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$remoteDied:Landroid/os/IBinder$DeathRecipient;

    iput-object p4, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-direct {p0}, Landroid/window/IRemoteTransitionFinishedCallback$Stub;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onTransitionFinished$0(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-interface {p0, p1, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method


# virtual methods
.method public onTransitionFinished(Landroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$remote:Landroid/window/IRemoteTransition;

    invoke-interface {v0}, Landroid/window/IRemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$remote:Landroid/window/IRemoteTransition;

    invoke-interface {v0}, Landroid/window/IRemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$remoteDied:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-static {v0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->access$000(Lcom/android/wm/shell/transition/RemoteTransitionHandler;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    new-instance v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
