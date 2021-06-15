.class Lcom/android/wm/shell/apppairs/AppPair;
.super Ljava/lang/Object;
.source "AppPair.java"

# interfaces
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;
.implements Lcom/android/wm/shell/common/split/SplitLayout$LayoutChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppPair"


# instance fields
.field private final mController:Lcom/android/wm/shell/apppairs/AppPairsController;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field private mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mRootTaskLeash:Landroid/view/SurfaceControl;

.field private mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private mTaskInfo1:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mTaskInfo2:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mTaskLeash1:Landroid/view/SurfaceControl;

.field private mTaskLeash2:Landroid/view/SurfaceControl;


# direct methods
.method public static synthetic $r8$lambda$9F6aueECDzRw2dgzt7MEVi0RsnU(Lcom/android/wm/shell/apppairs/AppPair;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/apppairs/AppPair;->lambda$onTaskInfoChanged$2(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FH4gNGvJzIck5BdAEmrm_C4CfO0(Lcom/android/wm/shell/apppairs/AppPair;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/apppairs/AppPair;->lambda$onBoundsChanged$4(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P70NqBDKk7WZZxxpILx3Xo1qbQE(Lcom/android/wm/shell/apppairs/AppPair;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/apppairs/AppPair;->lambda$onTaskAppeared$1(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SLjql9mcd45mM1yMfVDW955V9Dg(Lcom/android/wm/shell/apppairs/AppPair;Landroid/view/SurfaceControl$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/apppairs/AppPair;->lambda$pair$0(Landroid/view/SurfaceControl$Builder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uRZuGY1fq7AGLFpbZ839RXghMy4(Lcom/android/wm/shell/apppairs/AppPair;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/apppairs/AppPair;->lambda$onBoundsChanging$3(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/apppairs/AppPairsController;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mController:Lcom/android/wm/shell/apppairs/AppPairsController;

    .line 66
    invoke-virtual {p1}, Lcom/android/wm/shell/apppairs/AppPairsController;->getSyncTransactionQueue()Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 67
    invoke-virtual {p1}, Lcom/android/wm/shell/apppairs/AppPairsController;->getDisplayController()Lcom/android/wm/shell/common/DisplayController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 68
    invoke-virtual {p1}, Lcom/android/wm/shell/apppairs/AppPairsController;->getDisplayImeController()Lcom/android/wm/shell/common/DisplayImeController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    return-void
.end method

.method private getTaskId1()I
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo1:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private getTaskId2()I
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo2:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private synthetic lambda$onBoundsChanged$4(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    const v0, 0x7fffffff

    .line 290
    invoke-virtual {p5, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p5

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    .line 291
    invoke-virtual {p5, p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash1:Landroid/view/SurfaceControl;

    iget p5, p3, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    .line 292
    invoke-virtual {p1, p2, p5, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash2:Landroid/view/SurfaceControl;

    iget p3, p4, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    .line 293
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash1:Landroid/view/SurfaceControl;

    const/4 p3, 0x0

    .line 295
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash2:Landroid/view/SurfaceControl;

    .line 296
    invoke-virtual {p1, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private synthetic lambda$onBoundsChanging$3(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 267
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    .line 268
    invoke-virtual {p5, p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash1:Landroid/view/SurfaceControl;

    iget p5, p3, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    .line 269
    invoke-virtual {p1, p2, p5, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash2:Landroid/view/SurfaceControl;

    iget p5, p4, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    iget v0, p4, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    .line 270
    invoke-virtual {p1, p2, p5, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash1:Landroid/view/SurfaceControl;

    .line 273
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p5

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {p1, p2, p5, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash2:Landroid/view/SurfaceControl;

    .line 274
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private synthetic lambda$onTaskAppeared$1(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    const v0, 0x7fffffff

    .line 171
    invoke-virtual {p3, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash1:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo1:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    .line 172
    invoke-virtual {p3, v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash2:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo2:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    .line 174
    invoke-virtual {p3, v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    .line 176
    invoke-virtual {p3, p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskLeash:Landroid/view/SurfaceControl;

    .line 177
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash1:Landroid/view/SurfaceControl;

    .line 178
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash2:Landroid/view/SurfaceControl;

    .line 179
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private synthetic lambda$onTaskInfoChanged$2(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 188
    iget-boolean p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz p1, :cond_0

    .line 189
    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 191
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_0
    return-void
.end method

.method private synthetic lambda$pair$0(Landroid/view/SurfaceControl$Builder;)V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    return-void
.end method

.method private unpair(Landroid/window/WindowContainerToken;)V
    .locals 8

    .line 129
    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo1:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 130
    iget-object v1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo2:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 131
    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 134
    iget-object v3, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/window/WindowContainerTransaction;->setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    move-result-object v3

    iget-object v5, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v6, 0x0

    .line 135
    invoke-virtual {v3, v5, v6}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    move-result-object v3

    if-ne v0, p1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    const/4 v7, 0x0

    .line 136
    invoke-virtual {v3, v0, v7, v5}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    move-result-object v3

    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v6

    .line 137
    :goto_1
    invoke-virtual {v3, v1, v7, v4}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    move-result-object p1

    .line 138
    invoke-virtual {p1, v0, v6}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    move-result-object p1

    .line 139
    invoke-virtual {p1, v1, v6}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 140
    iget-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mController:Lcom/android/wm/shell/apppairs/AppPairsController;

    invoke-virtual {p1}, Lcom/android/wm/shell/apppairs/AppPairsController;->getTaskOrganizer()Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 142
    iput-object v7, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo1:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 143
    iput-object v7, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo2:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 144
    iget-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->release()V

    .line 145
    iput-object v7, p0, Lcom/android/wm/shell/apppairs/AppPair;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    return-void
.end method


# virtual methods
.method public attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/android/wm/shell/apppairs/AppPair;->getRootTaskId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 223
    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    goto :goto_0

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/apppairs/AppPair;->getTaskId1()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 225
    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash1:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    goto :goto_0

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/apppairs/AppPair;->getTaskId2()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 227
    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash2:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    :goto_0
    return-void

    .line 229
    :cond_2
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

.method contains(I)Z
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/android/wm/shell/apppairs/AppPair;->getRootTaskId()I

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/wm/shell/apppairs/AppPair;->getTaskId1()I

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/wm/shell/apppairs/AppPair;->getTaskId2()I

    move-result p0

    if-ne p1, p0, :cond_0

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

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Root taskId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/wm/shell/apppairs/AppPair;->getRootTaskId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " winMode="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 239
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 238
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    iget-object p2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo1:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p2, :cond_0

    .line 241
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1 taskId="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo1:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo1:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 242
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 241
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo2:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p2, :cond_1

    .line 245
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "2 taskId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo2:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo2:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 246
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 245
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method getRootTaskId()I
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public onBoundsChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V
    .locals 7

    .line 279
    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 282
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v5

    .line 283
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object v6

    .line 284
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 285
    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo1:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v5}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo2:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 286
    invoke-virtual {v0, v1, v6}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 287
    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mController:Lcom/android/wm/shell/apppairs/AppPairsController;

    invoke-virtual {v0}, Lcom/android/wm/shell/apppairs/AppPairsController;->getTaskOrganizer()Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 288
    iget-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v0, Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda2;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/apppairs/AppPair;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public onBoundsChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V
    .locals 7

    .line 262
    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 265
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v5

    .line 266
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object v6

    .line 267
    iget-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v0, Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda3;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/apppairs/AppPair;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public onSnappedToDismiss(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo1:Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo2:Landroid/app/ActivityManager$RunningTaskInfo;

    :goto_0
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/apppairs/AppPair;->unpair(Landroid/window/WindowContainerToken;)V

    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_3

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/apppairs/AppPair;->getTaskId1()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 154
    iput-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo1:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 155
    iput-object p2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash1:Landroid/view/SurfaceControl;

    goto :goto_1

    .line 156
    :cond_1
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-direct {p0}, Lcom/android/wm/shell/apppairs/AppPair;->getTaskId2()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 157
    iput-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo2:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 158
    iput-object p2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash2:Landroid/view/SurfaceControl;

    goto :goto_1

    .line 160
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown task="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 151
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 152
    iput-object p2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskLeash:Landroid/view/SurfaceControl;

    .line 163
    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash1:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash2:Landroid/view/SurfaceControl;

    if-nez p1, :cond_4

    goto :goto_2

    .line 165
    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    .line 166
    iget-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    .line 167
    iget-object p2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 170
    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/apppairs/AppPair;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 185
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0}, Lcom/android/wm/shell/apppairs/AppPair;->getRootTaskId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    iget-boolean v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eq v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/apppairs/AppPair;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 195
    :cond_0
    iput-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 197
    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz v0, :cond_3

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 198
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 199
    iget-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/apppairs/AppPair;->onBoundsChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V

    goto :goto_0

    .line 201
    :cond_1
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-direct {p0}, Lcom/android/wm/shell/apppairs/AppPair;->getTaskId1()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 202
    iput-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo1:Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_0

    .line 203
    :cond_2
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-direct {p0}, Lcom/android/wm/shell/apppairs/AppPair;->getTaskId2()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 204
    iput-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo2:Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_3
    :goto_0
    return-void

    .line 206
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 212
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0}, Lcom/android/wm/shell/apppairs/AppPair;->getRootTaskId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mController:Lcom/android/wm/shell/apppairs/AppPairsController;

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/apppairs/AppPairsController;->unpair(IZ)V

    goto :goto_0

    .line 215
    :cond_0
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-direct {p0}, Lcom/android/wm/shell/apppairs/AppPair;->getTaskId1()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-direct {p0}, Lcom/android/wm/shell/apppairs/AppPair;->getTaskId2()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 216
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mController:Lcom/android/wm/shell/apppairs/AppPairsController;

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/apppairs/AppPairsController;->unpair(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method pair(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 13

    .line 88
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v5, v0

    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v7, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v10, -0x2c400a5a

    const/4 v11, 0x5

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v12, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v12, v4

    aput-object v0, v12, v1

    invoke-static {v9, v10, v11, v2, v12}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :cond_0
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    if-eqz v0, :cond_2

    iget-boolean v5, p2, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    if-nez v5, :cond_1

    goto/16 :goto_0

    .line 99
    :cond_1
    iput-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo1:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 100
    iput-object p2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo2:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 101
    new-instance v0, Lcom/android/wm/shell/common/split/SplitLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/wm/shell/apppairs/AppPair;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SplitDivider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 102
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v8

    iget-object v1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    new-instance v11, Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda4;

    invoke-direct {v11, p0}, Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/apppairs/AppPair;)V

    iget-object v12, p0, Lcom/android/wm/shell/apppairs/AppPair;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    move-object v6, v0

    move-object v10, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/wm/shell/common/split/SplitLayout;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitLayout$LayoutChangeListener;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;Lcom/android/wm/shell/common/DisplayImeController;)V

    iput-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 106
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 107
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 108
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, v3}, Landroid/window/WindowContainerTransaction;->setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 111
    invoke-virtual {v1, p1, v2, v4}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 112
    invoke-virtual {v1, p2, v2, v4}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    const/4 v2, 0x6

    .line 113
    invoke-virtual {v1, p1, v2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    .line 114
    invoke-virtual {v1, p2, v2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 115
    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 116
    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 119
    invoke-virtual {p1, p2, v4}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 120
    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mController:Lcom/android/wm/shell/apppairs/AppPairsController;

    invoke-virtual {p0}, Lcom/android/wm/shell/apppairs/AppPairsController;->getTaskOrganizer()Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return v4

    .line 92
    :cond_2
    :goto_0
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz p0, :cond_3

    iget-boolean p0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p2, -0x21024d05

    const/16 v5, 0xf

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-static {p1, p2, v5, v2, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/wm/shell/apppairs/AppPair;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/wm/shell/apppairs/AppPair;->getRootTaskId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method unpair()V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, v0}, Lcom/android/wm/shell/apppairs/AppPair;->unpair(Landroid/window/WindowContainerToken;)V

    return-void
.end method
