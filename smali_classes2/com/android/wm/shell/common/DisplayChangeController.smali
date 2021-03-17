.class public Lcom/android/wm/shell/common/DisplayChangeController;
.super Ljava/lang/Object;
.source "DisplayChangeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;,
        Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl;
    }
.end annotation


# instance fields
.field private final mControllerImpl:Landroid/view/IDisplayWindowRotationController;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mRotationListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWmService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/view/IWindowManager;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mRotationListener:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mTmpListeners:Ljava/util/ArrayList;

    .line 48
    iput-object p2, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 49
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mWmService:Landroid/view/IWindowManager;

    .line 50
    new-instance p2, Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl;-><init>(Lcom/android/wm/shell/common/DisplayChangeController;Lcom/android/wm/shell/common/DisplayChangeController$1;)V

    iput-object p2, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mControllerImpl:Landroid/view/IDisplayWindowRotationController;

    .line 52
    :try_start_0
    invoke-interface {p1, p2}, Landroid/view/IWindowManager;->setDisplayWindowRotationController(Landroid/view/IDisplayWindowRotationController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 54
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to register rotation controller"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$100(Lcom/android/wm/shell/common/DisplayChangeController;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/common/DisplayChangeController;IIILandroid/view/IDisplayWindowRotationCallback;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/common/DisplayChangeController;->onRotateDisplay(IIILandroid/view/IDisplayWindowRotationCallback;)V

    return-void
.end method

.method private onRotateDisplay(IIILandroid/view/IDisplayWindowRotationCallback;)V
    .locals 4

    .line 78
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mRotationListener:Ljava/util/ArrayList;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mTmpListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 82
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mTmpListeners:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mRotationListener:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mTmpListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    .line 85
    invoke-interface {v1, p1, p2, p3, v0}, Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;->onRotateDisplay(IIILandroid/window/WindowContainerTransaction;)V

    goto :goto_0

    .line 88
    :cond_0
    :try_start_1
    invoke-interface {p4, p3, v0}, Landroid/view/IDisplayWindowRotationCallback;->continueRotateDisplay(ILandroid/window/WindowContainerTransaction;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p0

    .line 83
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public addRotationListener(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mRotationListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mRotationListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeRotationListener(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mRotationListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mRotationListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
