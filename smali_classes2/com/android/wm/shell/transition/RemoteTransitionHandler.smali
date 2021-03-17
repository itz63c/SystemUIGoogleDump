.class public Lcom/android/wm/shell/transition/RemoteTransitionHandler;
.super Ljava/lang/Object;
.source "RemoteTransitionHandler.java"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field private final mFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/window/TransitionFilter;",
            "Landroid/window/IRemoteTransition;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mPendingRemotes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/window/IRemoteTransition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$KWKLFJACbJlrErxTmlwJ_duuofU(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->lambda$startAnimation$0(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SuVOmymdrnuKzV8uvDSz_Y2IGtk(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->lambda$startAnimation$2(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tj91cAfhSHKCJaCYzTVhQsMyKtQ(Lcom/android/wm/shell/transition/RemoteTransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->lambda$startAnimation$1(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mPendingRemotes:Landroid/util/ArrayMap;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    .line 55
    iput-object p1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/transition/RemoteTransitionHandler;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method private static synthetic lambda$startAnimation$0(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-interface {p0, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private synthetic lambda$startAnimation$1(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 2

    const-string v0, "ShellTransitions"

    const-string v1, "Remote transition died, finishing"

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/transition/RemoteTransitionHandler-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-interface {p0, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$startAnimation$2(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-interface {p0, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method


# virtual methods
.method addFiltered(Landroid/window/TransitionFilter;Landroid/window/IRemoteTransition;)V
    .locals 1

    .line 59
    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 4

    .line 129
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 131
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mPendingRemotes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, 0xcc7ac27

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {p2, v1, v3, v0, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_1
    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object p0
.end method

.method removeFiltered(Landroid/window/IRemoteTransition;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 64
    iget-object v1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v1, p1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 10

    .line 74
    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mPendingRemotes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/IRemoteTransition;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 76
    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v8, -0x4bb0ee08

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v5, v9, v4

    aput-object v6, v9, v3

    invoke-static {v7, v8, v4, v2, v9}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_0
    iget-object v5, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_0
    if-ltz v5, :cond_3

    .line 80
    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v8, 0x3b07e029

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v6, v9, v4

    invoke-static {v7, v8, v4, v2, v9}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_1
    iget-object v6, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/window/TransitionFilter;

    invoke-virtual {v6, p2}, Landroid/window/TransitionFilter;->matches(Landroid/window/TransitionInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 83
    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/window/IRemoteTransition;

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 88
    :cond_3
    :goto_1
    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, -0x639b41f8

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object v5, v1, v3

    invoke-static {v6, v7, v4, v2, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-nez v0, :cond_5

    return v4

    .line 94
    :cond_5
    new-instance p1, Lcom/android/wm/shell/transition/RemoteTransitionHandler-$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p4}, Lcom/android/wm/shell/transition/RemoteTransitionHandler-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 99
    new-instance v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;

    invoke-direct {v1, p0, v0, p1, p4}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;-><init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler;Landroid/window/IRemoteTransition;Landroid/os/IBinder$DeathRecipient;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 110
    :try_start_0
    invoke-interface {v0}, Landroid/window/IRemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 111
    invoke-interface {v0}, Landroid/window/IRemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 113
    :cond_6
    invoke-interface {v0, p2, p3, v1}, Landroid/window/IRemoteTransition;->startAnimation(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 115
    invoke-interface {v0}, Landroid/window/IRemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 116
    invoke-interface {v0}, Landroid/window/IRemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-interface {p3, p1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_7
    const-string p1, "ShellTransitions"

    const-string p3, "Error running remote transition."

    .line 118
    invoke-static {p1, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p1, Lcom/android/wm/shell/transition/RemoteTransitionHandler-$$ExternalSyntheticLambda2;

    invoke-direct {p1, p4}, Lcom/android/wm/shell/transition/RemoteTransitionHandler-$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return v3
.end method
