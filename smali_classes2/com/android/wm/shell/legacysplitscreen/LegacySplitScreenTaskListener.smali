.class Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;
.super Ljava/lang/Object;
.source "LegacySplitScreenTaskListener.java"

# interfaces
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacySplitScreenTaskListener"


# instance fields
.field mHomeBounds:Landroid/graphics/Rect;

.field private final mLeashByTaskId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mPositionByTaskId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

.field mPrimaryDim:Landroid/view/SurfaceControl;

.field mPrimarySurface:Landroid/view/SurfaceControl;

.field mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

.field mSecondaryDim:Landroid/view/SurfaceControl;

.field mSecondarySurface:Landroid/view/SurfaceControl;

.field final mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

.field private mSplitScreenSupported:Z

.field private final mSplitTransitions:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;

.field final mSurfaceSession:Landroid/view/SurfaceSession;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;


# direct methods
.method public static synthetic $r8$lambda$eutiosxp7eWeztfZZcjBlJVbKXY(Landroid/view/SurfaceControl;Landroid/graphics/Point;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->lambda$updateChildTaskSurface$0(Landroid/view/SurfaceControl;Landroid/graphics/Point;ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mLeashByTaskId:Landroid/util/SparseArray;

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPositionByTaskId:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mHomeBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenSupported:Z

    .line 68
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 76
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    .line 77
    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 78
    new-instance p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;

    iget-object v0, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-direct {p2, v0, p3, p1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;-><init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;)V

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitTransitions:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;

    .line 80
    invoke-virtual {p3, p2}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    .line 81
    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    return-void
.end method

.method private handleChildTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mLeashByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPositionByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    invoke-direct {v2, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 226
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->updateChildTaskSurface(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Z)V

    return-void
.end method

.method private handleChildTaskChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 230
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_0

    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mLeashByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    .line 232
    invoke-direct {p0, p1, v0, v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->updateChildTaskSurface(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Z)V

    return-void
.end method

.method private handleTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 9

    .line 254
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenSupported:Z

    if-nez v0, :cond_0

    .line 260
    sget-object p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got handleTaskInfoChanged when not initialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    .line 265
    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    .line 266
    :goto_1
    iget-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-nez v5, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v4

    .line 267
    :goto_2
    iget-object v6, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-nez v6, :cond_4

    move v6, v3

    goto :goto_3

    :cond_4
    move v6, v4

    .line 268
    :goto_3
    iget-object v7, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v7}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v8}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    if-ne v7, v8, :cond_5

    .line 269
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_4

    .line 270
    :cond_5
    iget-object v7, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v7}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v8}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    if-ne v7, v8, :cond_6

    .line 271
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 276
    :cond_6
    :goto_4
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_7

    return-void

    .line 277
    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-nez p1, :cond_8

    move p1, v3

    goto :goto_5

    :cond_8
    move p1, v4

    .line 278
    :goto_5
    iget-object v7, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-nez v7, :cond_9

    move v8, v3

    goto :goto_6

    :cond_9
    move v8, v4

    :goto_6
    if-eq v7, v2, :cond_b

    if-ne v7, v1, :cond_a

    .line 279
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    .line 281
    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isHomeStackResizable()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_7

    :cond_a
    move v3, v4

    :cond_b
    :goto_7
    if-ne p1, v5, :cond_c

    if-ne v6, v8, :cond_c

    if-ne v0, v3, :cond_c

    return-void

    :cond_c
    if-nez p1, :cond_11

    if-eqz v8, :cond_d

    goto :goto_9

    :cond_d
    if-eqz v3, :cond_10

    .line 317
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 318
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getWmProxy()Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    .line 319
    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getSecondaryRoot()Landroid/window/WindowContainerToken;

    move-result-object v1

    .line 318
    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->getHomeAndRecentsTasks(Ljava/util/List;Landroid/window/WindowContainerToken;)Z

    move v0, v4

    .line 320
    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 321
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 322
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mLeashByTaskId:Landroid/util/SparseArray;

    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    if-eqz v2, :cond_e

    .line 324
    invoke-direct {p0, v1, v2, v4}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->updateChildTaskSurface(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Z)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 330
    :cond_f
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->ensureMinimizedSplit()V

    goto :goto_a

    .line 333
    :cond_10
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->ensureNormalSplit()V

    goto :goto_a

    .line 294
    :cond_11
    :goto_9
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 301
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0, v4}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->startDismissSplit(Z)V

    goto :goto_a

    :cond_12
    if-nez p1, :cond_13

    if-eqz v5, :cond_13

    if-eqz v6, :cond_13

    .line 310
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->startEnterSplit()V

    :cond_13
    :goto_a
    return-void
.end method

