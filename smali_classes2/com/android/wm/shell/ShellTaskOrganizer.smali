.class public Lcom/android/wm/shell/ShellTaskOrganizer;
.super Landroid/window/TaskOrganizer;
.source "ShellTaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/ShellTaskOrganizer$LocusIdListener;,
        Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;,
        Lcom/android/wm/shell/ShellTaskOrganizer$TaskListenerType;
    }
.end annotation


# instance fields
.field private final mLaunchCookieToListener:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLocusIdListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/wm/shell/ShellTaskOrganizer$LocusIdListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSizeCompatUI:Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;

.field private mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

.field private final mTaskListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/window/TaskAppearedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibleTasksWithLocusId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/LocusId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/window/ITaskOrganizerController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/window/TaskOrganizer;-><init>(Landroid/window/ITaskOrganizerController;Ljava/util/concurrent/Executor;)V

    .line 119
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    .line 123
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    .line 126
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLaunchCookieToListener:Landroid/util/ArrayMap;

    .line 130
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    .line 133
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLocusIdListeners:Landroid/util/ArraySet;

    .line 135
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    .line 158
    iput-object p4, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mSizeCompatUI:Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/wm/shell/ShellTaskOrganizer;-><init>(Landroid/window/ITaskOrganizerController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;)V

    return-void
.end method

.method private getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;
    .locals 1

    const/4 v0, 0x0

    .line 477
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;Z)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object p0

    return-object p0
.end method

