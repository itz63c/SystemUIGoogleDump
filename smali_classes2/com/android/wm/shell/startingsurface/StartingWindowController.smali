.class public Lcom/android/wm/shell/startingsurface/StartingWindowController;
.super Ljava/lang/Object;
.source "StartingWindowController.java"

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;,
        Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/wm/shell/common/RemoteCallable<",
        "Lcom/android/wm/shell/startingsurface/StartingWindowController;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StartingWindowController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImpl:Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;

.field private final mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

.field private final mStartingWindowTypeAlgorithm:Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;

.field private mTaskLaunchingCallback:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Nsve7j-qdEujmRJ49hHw0qVTWtY(Lcom/android/wm/shell/startingsurface/StartingWindowController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->lambda$copySplashScreenView$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PSvN_iYbAze6X2c1OXkMhBsWeHo(Lcom/android/wm/shell/startingsurface/StartingWindowController;Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->lambda$addStartingWindow$0(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mu8Zh3Pb7wJ75aqh-RBXmI11kHY(Lcom/android/wm/shell/startingsurface/StartingWindowController;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->lambda$removeStartingWindow$2(ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;Lcom/android/wm/shell/common/TransactionPool;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;Lcom/android/wm/shell/startingsurface/StartingWindowController$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mImpl:Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;

    .line 78
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    invoke-direct {v0, p1, p2, p4}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TransactionPool;)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    .line 80
    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingWindowTypeAlgorithm:Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;

    .line 81
    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$addStartingWindow$0(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V
    .locals 6

    const-wide/16 v0, 0x20

    const-string v2, "addStartingWindow"

    .line 119
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingWindowTypeAlgorithm:Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;

    invoke-interface {v2, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;->getSuggestedWindowType(Landroid/window/StartingWindowInfo;)I

    move-result v2

    .line 123
    iget-object v3, p1, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 124
    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskLaunchingCallback:Ljava/util/function/BiConsumer;

    if-eqz v4, :cond_0

    invoke-direct {p0, v2}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->shouldSendToListener(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskLaunchingCallback:Ljava/util/function/BiConsumer;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 128
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->addSplashScreenStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;Z)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 131
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->addSplashScreenStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 134
    iget-object v2, p1, Landroid/window/StartingWindowInfo;->mTaskSnapshot:Landroid/window/TaskSnapshot;

    .line 135
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->makeTaskSnapshotWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;Landroid/window/TaskSnapshot;)V

    .line 141
    :cond_3
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private synthetic lambda$copySplashScreenView$1(I)V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->copySplashScreenView(I)V

    return-void
.end method

.method private synthetic lambda$removeStartingWindow$2(ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->removeStartingWindow(ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private shouldSendToListener(I)Z
    .locals 0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asStartingSurface()Lcom/android/wm/shell/startingsurface/StartingSurface;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mImpl:Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;

    return-object p0
.end method

.method public copySplashScreenView(I)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public removeStartingWindow(ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V
    .locals 8

    .line 156
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v7, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V

    invoke-interface {v0, v7}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method setStartingWindowListener(Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskLaunchingCallback:Ljava/util/function/BiConsumer;

    return-void
.end method
