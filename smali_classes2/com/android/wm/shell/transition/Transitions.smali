.class public Lcom/android/wm/shell/transition/Transitions;
.super Ljava/lang/Object;
.source "Transitions.java"

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/transition/Transitions$SettingsObserver;,
        Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;,
        Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;,
        Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;,
        Lcom/android/wm/shell/transition/Transitions$TransitionHandler;,
        Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;,
        Lcom/android/wm/shell/transition/Transitions$ActiveTransition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/wm/shell/common/RemoteCallable<",
        "Lcom/android/wm/shell/transition/Transitions;",
        ">;"
    }
.end annotation


# static fields
.field public static final ENABLE_SHELL_TRANSITIONS:Z


# instance fields
.field private final mActiveTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/transition/Transitions$ActiveTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mContext:Landroid/content/Context;

.field private final mHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/transition/Transitions$TransitionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpl:Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mOrganizer:Landroid/window/WindowOrganizer;

.field private final mPlayerImpl:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

.field private final mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

.field private mTransitionAnimationScaleSetting:F


# direct methods
.method public static synthetic $r8$lambda$R8y5Yahjb1Rh_v9jbvQ3c_ONRUc(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions;->lambda$attemptMergeTransition$1(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$px04bGKFoCtKHF3nVVxP8i9DM2A(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Landroid/os/IBinder;
    .locals 0

    invoke-static {p0}, Lcom/android/wm/shell/transition/Transitions;->lambda$onTransitionReady$0(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uwcHDWvfDrR9AcoTm3_H6HKNd40(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions;->lambda$startAnimation$2(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.debug.shell_transit"

    const/4 v1, 0x0

    .line 71
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mImpl:Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 90
    iput v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTransitionAnimationScaleSetting:F

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    .line 131
    iput-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    .line 132
    iput-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mContext:Landroid/content/Context;

    .line 133
    iput-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 134
    iput-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 135
    iput-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mPlayerImpl:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    .line 136
    iput-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    return-void
.end method

.method public constructor <init>(Landroid/window/WindowOrganizer;Lcom/android/wm/shell/common/TransactionPool;Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mImpl:Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 90
    iput v2, p0, Lcom/android/wm/shell/transition/Transitions;->mTransitionAnimationScaleSetting:F

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    .line 107
    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    .line 108
    iput-object p3, p0, Lcom/android/wm/shell/transition/Transitions;->mContext:Landroid/content/Context;

    .line 109
    iput-object p4, p0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 110
    iput-object p5, p0, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 111
    new-instance p1, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    invoke-direct {p1, p0, v1}, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$1;)V

    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mPlayerImpl:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    .line 113
    new-instance p1, Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;-><init>(Lcom/android/wm/shell/common/TransactionPool;Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance p1, Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-direct {p1, p4}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    .line 116
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 121
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10500a4

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    const-string p3, "transition_animation_scale"

    .line 119
    invoke-static {p1, p3, p2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/transition/Transitions;->mTransitionAnimationScaleSetting:F

    .line 123
    invoke-direct {p0, p2}, Lcom/android/wm/shell/transition/Transitions;->dispatchAnimScaleSetting(F)V

    .line 126
    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/wm/shell/transition/Transitions$SettingsObserver;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/transition/Transitions$SettingsObserver;-><init>(Lcom/android/wm/shell/transition/Transitions;)V

    const/4 p0, 0x0

    .line 125
    invoke-virtual {p1, p2, p0, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/transition/RemoteTransitionHandler;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/wm/shell/transition/Transitions;)F
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/wm/shell/transition/Transitions;->mTransitionAnimationScaleSetting:F

    return p0
.end method

.method static synthetic access$502(Lcom/android/wm/shell/transition/Transitions;F)F
    .locals 0

    .line 66
    iput p1, p0, Lcom/android/wm/shell/transition/Transitions;->mTransitionAnimationScaleSetting:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/wm/shell/transition/Transitions;)Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/wm/shell/transition/Transitions;F)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->dispatchAnimScaleSetting(F)V

    return-void
.end method

.method public static createEmptyForTesting()Lcom/android/wm/shell/transition/ShellTransitions;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 162
    new-instance v0, Lcom/android/wm/shell/transition/Transitions$1;

    invoke-direct {v0}, Lcom/android/wm/shell/transition/Transitions$1;-><init>()V

    return-object v0
.end method

.method private dispatchAnimScaleSetting(F)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-interface {v1, p1}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->setAnimScaleSetting(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private findActiveTransition(Landroid/os/IBinder;)I
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 301
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v1, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static isClosingType(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
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

.method private synthetic lambda$attemptMergeTransition$1(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .locals 0

    .line 351
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions;->onFinish(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private static synthetic lambda$onTransitionReady$0(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Landroid/os/IBinder;
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method private synthetic lambda$startAnimation$2(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .locals 0

    .line 356
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions;->onFinish(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private onAbort(Landroid/os/IBinder;)V
    .locals 6

    .line 389
    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->findActiveTransition(Landroid/os/IBinder;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 391
    :cond_0
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x3a47217e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v1, "Transition animation aborted due to no-op, notifying core %s"

    invoke-static {v2, v3, v5, v1, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 394
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/window/WindowOrganizer;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    return-void
.end method

.method private onFinish(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .locals 7

    .line 400
    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->findActiveTransition(Landroid/os/IBinder;)I

    move-result v0

    if-gez v0, :cond_0

    .line 402
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const-string p1, "ShellTransitions"

    const-string p2, "Trying to finish a non-running transition. Either remote crashed or  a handler didn\'t properly deal with a merge."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_3

    .line 407
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p2, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p3, 0x67ad5e88

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string p1, "Transition was merged: %s"

    invoke-static {p2, p3, v1, p1, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 409
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 410
    iput-boolean v2, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Z

    .line 411
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    if-eqz p1, :cond_2

    .line 412
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionMerged(Landroid/os/IBinder;)V

    :cond_2
    return-void

    .line 416
    :cond_3
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x724981cb

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v3, v6, v1

    const-string v3, "Transition animation finished, notifying core %s"

    invoke-static {v4, v5, v1, v3, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 419
    :cond_4
    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v3, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v4, v0, 0x1

    .line 420
    :goto_0
    iget-object v5, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 421
    iget-object v5, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 422
    iget-boolean v5, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Z

    if-nez v5, :cond_5

    goto :goto_1

    .line 425
    :cond_5
    iget-object v5, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v5, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 426
    iget-object v5, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v5, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 428
    :cond_6
    :goto_1
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 430
    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 431
    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    invoke-virtual {v3, p1, p2, p3}, Landroid/window/WindowOrganizer;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    .line 432
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    if-ge v0, p1, :cond_8

    .line 433
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-boolean p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Z

    if-nez p1, :cond_7

    goto :goto_3

    .line 434
    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 435
    iget-object p3, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-virtual {p3, p1, p2, p2}, Landroid/window/WindowOrganizer;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    goto :goto_2

    .line 437
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v0, :cond_a

    .line 438
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_9

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, 0x1d40c597

    const-string p3, "All active transition animations finished"

    invoke-static {p0, p1, v1, p3, p2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return-void

    .line 443
    :cond_a
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 444
    iget-object p3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    if-nez p3, :cond_c

    .line 445
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_b

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, 0x122edba4

    const-string p3, "Pending transition after one finished, but it isn\'t ready yet."

    invoke-static {p0, p1, v1, p3, p2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    return-void

    .line 449
    :cond_c
    sget-boolean p3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p3, :cond_d

    sget-object p3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, -0x30f086ad

    const-string v3, "Pending transitions after one finished, so start the next one."

    invoke-static {p3, v0, v1, v3, p2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 451
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->playTransition(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    .line 454
    iget-object p2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-direct {p0, p2}, Lcom/android/wm/shell/transition/Transitions;->findActiveTransition(Landroid/os/IBinder;)I

    move-result p2

    if-gez p2, :cond_e

    return-void

    :cond_e
    add-int/2addr p2, v2

    .line 465
    :goto_4
    iget-object p3, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_11

    .line 466
    iget-object p3, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 467
    iget-boolean p3, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Z

    if-nez p3, :cond_10

    .line 471
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions;->attemptMergeTransition(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    .line 472
    iget-object p2, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-direct {p0, p2}, Lcom/android/wm/shell/transition/Transitions;->findActiveTransition(Landroid/os/IBinder;)I

    move-result p2

    if-gez p2, :cond_f

    return-void

    :cond_f
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 468
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t merge a transition after not-merging a preceding one."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    return-void
.end method

.method private static setupStartState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 13

    .line 234
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/transition/Transitions;->isOpeningType(I)Z

    move-result v0

    .line 235
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 239
    :cond_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 241
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_d

    .line 242
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    .line 243
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    .line 244
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    .line 247
    invoke-static {v4, p0}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v6

    const/4 v7, 0x3

    const/high16 v12, 0x3f800000    # 1.0f

    if-nez v6, :cond_2

    if-eq v5, v3, :cond_1

    if-eq v5, v7, :cond_1

    const/4 v6, 0x6

    if-ne v5, v6, :cond_c

    .line 249
    :cond_1
    invoke-virtual {p1, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v5, p1

    move-object v6, v11

    .line 250
    invoke-virtual/range {v5 .. v10}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 251
    invoke-virtual {p1, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 252
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v11, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_4

    .line 257
    :cond_2
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v6

    if-eqz v6, :cond_3

    move v6, v3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_4

    .line 260
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {p1, v11, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 261
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getRootOffset()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    .line 262
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getRootOffset()Landroid/graphics/Point;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 261
    invoke-virtual {p1, v11, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_4
    if-eq v5, v3, :cond_9

    if-ne v5, v7, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x2

    if-eq v5, v4, :cond_7

    const/4 v4, 0x4

    if-ne v5, v4, :cond_6

    goto :goto_2

    .line 294
    :cond_6
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v1

    sub-int/2addr v4, v2

    invoke-virtual {p1, v11, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_4

    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    sub-int v4, v1, v2

    .line 288
    invoke-virtual {p1, v11, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_4

    .line 291
    :cond_8
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v1

    sub-int/2addr v4, v2

    invoke-virtual {p1, v11, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_4

    .line 266
    :cond_9
    :goto_3
    invoke-virtual {p1, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v5, p1

    move-object v6, v11

    .line 267
    invoke-virtual/range {v5 .. v10}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_b

    .line 270
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v1

    sub-int/2addr v5, v2

    invoke-virtual {p1, v11, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 271
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_a

    .line 274
    invoke-virtual {p1, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    .line 276
    invoke-virtual {p1, v11, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 278
    invoke-virtual {p2, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_4

    :cond_b
    sub-int v4, v1, v2

    .line 282
    invoke-virtual {p1, v11, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 283
    invoke-virtual {p1, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_c
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method


# virtual methods
.method public addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public asRemoteTransitions()Lcom/android/wm/shell/transition/ShellTransitions;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mImpl:Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

    return-object p0
.end method

.method attemptMergeTransition(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .locals 12

    .line 347
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x12b516d4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const-string v0, "Transition %s ready while another transition %s is still animating. Notify the animating transition in case they can be merged"

    invoke-static {v2, v3, v5, v0, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 350
    :cond_0
    iget-object v6, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v7, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object v8, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    iget-object v9, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    iget-object v10, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    new-instance v11, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda0;

    invoke-direct {v11, p0, p2}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    invoke-interface/range {v6 .. v11}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method public getAnimExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 309
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x3fcb06b3

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object v4, v7, v1

    const-string v0, "onTransitionReady %s: %s"

    invoke-static {v5, v6, v3, v0, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 311
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->findActiveTransition(Landroid/os/IBinder;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 318
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 321
    sget-boolean p4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p4, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x187924cb

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p4, v2, v3

    aput-object p2, v2, v1

    const-string p2, "Invalid root leash (%s): %s"

    invoke-static {v0, v4, v3, p2, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 323
    :cond_1
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 324
    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->onAbort(Landroid/os/IBinder;)V

    return-void

    .line 328
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 329
    iput-object p2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 330
    iput-object p3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 331
    iput-object p4, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    if-lez v0, :cond_3

    .line 334
    iget-object p2, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/transition/Transitions;->attemptMergeTransition(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    return-void

    .line 338
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->playTransition(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    return-void

    .line 313
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Got transitionReady for non-active transition "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". expecting one of "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    .line 315
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 316
    invoke-interface {p0}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 315
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method playTransition(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .locals 7

    .line 360
    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    iget-object v1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/transition/Transitions;->setupStartState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 363
    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 364
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x83ef4b7

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const-string v0, " try firstHandler %s"

    invoke-static {v3, v4, v2, v0, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 366
    :cond_0
    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/transition/Transitions;->startAnimation(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, 0x2a269024

    const/4 v0, 0x0

    const-string v1, " animated by firstHandler"

    invoke-static {p0, p1, v2, v1, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_7

    .line 373
    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 374
    :cond_3
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, -0x4dfde11f

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    const-string v3, " try handler %s"

    invoke-static {v4, v5, v2, v3, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 376
    :cond_4
    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/transition/Transitions;->startAnimation(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 377
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, -0x4d529b50

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v3, " animated by %s"

    invoke-static {v4, v5, v2, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 379
    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iput-object p0, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    return-void

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 383
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This shouldn\'t happen, maybe the default handler is broken."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public register(Lcom/android/wm/shell/ShellTaskOrganizer;)V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mPlayerImpl:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    if-nez p0, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-virtual {p1, p0}, Landroid/window/TaskOrganizer;->registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V

    return-void
.end method

.method replaceDefaultHandlerForTest(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 202
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method requestStartTransition(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V
    .locals 7

    .line 485
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x7bc12dcd

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v2, v5, v1

    const-string v0, "Transition requested: %s %s"

    invoke-static {v3, v4, v6, v0, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 487
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->findActiveTransition(Landroid/os/IBinder;)I

    move-result v0

    if-gez v0, :cond_3

    .line 490
    new-instance v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;-><init>(Lcom/android/wm/shell/transition/Transitions$1;)V

    .line 492
    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_0
    if-ltz v3, :cond_2

    .line 493
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-interface {v1, p1, p2}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 495
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 499
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    .line 500
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p2

    .line 499
    invoke-virtual {v1, p2, p1, v2}, Landroid/window/WindowOrganizer;->startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 501
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 488
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

.method startAnimation(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Z
    .locals 4

    .line 355
    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object v1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    iget-object v2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    new-instance v3, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result p0

    return p0
.end method

.method public startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;
    .locals 2

    .line 507
    new-instance v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;-><init>(Lcom/android/wm/shell/transition/Transitions$1;)V

    .line 508
    iput-object p3, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 509
    iget-object p3, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    invoke-virtual {p3, p1, v1, p2}, Landroid/window/WindowOrganizer;->startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 510
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object p0, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    return-object p0
.end method
