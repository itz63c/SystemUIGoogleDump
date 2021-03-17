.class public Lcom/android/wm/shell/pip/phone/PhonePipMenuController;
.super Ljava/lang/Object;
.source "PhonePipMenuController.java"

# interfaces
.implements Lcom/android/wm/shell/pip/PipMenuController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;
    }
.end annotation


# instance fields
.field private mAppActions:Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMediaActionListener:Lcom/android/wm/shell/pip/PipMediaController$ActionListener;

.field private mMediaActions:Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

.field private mMenuState:I

.field private final mMoveTransform:Landroid/graphics/Matrix;

.field private mPipMenuInputToken:Landroid/os/IBinder;

.field private mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

.field private final mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

.field private final mTmpDestinationRectF:Landroid/graphics/RectF;

.field private final mTmpSourceBounds:Landroid/graphics/Rect;

.field private final mTmpSourceRectF:Landroid/graphics/RectF;


# direct methods
.method public static synthetic $r8$lambda$5uMr_7sw8e3KbiTDk9tbtwAhBlQ(IZLjava/lang/Runnable;Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->lambda$onMenuStateChanged$0(IZLjava/lang/Runnable;Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/common/SystemWindows;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMoveTransform:Landroid/graphics/Matrix;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpSourceBounds:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpSourceRectF:Landroid/graphics/RectF;

    .line 100
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpDestinationRectF:Landroid/graphics/RectF;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$1;-><init>(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaActionListener:Lcom/android/wm/shell/pip/PipMediaController$ActionListener;

    .line 127
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    .line 129
    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 130
    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 131
    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaActions:Landroid/content/pm/ParceledListSlice;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->updateMenuActions()V

    return-void
.end method

.method private attachPipMenuView()V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->detachPipMenuView()V

    .line 167
    :cond_0
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuView;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/wm/shell/pip/phone/PipMenuView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 168
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    const-string v2, "PipMenuView"

    const/4 v3, 0x0

    .line 169
    invoke-interface {p0, v2, v3, v3}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(Ljava/lang/String;II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/4 v2, 0x1

    .line 168
    invoke-virtual {v1, v0, p0, v3, v2}, Lcom/android/wm/shell/common/SystemWindows;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    return-void
.end method

.method private detachPipMenuView()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 178
    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 179
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/SystemWindows;->removeView(Landroid/view/View;)V

    .line 180
    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 181
    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuInputToken:Landroid/os/IBinder;

    return-void
.end method

.method private fadeOutMenu()V
    .locals 1

    .line 368
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->fadeOutMenu()V

    :cond_0
    return-void
.end method

.method private static isValidActions(Landroid/content/pm/ParceledListSlice;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 470
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onMenuStateChanged$0(IZLjava/lang/Runnable;Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;)V
    .locals 0

    .line 484
    invoke-interface {p3, p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;->onPipMenuStateChanged(IZLjava/lang/Runnable;)V

    return-void
.end method

.method private maybeCreateSyncApplier()Z
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    if-nez v0, :cond_1

    .line 347
    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-direct {v0, v2}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 348
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuInputToken:Landroid/os/IBinder;

    .line 351
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    :goto_0
    const-string p0, "PipMenuActController"

    const-string v0, "Not going to move PiP, either menu or its parent is not created."

    .line 342
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private resolveMenuActions()Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isValidActions(Landroid/content/pm/ParceledListSlice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    return-object p0

    .line 442
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaActions:Landroid/content/pm/ParceledListSlice;

    return-object p0
.end method

.method private showMenuInternal(ILandroid/graphics/Rect;ZZZZ)V
    .locals 8

    .line 262
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->maybeCreateSyncApplier()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/pip/phone/PipMenuView;->showMenu(ILandroid/graphics/Rect;ZZZZ)V

    return-void
.end method

.method private updateMenuActions()V
    .locals 4

    .line 449
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 453
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 456
    iget-object v0, v1, Landroid/app/ActivityTaskManager$RootTaskInfo;->bounds:Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PipMenuActController"

    const-string v3, "Error showing PIP menu"

    .line 459
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->resolveMenuActions()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->setActions(Landroid/graphics/Rect;Ljava/util/List;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public attach(Landroid/view/SurfaceControl;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->attachPipMenuView()V

    return-void
.end method

.method public detach()V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu()V

    .line 152
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->detachPipMenuView()V

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PipMenuActController"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMenuState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPipMenuView="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mListeners="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getEstimatedMinMenuSize()Landroid/util/Size;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->getEstimatedMinMenuSize()Landroid/util/Size;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/SystemWindows;->getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method handlePointerEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 512
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    :goto_0
    return-void
.end method

.method public hideMenu()V
    .locals 1

    const/4 v0, 0x1

    .line 381
    invoke-virtual {p0, v0, v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu(ZZ)V

    return-void
.end method

.method public hideMenu(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 412
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 414
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public hideMenu(ZZ)V
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu(ZZ)V

    :cond_0
    return-void
.end method

.method public isMenuVisible()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public movePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V
    .locals 4

    .line 277
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->maybeCreateSyncApplier()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 289
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 291
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 294
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpSourceRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 295
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpDestinationRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 296
    iget-object p3, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMoveTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpSourceRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpDestinationRectF:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p3, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 297
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p3

    .line 298
    new-instance v1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v1, p3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    iget-object p3, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMoveTransform:Landroid/graphics/Matrix;

    .line 299
    invoke-virtual {v1, p3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p3

    .line 300
    invoke-virtual {p3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object p3

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 302
    new-instance v2, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v2, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 303
    invoke-virtual {v2, p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    .line 304
    invoke-virtual {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object p1

    .line 305
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    aput-object p3, p2, v0

    aput-object p1, p2, v1

    invoke-virtual {p0, p2}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    goto :goto_1

    .line 307
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    new-array p1, v1, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    aput-object p3, p1, v0

    invoke-virtual {p0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    :goto_1
    return-void
.end method

.method onMenuStateChanged(IZLjava/lang/Runnable;)V
    .locals 2

    .line 483
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    if-eq p1, v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController-$$ExternalSyntheticLambda0;-><init>(IZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 488
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    iget-object p3, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaActionListener:Lcom/android/wm/shell/pip/PipMediaController$ActionListener;

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/pip/PipMediaController;->addActionListener(Lcom/android/wm/shell/pip/PipMediaController$ActionListener;)V

    goto :goto_0

    .line 492
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    iget-object p3, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaActionListener:Lcom/android/wm/shell/pip/PipMediaController$ActionListener;

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/pip/PipMediaController;->removeActionListener(Lcom/android/wm/shell/pip/PipMediaController$ActionListener;)V

    .line 496
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object p2

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuInputToken:Landroid/os/IBinder;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2, p3, v0, v1}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    const-string p3, "PipMenuActController"

    const-string v0, "Unable to update focus as menu appears/disappears"

    .line 499
    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    :cond_2
    :goto_2
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    return-void
.end method

.method onPinnedStackAnimationEnded()V
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->onPipAnimationEnded()V

    :cond_0
    return-void
.end method

.method onPipDismiss()V
    .locals 1

    .line 432
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController-$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/wm/shell/pip/phone/PhonePipMenuController-$$ExternalSyntheticLambda1;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method onPipExpand()V
    .locals 1

    .line 428
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController-$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/wm/shell/pip/phone/PhonePipMenuController-$$ExternalSyntheticLambda2;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public pokeMenu()V
    .locals 1

    .line 358
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->pokeMenu()V

    :cond_0
    return-void
.end method

.method public resizePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V
    .locals 3

    .line 318
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->maybeCreateSyncApplier()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 327
    new-instance v1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v1, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 328
    invoke-virtual {v1, p3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p3

    .line 329
    invoke-virtual {p3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 331
    new-instance v2, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v2, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 332
    invoke-virtual {v2, p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    .line 333
    invoke-virtual {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object p1

    .line 334
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    aput-object p3, p2, v0

    aput-object p1, p2, v1

    invoke-virtual {p0, p2}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    goto :goto_0

    .line 336
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    new-array p1, v1, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    aput-object p3, p1, v0

    invoke-virtual {p0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    :goto_0
    return-void
.end method

.method public setAppActions(Landroid/content/pm/ParceledListSlice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 423
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    .line 424
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->updateMenuActions()V

    return-void
.end method

.method public showMenu()V
    .locals 1

    .line 225
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController-$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/wm/shell/pip/phone/PhonePipMenuController-$$ExternalSyntheticLambda3;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public showMenu(ILandroid/graphics/Rect;ZZZ)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 246
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->showMenuInternal(ILandroid/graphics/Rect;ZZZZ)V

    return-void
.end method

.method public showMenuWithPossibleDelay(ILandroid/graphics/Rect;ZZZ)V
    .locals 7

    .line 236
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->fadeOutMenu()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    move v6, p5

    .line 237
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->showMenuInternal(ILandroid/graphics/Rect;ZZZZ)V

    return-void
.end method

.method public updateMenuBounds(Landroid/graphics/Rect;)V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const-string v3, "PipMenuView"

    .line 191
    invoke-interface {p0, v3, v2, p1}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(Ljava/lang/String;II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 190
    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/common/SystemWindows;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateMenuLayout(Landroid/graphics/Rect;)V
    .locals 1

    .line 520
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->updateMenuLayout(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
