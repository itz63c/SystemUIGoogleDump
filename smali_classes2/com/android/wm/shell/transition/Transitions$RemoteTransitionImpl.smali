.class Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;
.super Ljava/lang/Object;
.source "Transitions.java"

# interfaces
.implements Lcom/android/wm/shell/transition/RemoteTransitions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/transition/Transitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteTransitionImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public static synthetic $r8$lambda$oqW2m1Ji4Wpyfs9dWO3bQVaDXtM(Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;Landroid/window/TransitionFilter;Landroid/window/IRemoteTransition;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;->lambda$registerRemote$0(Landroid/window/TransitionFilter;Landroid/window/IRemoteTransition;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rkznrvVJhweh3t1KbMqJ2mUYyGo(Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;Landroid/window/IRemoteTransition;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;->lambda$unregisterRemote$1(Landroid/window/IRemoteTransition;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/wm/shell/transition/Transitions;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;->this$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$1;)V
    .locals 0

    .line 391
    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;-><init>(Lcom/android/wm/shell/transition/Transitions;)V

    return-void
.end method

.method private synthetic lambda$registerRemote$0(Landroid/window/TransitionFilter;Landroid/window/IRemoteTransition;)V
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;->this$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions;->registerRemote(Landroid/window/TransitionFilter;Landroid/window/IRemoteTransition;)V

    return-void
.end method

.method private synthetic lambda$unregisterRemote$1(Landroid/window/IRemoteTransition;)V
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;->this$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->unregisterRemote(Landroid/window/IRemoteTransition;)V

    return-void
.end method


# virtual methods
.method public registerRemote(Landroid/window/TransitionFilter;Landroid/window/IRemoteTransition;)V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;->this$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-static {v0}, Lcom/android/wm/shell/transition/Transitions;->access$300(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;Landroid/window/TransitionFilter;Landroid/window/IRemoteTransition;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregisterRemote(Landroid/window/IRemoteTransition;)V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;->this$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-static {v0}, Lcom/android/wm/shell/transition/Transitions;->access$300(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;Landroid/window/IRemoteTransition;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
