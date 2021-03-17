.class public Lcom/android/wm/shell/transition/Transitions;
.super Ljava/lang/Object;
.source "Transitions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;,
        Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;,
        Lcom/android/wm/shell/transition/Transitions$TransitionHandler;,
        Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;,
        Lcom/android/wm/shell/transition/Transitions$ActiveTransition;
    }
.end annotation


# static fields
.field public static final ENABLE_SHELL_TRANSITIONS:Z


# instance fields
.field private final mActiveTransitions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/wm/shell/transition/Transitions$ActiveTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/transition/Transitions$TransitionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpl:Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mOrganizer:Landroid/window/WindowOrganizer;

.field private final mPlayerImpl:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

.field private final mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;


# direct methods
.method public static synthetic $r8$lambda$7sykKEaKVEsvmXpcOu3BzaFgtY0(Lcom/android/wm/shell/transition/Transitions;Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions;->lambda$onTransitionReady$0(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.debug.shell_transit"

    const/4 v1, 0x0

    .line 63
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mImpl:Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Landroid/util/ArrayMap;

    .line 100
    iput-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    .line 101
    iput-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 102
    iput-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 103
    iput-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mPlayerImpl:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    .line 104
    iput-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    return-void
.end method

.method public constructor <init>(Landroid/window/WindowOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mImpl:Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    .line 80
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Landroid/util/ArrayMap;

    .line 88
    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    .line 89
    iput-object p3, p0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 90
    iput-object p4, p0, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 91
    new-instance p1, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    invoke-direct {p1, p0, v1}, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$1;)V

    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mPlayerImpl:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    .line 93
    new-instance p1, Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    invoke-direct {p1, p2, p3, p4}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;-><init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance p1, Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-direct {p1, p3}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    .line 96
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$300(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static asRemoteTransitions(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/transition/RemoteTransitions;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mImpl:Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;

    return-object p0
.end method

.method public static createEmptyForTesting()Lcom/android/wm/shell/transition/RemoteTransitions;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 110
    new-instance v0, Lcom/android/wm/shell/transition/Transitions$1;

    invoke-direct {v0}, Lcom/android/wm/shell/transition/Transitions$1;-><init>()V

    return-object v0
.end method

.method public static isOpeningType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private synthetic lambda$onTransitionReady$0(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions;->onFinish(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private onFinish(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .locals 6

    .line 286
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ShellTransitions"

    const-string p1, "Trying to finish a non-running transition. Maybe remote crashed?"

    .line 287
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 290
    :cond_0
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0x1360ca8e

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    invoke-virtual {p0, p1, p2, p3}, Landroid/window/WindowOrganizer;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    return-void
.end method

.method private static setupStartState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 13

    .line 177
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/transition/Transitions;->isOpeningType(I)Z

    move-result v0

    .line 178
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 182
    :cond_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 184
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_b

    .line 185
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    .line 186
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    .line 187
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    .line 190
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v6

    const/4 v7, 0x3

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v6, :cond_2

    if-eq v5, v3, :cond_1

    if-eq v5, v7, :cond_1

    const/4 v6, 0x6

    if-ne v5, v6, :cond_a

    .line 192
    :cond_1
    invoke-virtual {p1, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v5, p1

    move-object v6, v11

    .line 193
    invoke-virtual/range {v5 .. v10}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 194
    invoke-virtual {p1, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 195
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v11, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_3

    .line 200
    :cond_2
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {p1, v11, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 201
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getRootOffset()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    .line 202
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getRootOffset()Landroid/graphics/Point;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 201
    invoke-virtual {p1, v11, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    if-eq v5, v3, :cond_7

    if-ne v5, v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x2

    if-eq v5, v4, :cond_5

    const/4 v4, 0x4

    if-ne v5, v4, :cond_4

    goto :goto_1

    .line 231
    :cond_4
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v1

    sub-int/2addr v4, v2

    invoke-virtual {p1, v11, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_3

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    sub-int v4, v1, v2

    .line 225
    invoke-virtual {p1, v11, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_3

    .line 228
    :cond_6
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v1

    sub-int/2addr v4, v2

    invoke-virtual {p1, v11, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_3

    .line 205
    :cond_7
    :goto_2
    invoke-virtual {p1, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v5, p1

    move-object v6, v11

    .line 206
    invoke-virtual/range {v5 .. v10}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_9

    .line 209
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v1

    sub-int/2addr v5, v2

    invoke-virtual {p1, v11, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 210
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_8

    .line 213
    invoke-virtual {p1, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    .line 215
    invoke-virtual {p1, v11, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_3

    :cond_9
    sub-int v4, v1, v2

    .line 219
    invoke-virtual {p1, v11, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 220
    invoke-virtual {p1, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_a
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method


# virtual methods
.method public addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAnimExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 239
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, 0x3fcb06b3

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v0, v8, v4

    aput-object v5, v8, v2

    invoke-static {v6, v7, v4, v3, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-eqz v0, :cond_b

    .line 247
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-nez v5, :cond_2

    .line 250
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x187924cb

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    aput-object p2, v1, v2

    invoke-static {v5, v6, v4, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_1
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 253
    invoke-direct {p0, p1, v3, v3}, Lcom/android/wm/shell/transition/Transitions;->onFinish(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void

    .line 257
    :cond_2
    invoke-static {p2, p3}, Lcom/android/wm/shell/transition/Transitions;->setupStartState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 259
    new-instance v1, Lcom/android/wm/shell/transition/Transitions-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/transition/Transitions-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/Transitions;Landroid/os/IBinder;)V

    .line 261
    iget-object v5, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFirstHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    if-eqz v5, :cond_5

    .line 262
    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v6, :cond_3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, 0x83ef4b7

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v5, v8, v4

    invoke-static {v6, v7, v4, v3, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :cond_3
    iget-object v5, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFirstHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-interface {v5, p1, p2, p3, v1}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 265
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, 0x2a269024

    invoke-static {p0, p1, v4, v3, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void

    .line 270
    :cond_5
    iget-object v5, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_a

    .line 271
    iget-object v6, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFirstHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    if-ne v6, v7, :cond_6

    goto :goto_1

    .line 272
    :cond_6
    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v8, -0x4dfde11f

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v6, v9, v4

    invoke-static {v7, v8, v4, v3, v9}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 274
    :cond_7
    iget-object v6, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-interface {v6, p1, p2, p3, v1}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 275
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p2, -0x4d529b50

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p0, p3, v4

    invoke-static {p1, p2, v4, v3, p3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    return-void

    :cond_9
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 280
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This shouldn\'t happen, maybe the default handler is broken."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 243
    :cond_b
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got transitionReady for non-active transition "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". expecting one of "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Landroid/util/ArrayMap;

    .line 245
    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public register(Lcom/android/wm/shell/ShellTaskOrganizer;)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mPlayerImpl:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    if-nez p0, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p1, p0}, Landroid/window/TaskOrganizer;->registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V

    return-void
.end method

.method public registerRemote(Landroid/window/TransitionFilter;Landroid/window/IRemoteTransition;)V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->addFiltered(Landroid/window/TransitionFilter;Landroid/window/IRemoteTransition;)V

    return-void
.end method

.method replaceDefaultHandlerForTest(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 150
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method requestStartTransition(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V
    .locals 8

    .line 298
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, -0x7bc12dcd

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    aput-object v3, v6, v1

    invoke-static {v4, v5, v7, v2, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 303
    new-instance v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-direct {v0, v2}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;-><init>(Lcom/android/wm/shell/transition/Transitions$1;)V

    .line 305
    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_0
    if-ltz v3, :cond_2

    .line 306
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-interface {v1, p1, p2}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 308
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFirstHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 312
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    .line 313
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p2

    .line 312
    invoke-virtual {v1, p2, p1, v2}, Landroid/window/WindowOrganizer;->startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Landroid/os/IBinder;

    move-result-object p1

    .line 314
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 301
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Transition already started "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;
    .locals 2

    .line 320
    new-instance v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;-><init>(Lcom/android/wm/shell/transition/Transitions$1;)V

    .line 321
    iput-object p3, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFirstHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 322
    iget-object p3, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    invoke-virtual {p3, p1, v1, p2}, Landroid/window/WindowOrganizer;->startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Landroid/os/IBinder;

    move-result-object p1

    .line 323
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public unregisterRemote(Landroid/window/IRemoteTransition;)V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->removeFiltered(Landroid/window/IRemoteTransition;)V

    return-void
.end method
