.class public Lcom/android/systemui/statusbar/CommandQueue;
.super Lcom/android/internal/statusbar/IStatusBar$Stub;
.source "CommandQueue.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/CommandQueue$H;,
        Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/statusbar/IStatusBar$Stub;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/CommandQueue$Callbacks;",
        ">;",
        "Landroid/hardware/display/DisplayManager$DisplayListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/CommandQueue$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayDisabled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLastUpdatedImeDisplayId:I

.field private final mLock:Ljava/lang/Object;

.field private mProtoTracer:Lcom/android/systemui/tracing/ProtoTracer;

.field private final mRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/CommandQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/tracing/ProtoTracer;Lcom/android/systemui/statusbar/commandline/CommandRegistry;)V
    .locals 3

    .line 378
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;-><init>()V

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue$H;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;Lcom/android/systemui/statusbar/CommandQueue$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 158
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisplayDisabled:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 163
    iput v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLastUpdatedImeDisplayId:I

    .line 379
    iput-object p2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mProtoTracer:Lcom/android/systemui/tracing/ProtoTracer;

    .line 380
    iput-object p3, p0, Lcom/android/systemui/statusbar/CommandQueue;->mRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    .line 381
    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iget-object p2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, p2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 383
    invoke-direct {p0, p1, p1, p1}, Lcom/android/systemui/statusbar/CommandQueue;->setDisabled(III)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/commandline/CommandRegistry;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/CommandQueue;ILandroid/os/IBinder;IIZZ)V
    .locals 0

    .line 77
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/statusbar/CommandQueue;->handleShowImeButton(ILandroid/os/IBinder;IIZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/android/systemui/statusbar/CommandQueue;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getDisabled(I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisplayDisabled:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-nez v0, :cond_0

    .line 502
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 503
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisplayDisabled:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getDisabled1(I)I
    .locals 0

    .line 492
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/CommandQueue;->getDisabled(I)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getDisabled2(I)I
    .locals 0

    .line 496
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/CommandQueue;->getDisabled(I)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private handleShowImeButton(ILandroid/os/IBinder;IIZZ)V
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p6, :cond_1

    .line 932
    iget p6, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLastUpdatedImeDisplayId:I

    if-eq p6, p1, :cond_1

    if-eq p6, v0, :cond_1

    .line 936
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CommandQueue;->sendImeInvisibleStatusForPrevNavBar()V

    :cond_1
    const/4 p6, 0x0

    .line 938
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p6, v0, :cond_2

    .line 939
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    .line 942
    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLastUpdatedImeDisplayId:I

    return-void
.end method

.method private sendImeInvisibleStatusForPrevNavBar()V
    .locals 8

    const/4 v0, 0x0

    .line 946
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 947
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLastUpdatedImeDisplayId:I

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setDisabled(III)V
    .locals 1

    .line 488
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisplayDisabled:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abortTransient(I[I)V
    .locals 3

    .line 978
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 979
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x310000    # 4.49994E-39f

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 980
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V
    .locals 5

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    .line 417
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisplayDisabled:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisplayDisabled:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 419
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/CommandQueue;->getDisabled1(I)I

    move-result v3

    .line 420
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/CommandQueue;->getDisabled2(I)I

    move-result v4

    .line 421
    invoke-interface {p1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->disable(IIIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 77
    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 732
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x1b0000

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 733
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public animateCollapsePanels()V
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 518
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 519
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public animateCollapsePanels(IZ)V
    .locals 3

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 525
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 526
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public animateExpandNotificationsPanel()V
    .locals 3

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 510
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x30000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 512
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 3

    .line 537
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 538
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x50000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 539
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 540
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public appTransitionCancelled(I)V
    .locals 3

    .line 664
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 665
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x140000

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 666
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 667
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public appTransitionFinished(I)V
    .locals 3

    .line 693
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 694
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x1f0000

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 695
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 696
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public appTransitionPending(I)V
    .locals 1

    const/4 v0, 0x0

    .line 648
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionPending(IZ)V

    return-void
.end method

.method public appTransitionPending(IZ)V
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 657
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x130000

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 658
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 659
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public appTransitionStarting(IJJ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 672
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(IJJZ)V

    return-void
.end method

.method public appTransitionStarting(IJJZ)V
    .locals 2

    .line 681
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 682
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 683
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz p6, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 684
    :goto_0
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 685
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 686
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 687
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 p1, 0x150000

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 688
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public cancelPreloadRecentApps()V
    .locals 4

    .line 601
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 602
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xb0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 603
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 604
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clickQsTile(Landroid/content/ComponentName;)V
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 746
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x1d0000

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 747
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public disable(III)V
    .locals 1

    const/4 v0, 0x1

    .line 472
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/CommandQueue;->disable(IIIZ)V

    return-void
.end method

.method public disable(IIIZ)V
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 452
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/CommandQueue;->setDisabled(III)V

    .line 453
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 454
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 455
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 456
    iput p2, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 457
    iput p3, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 458
    :goto_0
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 459
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 460
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    if-ne p2, p3, :cond_1

    .line 462
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 463
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    goto :goto_1

    .line 465
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 467
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dismissInattentiveSleepWarning(Z)V
    .locals 2

    .line 914
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 915
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x330000

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 916
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 917
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 3

    .line 609
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 611
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 612
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleSystemKey(I)V
    .locals 3

    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 753
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x210000

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 754
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleWindowManagerLoggingCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 1005
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1006
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 1007
    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1008
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1009
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 p1, 0x390000

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1010
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 1011
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hideAuthenticationDialog()V
    .locals 2

    .line 884
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 885
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x2b0000

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 886
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hideRecentApps(ZZ)V
    .locals 3

    .line 569
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xe0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 571
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 573
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 574
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hideToast(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    .line 849
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 850
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 851
    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 852
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 853
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 p1, 0x350000

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 854
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onBiometricAuthenticated()V
    .locals 2

    .line 859
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 860
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x280000

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 861
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onBiometricError(III)V
    .locals 2

    .line 873
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 874
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 875
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 876
    iput p2, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 877
    iput p3, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 878
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 p1, 0x2a0000

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 879
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onBiometricHelp(Ljava/lang/String;)V
    .locals 2

    .line 866
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 867
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x290000

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 868
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCameraLaunchGestureDetected(I)V
    .locals 3

    .line 715
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 716
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x180000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 717
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 718
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    return-void
.end method

.method public onDisplayReady(I)V
    .locals 3

    .line 891
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 892
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x70000

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 893
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisplayDisabled:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 393
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 397
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onDisplayRemoved(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 393
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onEmergencyActionLaunchGestureDetected()V
    .locals 3

    .line 723
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x3a0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 725
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 726
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onProposedRotationChanged(IZ)V
    .locals 3

    .line 805
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 806
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x260000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 807
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 808
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 809
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onRecentsAnimationStateChanged(Z)V
    .locals 3

    .line 898
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 899
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x2f0000

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 900
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 901
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIZ)V
    .locals 2

    .line 957
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 958
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 959
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 960
    iput p2, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    move p4, p1

    goto :goto_0

    :cond_0
    move p4, p2

    .line 961
    :goto_0
    iput p4, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 962
    iput-object p3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 963
    iput p5, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    move p1, p2

    .line 964
    :goto_1
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 965
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 p1, 0x60000

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 966
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public panelsEnabled()Z
    .locals 3

    const/4 v0, 0x0

    .line 406
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->getDisabled1(I)I

    move-result v1

    .line 407
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->getDisabled2(I)I

    move-result p0

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_0

    .line 408
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/StatusBar;->ONLY_CORE_APPS:Z

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public passThroughShellCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 8

    .line 1023
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1024
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1027
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue$1;

    const-string v4, "Sysui.passThroughShellCommand"

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/CommandQueue$1;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 1046
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public preloadRecentApps()V
    .locals 4

    .line 594
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xa0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 596
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 597
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public recomputeDisableFlags(IZ)V
    .locals 2

    .line 482
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/CommandQueue;->getDisabled1(I)I

    move-result v0

    .line 483
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/CommandQueue;->getDisabled2(I)I

    move-result v1

    .line 484
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/CommandQueue;->disable(IIIZ)V

    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 2

    .line 738
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 739
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x1c0000

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 740
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 77
    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 4

    .line 439
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x10000

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 442
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestWindowMagnificationConnection(Z)V
    .locals 2

    .line 922
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 923
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x380000

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 924
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 925
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 5

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x10000

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 434
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 435
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setImeWindowStatus(ILandroid/os/IBinder;IIZZ)V
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 547
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 549
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 550
    iput p3, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 551
    iput p4, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-eqz p5, :cond_0

    move p4, p1

    goto :goto_0

    :cond_0
    move p4, p3

    .line 552
    :goto_0
    iput p4, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    move p1, p3

    .line 553
    :goto_1
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 554
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 555
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 556
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 557
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setTopAppHidesStatusBar(Z)V
    .locals 2

    .line 782
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x250000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 783
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 784
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setWindowState(III)V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0xc0000

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 636
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showAssistDisclosure()V
    .locals 3

    .line 700
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 701
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x160000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 702
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 703
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZILjava/lang/String;J)V
    .locals 2

    .line 816
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 818
    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 819
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 820
    iput-object p3, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 821
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 822
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 823
    iput p6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 824
    iput-object p7, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 825
    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 826
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 p1, 0x270000

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 827
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 828
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showGlobalActionsMenu()V
    .locals 3

    .line 774
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 775
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x220000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 776
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 777
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showInattentiveSleepWarning()V
    .locals 2

    .line 906
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 907
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x320000

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 908
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 909
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showPictureInPictureMenu()V
    .locals 3

    .line 625
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 626
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1a0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 627
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 628
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showPinningEnterExitToast(Z)V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 760
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x2d0000

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 761
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showPinningEscapeToast()V
    .locals 2

    .line 766
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 767
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x2e0000

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 768
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showRecentApps(Z)V
    .locals 4

    .line 561
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 562
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xd0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 563
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 564
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 565
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showScreenPinningRequest(I)V
    .locals 4

    .line 640
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x120000

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 642
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 643
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showShutdownUi(ZLjava/lang/String;)V
    .locals 3

    .line 789
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x240000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 791
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {p0, v2, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 792
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 793
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;)V
    .locals 2

    .line 834
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 836
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 837
    iput-object p3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 838
    iput-object p4, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 839
    iput-object p5, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 840
    iput-object p7, v1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 841
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 842
    iput p6, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 843
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 p1, 0x340000

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 844
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showTransient(I[I)V
    .locals 3

    .line 971
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 972
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x300000

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 973
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showWirelessChargingAnimation(I)V
    .locals 2

    .line 798
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x2c0000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 799
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 800
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 3

    .line 707
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x170000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 709
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 710
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startTracing()V
    .locals 3

    .line 985
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 986
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mProtoTracer:Lcom/android/systemui/tracing/ProtoTracer;

    if-eqz v1, :cond_0

    .line 987
    invoke-virtual {v1}, Lcom/android/systemui/tracing/ProtoTracer;->start()V

    .line 989
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x360000

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 990
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopTracing()V
    .locals 3

    .line 995
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 996
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mProtoTracer:Lcom/android/systemui/tracing/ProtoTracer;

    if-eqz v1, :cond_0

    .line 997
    invoke-virtual {v1}, Lcom/android/systemui/tracing/ProtoTracer;->stop()V

    .line 999
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x360000

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 1000
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public suppressAmbientDisplay(Z)V
    .locals 2

    .line 1016
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1017
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x370000

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 1018
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 3

    .line 617
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 618
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x190000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 619
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 620
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public togglePanel()V
    .locals 3

    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x230000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 533
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toggleRecentApps()V
    .locals 4

    .line 585
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x90000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 587
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/4 v1, 0x1

    .line 588
    invoke-virtual {p0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 589
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 590
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toggleSplitScreen()V
    .locals 4

    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1e0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 580
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 581
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