.method private static synthetic lambda$updateChildTaskSurface$0(Landroid/view/SurfaceControl;Landroid/graphics/Point;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 6

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p3, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 240
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p3, p0, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    if-eqz p2, :cond_0

    .line 241
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 242
    invoke-virtual {p3, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p3

    move-object v1, p0

    .line 243
    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 244
    invoke-virtual {p3, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method private updateChildTaskSurface(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Z)V
    .locals 1

    .line 237
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 238
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl;Landroid/graphics/Point;Z)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method


# virtual methods
.method public attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mLeashByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mLeashByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    return-void

    .line 340
    :cond_0
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

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSplitScreenSupported="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenSupported:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPrimary.taskId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mSecondary.taskId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method getSplitTransitions()Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitTransitions:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;

    return-object p0
.end method

.method getTaskOrganizer()Landroid/window/TaskOrganizer;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    return-object p0
.end method

.method getTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method init()V
    .locals 3

    .line 85
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->createRootTask(IILcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    const/4 v1, 0x4

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->createRootTask(IILcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->removeListener(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    .line 94
    throw v0

    .line 96
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method isSplitScreenSupported()Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenSupported:Z

    return p0
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 12

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->handleChildTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 124
    monitor-exit p0

    return-void

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v3, :cond_2

    .line 129
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v7, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v7, v7

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v10, -0x5135056e

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v0, v11, v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v5

    invoke-static {v9, v10, v1, v2, v11}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_1
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 132
    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimarySurface:Landroid/view/SurfaceControl;

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_4

    .line 134
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v7, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v7, v7

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v10, 0x3a888c84

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v0, v11, v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v5

    invoke-static {v9, v10, v1, v2, v11}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :cond_3
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 137
    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondarySurface:Landroid/view/SurfaceControl;

    goto :goto_0

    .line 139
    :cond_4
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz p2, :cond_5

    sget-object p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v7, p1

    int-to-long v0, v0

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v9, -0x11cd24bd

    const/16 v10, 0x14

    new-array v11, v3, [Ljava/lang/Object;

    aput-object p2, v11, v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v11, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v11, v4

    invoke-static {p1, v9, v10, v2, v11}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_5
    :goto_0
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenSupported:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimarySurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondarySurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_7

    .line 144
    iput-boolean v5, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenSupported:Z

    .line 145
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->onSplitScreenSupported()V

    .line 146
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz p1, :cond_6

    sget-object p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, 0x1c39b382

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v6

    invoke-static {p2, v0, v6, v2, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :cond_6
    new-instance p1, Landroid/view/SurfaceControl$Builder;

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {p1, p2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimarySurface:Landroid/view/SurfaceControl;

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string p2, "Primary Divider Dim"

    .line 151
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string p2, "SplitScreenTaskOrganizer.onTaskAppeared"

    .line 152
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimaryDim:Landroid/view/SurfaceControl;

    .line 154
    new-instance p1, Landroid/view/SurfaceControl$Builder;

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {p1, p2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondarySurface:Landroid/view/SurfaceControl;

    .line 155
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string p2, "Secondary Divider Dim"

    .line 156
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string p2, "SplitScreenTaskOrganizer.onTaskAppeared"

    .line 157
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondaryDim:Landroid/view/SurfaceControl;

    .line 159
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 160
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimaryDim:Landroid/view/SurfaceControl;

    const v0, 0x7fffffff

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 161
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimaryDim:Landroid/view/SurfaceControl;

    new-array v1, v3, [F

    const/4 v2, 0x0

    aput v2, v1, v6

    aput v2, v1, v5

    aput v2, v1, v4

    invoke-virtual {p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 162
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondaryDim:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 163
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondaryDim:Landroid/view/SurfaceControl;

    new-array v0, v3, [F

    aput v2, v0, v6

    aput v2, v0, v5

    aput v2, v0, v4

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 164
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 167
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    .line 202
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eqz v0, :cond_0

    return-void

    .line 205
    :cond_0
    monitor-enter p0

    .line 206
    :try_start_0
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPositionByTaskId:Landroid/util/SparseArray;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    monitor-exit p0

    return-void

    .line 214
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->handleChildTaskChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_0

    .line 216
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->handleTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPositionByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    new-instance v2, Landroid/graphics/Point;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    invoke-direct {v2, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4

    .line 172
    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPositionByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 174
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mLeashByTaskId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 176
    monitor-exit p0

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 180
    invoke-virtual {v3, v0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 181
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v3, :cond_2

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 182
    invoke-virtual {p1, v3}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 184
    :goto_1
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenSupported:Z

    if-eqz p1, :cond_4

    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    .line 185
    :cond_3
    iput-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenSupported:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 188
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimaryDim:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 189
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondaryDim:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 190
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimarySurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 191
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondarySurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 192
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 195
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->onTaskVanished()V

    .line 197
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 357
    sget-object p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->TAG:Ljava/lang/String;

    return-object p0
.end method