.method private getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;Z)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;
    .locals 5

    .line 483
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 487
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    .line 488
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 489
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 490
    iget-object v4, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLaunchCookieToListener:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 495
    iget-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLaunchCookieToListener:Landroid/util/ArrayMap;

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-object v4

    .line 502
    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    if-eqz p2, :cond_3

    return-object p2

    .line 506
    :cond_3
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 507
    iget-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    if-eqz p2, :cond_4

    return-object p2

    .line 512
    :cond_4
    invoke-static {p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->taskInfoToTaskListenerType(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p1

    .line 513
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    return-object p0
.end method

.method private notifyLocusIdChange(ILandroid/content/LocusId;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 444
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLocusIdListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLocusIdListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/ShellTaskOrganizer$LocusIdListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/wm/shell/ShellTaskOrganizer$LocusIdListener;->onVisibilityChanged(ILandroid/content/LocusId;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyLocusVisibilityIfNeeded(Landroid/app/TaskInfo;)V
    .locals 6

    .line 417
    iget v0, p1, Landroid/app/TaskInfo;->taskId:I

    .line 418
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/LocusId;

    .line 419
    iget-object v2, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 422
    iget-object v1, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    if-eqz v1, :cond_3

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isVisible:Z

    if-eqz v2, :cond_3

    .line 423
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 424
    iget-object p1, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    invoke-direct {p0, v0, p1, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusIdChange(ILandroid/content/LocusId;Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 426
    iget-boolean v5, p1, Landroid/app/TaskInfo;->isVisible:Z

    if-nez v5, :cond_1

    .line 428
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 429
    iget-object p1, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    invoke-direct {p0, v0, p1, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusIdChange(ILandroid/content/LocusId;Z)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_3

    .line 432
    iget-boolean v2, p1, Landroid/app/TaskInfo;->isVisible:Z

    if-eqz v2, :cond_2

    .line 433
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    iget-object v5, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    invoke-virtual {v2, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 434
    invoke-direct {p0, v0, v1, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusIdChange(ILandroid/content/LocusId;Z)V

    .line 435
    iget-object p1, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    invoke-direct {p0, v0, p1, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusIdChange(ILandroid/content/LocusId;Z)V

    goto :goto_0

    .line 437
    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 438
    invoke-direct {p0, v0, v1, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusIdChange(ILandroid/content/LocusId;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private notifySizeCompatUI(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .locals 12

    .line 458
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mSizeCompatUI:Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 464
    invoke-interface {p2}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->supportSizeCompatUI()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInSizeCompat:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mSizeCompatUI:Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityToken:Landroid/os/IBinder;

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->onSizeCompatInfoChanged(IILandroid/content/res/Configuration;Landroid/os/IBinder;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    return-void

    .line 466
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mSizeCompatUI:Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;

    iget v7, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v8, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->onSizeCompatInfoChanged(IILandroid/content/res/Configuration;Landroid/os/IBinder;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    return-void
.end method

.method private onTaskAppeared(Landroid/window/TaskAppearedInfo;)V
    .locals 10

    .line 333
    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 334
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 336
    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;Z)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v1

    .line 337
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz v3, :cond_0

    int-to-long v3, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, -0x4efd4dca

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v9

    aput-object v0, v8, v2

    invoke-static {v5, v6, v2, v7, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 339
    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 341
    :cond_1
    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusVisibilityIfNeeded(Landroid/app/TaskInfo;)V

    .line 342
    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifySizeCompatUI(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    return-void
.end method

.method static taskInfoToTaskListenerType(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation build Lcom/android/wm/shell/ShellTaskOrganizer$TaskListenerType;
    .end annotation

    .line 518
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, -0x3

    return p0

    :cond_1
    const/4 p0, -0x4

    return p0

    :cond_2
    const/4 p0, -0x2

    return p0
.end method

.method public static taskListenerTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p0    # I
        .annotation build Lcom/android/wm/shell/ShellTaskOrganizer$TaskListenerType;
        .end annotation
    .end param

    const/4 v0, -0x4

    if-eq p0, v0, :cond_3

    const/4 v0, -0x3

    if-eq p0, v0, :cond_2

    const/4 v0, -0x2

    if-eq p0, v0, :cond_1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taskId#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "TASK_LISTENER_TYPE_UNDEFINED"

    return-object p0

    :cond_1
    const-string p0, "TASK_LISTENER_TYPE_FULLSCREEN"

    return-object p0

    :cond_2
    const-string p0, "TASK_LISTENER_TYPE_MULTI_WINDOW"

    return-object p0

    :cond_3
    const-string p0, "TASK_LISTENER_TYPE_PIP"

    return-object p0
.end method

.method private updateTaskListenerIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z
    .locals 0

    if-ne p3, p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p3, :cond_1

    .line 408
    invoke-interface {p3, p1}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 411
    invoke-interface {p4, p1, p2}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public varargs addListenerForType(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;[I)V
    .locals 9
    .param p2    # [I
        .annotation build Lcom/android/wm/shell/ShellTaskOrganizer$TaskListenerType;
        .end annotation
    .end param

    .line 217
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x76a8926f

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v3

    aput-object v4, v8, v2

    invoke-static {v5, v6, v3, v7, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :cond_0
    array-length v1, p2

    :goto_0
    if-ge v3, v1, :cond_4

    aget v4, p2, v3

    .line 221
    iget-object v5, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 225
    iget-object v5, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    iget-object v4, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_1
    if-ltz v4, :cond_2

    .line 229
    iget-object v5, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TaskAppearedInfo;

    .line 230
    invoke-virtual {v5}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v6

    if-eq v6, p1, :cond_1

    goto :goto_2

    .line 232
    :cond_1
    invoke-virtual {v5}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-virtual {v5}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-interface {p1, v6, v5}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Listener for listenerType="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " already exists"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 235
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addLocusIdListener(Lcom/android/wm/shell/ShellTaskOrganizer$LocusIdListener;)V
    .locals 5

    .line 285
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLocusIdListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 287
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    .line 289
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/LocusId;

    const/4 v4, 0x1

    .line 288
    invoke-interface {p1, v2, v3, v4}, Lcom/android/wm/shell/ShellTaskOrganizer$LocusIdListener;->onVisibilityChanged(ILandroid/content/LocusId;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    if-eqz p0, :cond_0

    .line 306
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->addStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public copySplashScreenView(I)V
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    if-eqz p0, :cond_0

    .line 321
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->copySplashScreenView(I)V

    :cond_0
    return-void
.end method

.method public createRootTask(IILcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .locals 11

    .line 177
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz v0, :cond_0

    int-to-long v0, p1

    int-to-long v2, p2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, -0x4e3908db

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v4, v9, v0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :cond_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 180
    invoke-virtual {p0, v0, p3}, Lcom/android/wm/shell/ShellTaskOrganizer;->setPendingLaunchCookieListener(Landroid/os/IBinder;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    .line 181
    invoke-super {p0, p1, p2, v0}, Landroid/window/TaskOrganizer;->createRootTask(IILandroid/os/IBinder;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7

    .line 548
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 549
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ShellTaskOrganizer"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Listeners"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    iget-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    .line 554
    iget-object v3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 555
    iget-object v4, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    .line 556
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->taskListenerTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    invoke-interface {v4, p1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 560
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 561
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Tasks"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    iget-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    .line 563
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 564
    iget-object v3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TaskAppearedInfo;

    .line 565
    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v3

    .line 566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " listener="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 569
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 570
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLaunchCookieToListener:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Launch Cookies"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    iget-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLaunchCookieToListener:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_2

    .line 572
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLaunchCookieToListener:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 573
    iget-object v3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLaunchCookieToListener:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    .line 574
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " cookie="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " listener="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 576
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/TaskAppearedInfo;

    if-eqz p0, :cond_0

    .line 398
    invoke-virtual {p0}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 399
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public initStartingWindow(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 9

    .line 368
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_0
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v1, v1

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x3a782654

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v3, v4, v6, v5, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 370
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 372
    invoke-interface {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 374
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_0
    new-instance v1, Landroid/window/TaskAppearedInfo;

    invoke-direct {v1, p1, p2}, Landroid/window/TaskAppearedInfo;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    invoke-direct {p0, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->onTaskAppeared(Landroid/window/TaskAppearedInfo;)V

    .line 329
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 9

    .line 347
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_0
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v1, v1

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x966826d

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v3, v4, v6, v5, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskAppearedInfo;

    .line 350
    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v2

    .line 351
    invoke-direct {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v3

    .line 352
    iget-object v4, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    new-instance v6, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Landroid/window/TaskAppearedInfo;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 354
    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    .line 353
    invoke-direct {p0, p1, v4, v2, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->updateTaskListenerIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    .line 356
    invoke-interface {v3, p1}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 358
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusVisibilityIfNeeded(Landroid/app/TaskInfo;)V

    if-nez v2, :cond_2

    .line 359
    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ActivityManager$RunningTaskInfo;->equalsForSizeCompat(Landroid/app/TaskInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 361
    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifySizeCompatUI(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    .line 363
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 9

    .line 379
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_0
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v3, v1

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, -0x348034fb    # -1.6763653E7f

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-static {v1, v5, v6, v2, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 381
    :cond_0
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 382
    iget-object v3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v3

    .line 383
    iget-object v4, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v3, :cond_1

    .line 385
    invoke-interface {v3, p1}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 387
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusVisibilityIfNeeded(Landroid/app/TaskInfo;)V

    .line 389
    invoke-direct {p0, p1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifySizeCompatUI(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    .line 390
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerOrganizer()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/TaskAppearedInfo;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x229b5522

    invoke-static {v1, v4, v3, v2, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :cond_0
    invoke-super {p0}, Landroid/window/TaskOrganizer;->registerOrganizer()Ljava/util/List;

    move-result-object v1

    move v4, v3

    .line 166
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 167
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TaskAppearedInfo;

    .line 168
    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v6, v6

    invoke-virtual {v5}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v10, -0x6459ea3f

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v11, v3

    const/4 v6, 0x1

    aput-object v8, v11, v6

    invoke-static {v9, v10, v6, v2, v11}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->onTaskAppeared(Landroid/window/TaskAppearedInfo;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 173
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeListener(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .locals 8

    .line 242
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, -0x4fe30a59

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v4, v5, v7, v2, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    const-string p0, "ShellTaskOrganizer"

    const-string p1, "No registered listener found"

    .line 246
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    monitor-exit v0

    return-void

    .line 251
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 252
    iget-object v5, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_0
    if-ltz v5, :cond_3

    .line 253
    iget-object v6, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TaskAppearedInfo;

    .line 254
    invoke-virtual {v6}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v7

    if-eq v7, p1, :cond_2

    goto :goto_1

    .line 256
    :cond_2
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 260
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 263
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_2
    if-ltz p1, :cond_4

    .line 264
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskAppearedInfo;

    .line 265
    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    .line 266
    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v1

    .line 265
    invoke-direct {p0, v3, v5, v2, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->updateTaskListenerIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 268
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeStartingWindow(ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    if-eqz p0, :cond_0

    .line 314
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->removeStartingWindow(ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V

    :cond_0
    return-void
.end method

.method public setPendingLaunchCookieListener(Landroid/os/IBinder;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLaunchCookieToListener:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
