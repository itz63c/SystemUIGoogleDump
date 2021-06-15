.class Lcom/android/wm/shell/splitscreen/StageTaskListener;
.super Ljava/lang/Object;
.source "StageTaskListener.java"

# interfaces
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;
    }
.end annotation


# static fields
.field protected static final CONTROLLED_ACTIVITY_TYPES:[I

.field protected static final CONTROLLED_WINDOWING_MODES:[I

.field protected static final CONTROLLED_WINDOWING_MODES_WHEN_ACTIVE:[I


# instance fields
.field private final mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

.field private final mChildrenLeashes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field protected mChildrenTaskInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mRootLeash:Landroid/view/SurfaceControl;

.field protected mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;


# direct methods
.method public static synthetic $r8$lambda$Ww1_k1YuWRwMfK9kdBz3Sx5nOIc(Landroid/view/SurfaceControl;Landroid/graphics/Point;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->lambda$updateChildTaskSurface$0(Landroid/view/SurfaceControl;Landroid/graphics/Point;ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 52
    sput-object v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->CONTROLLED_ACTIVITY_TYPES:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 53
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->CONTROLLED_WINDOWING_MODES:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 55
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->CONTROLLED_WINDOWING_MODES_WHEN_ACTIVE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x6
    .end array-data
.end method

.method constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    .line 75
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    .line 76
    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    const/4 p3, 0x6

    .line 77
    invoke-virtual {p1, p2, p3, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->createRootTask(IILcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    return-void
.end method

.method private static synthetic lambda$updateChildTaskSurface$0(Landroid/view/SurfaceControl;Landroid/graphics/Point;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 6

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p3, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 192
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p3, p0, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    if-eqz p2, :cond_0

    .line 193
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 194
    invoke-virtual {p3, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p3

    move-object v1, p0

    .line 195
    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 196
    invoke-virtual {p3, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method private sendStatusChanged()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, v1, p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;->onStatusChanged(ZZ)V

    return-void
.end method

.method private updateChildTaskSurface(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Z)V
    .locals 1

    .line 189
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 190
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl;Landroid/graphics/Point;Z)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method


# virtual methods
.method public attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, p1, :cond_0

    .line 162
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    :goto_0
    return-void

    .line 166
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There is no surface for taskId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method containsTask(I)Z
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getChildCount()I
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method onSplitScreenListenerRegistered(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;I)V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 182
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 183
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 182
    invoke-interface {p1, v1, p2, v2}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onTaskStageChanged(IIZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 93
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 94
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    invoke-interface {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;->onRootTaskAppeared()V

    .line 95
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->sendStatusChanged()V

    goto :goto_0

    .line 96
    :cond_0
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, v1, :cond_2

    .line 97
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 98
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    .line 100
    invoke-direct {p0, p1, p2, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->updateChildTaskSurface(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Z)V

    .line 101
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    iget-boolean p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    invoke-interface {p2, v0, v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;->onChildTaskStatusChanged(IZZ)V

    .line 102
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_1

    return-void

    .line 106
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->sendStatusChanged()V

    :goto_0
    return-void

    .line 108
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n Unknown task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n mRootTaskInfo: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, v1, :cond_0

    .line 117
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_0

    .line 118
    :cond_0
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    if-ne v2, v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v2, 0x1

    iget-boolean v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;->onChildTaskStatusChanged(IZZ)V

    .line 122
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 124
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1, v0, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->updateChildTaskSurface(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Z)V

    .line 130
    :cond_1
    :goto_0
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_2

    return-void

    .line 134
    :cond_2
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->sendStatusChanged()V

    return-void

    .line 127
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Unknown task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n mRootTaskInfo: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    .line 140
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 141
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v1, v0, :cond_0

    .line 142
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    invoke-interface {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;->onRootTaskVanished()V

    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_0

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 146
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 147
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    const/4 v2, 0x0

    iget-boolean p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    invoke-interface {v1, v0, v2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;->onChildTaskStatusChanged(IZZ)V

    .line 148
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_1

    return-void

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->sendStatusChanged()V

    :goto_0
    return-void

    .line 154
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Unknown task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n mRootTaskInfo: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setBounds(Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, p0, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method setVisibility(ZLandroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, p0, p1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    return-void
.end method
