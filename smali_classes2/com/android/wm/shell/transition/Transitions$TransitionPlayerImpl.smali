.class Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;
.super Landroid/window/ITransitionPlayer$Stub;
.source "Transitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/transition/Transitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransitionPlayerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public static synthetic $r8$lambda$jkaLjAN90CIEuzdZWGZGTudGmyg(Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;->lambda$onTransitionReady$0(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vhHzGszIEH8sIEdaa0rxkiSlbjc(Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;->lambda$requestStartTransition$1(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/wm/shell/transition/Transitions;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;->this$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-direct {p0}, Landroid/window/ITransitionPlayer$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$1;)V
    .locals 0

    .line 374
    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;-><init>(Lcom/android/wm/shell/transition/Transitions;)V

    return-void
.end method

.method private synthetic lambda$onTransitionReady$0(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;->this$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$requestStartTransition$1(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;->this$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions;->requestStartTransition(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V

    return-void
.end method


# virtual methods
.method public onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;->this$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-static {v0}, Lcom/android/wm/shell/transition/Transitions;->access$300(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestStartTransition(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;->this$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-static {v0}, Lcom/android/wm/shell/transition/Transitions;->access$300(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
