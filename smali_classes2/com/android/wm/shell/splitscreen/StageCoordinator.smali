.class Lcom/android/wm/shell/splitscreen/StageCoordinator;
.super Ljava/lang/Object;
.source "StageCoordinator.java"

# interfaces
.implements Lcom/android/wm/shell/common/split/SplitLayout$LayoutChangeListener;
.implements Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$RootTaskDisplayAreaListener;
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StageCoordinator"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mDismissTop:I

.field private mDisplayAreaInfo:Landroid/window/DisplayAreaInfo;

.field private final mDisplayId:I

.field private final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field private mDividerVisible:Z

.field private mExitSplitScreenOnHide:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

.field private final mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

.field private final mOnTransitionAnimationComplete:Ljava/lang/Runnable;

.field private final mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private final mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

.field private final mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

.field private mSideStagePosition:I

.field private mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

.field private final mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private mUseLegacySplit:Z


# direct methods
.method public static synthetic $r8$lambda$1SlFTmekpjXd41AfznC7b5dKSqw(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$onBoundsChanging$2(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1fksxINfBgJCPtYYnwbLkkTm2F8(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$onDisplayAreaAppeared$4(Landroid/view/SurfaceControl$Builder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X-xgtRXXl-1RhX6bUtxo_3teqNI(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$aOmppUmBOehpWMxqlKDoVEUq1tQ(Lcom/android/wm/shell/splitscreen/StageCoordinator;ZZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$onStageVisibilityChanged$1(ZZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tH92Z0IpzauvpqmlFSlwqc6gqVM(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$onBoundsChanged$3(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;)V
    .locals 4

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 98
    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    const/4 v2, 0x1

    .line 99
    iput v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    .line 112
    iput-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExitSplitScreenOnHide:Z

    const/4 v2, -0x2

    .line 119
    iput v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDismissTop:I

    .line 120
    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mOnTransitionAnimationComplete:Ljava/lang/Runnable;

    .line 135
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 136
    iput p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    .line 137
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 138
    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 139
    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 140
    new-instance p1, Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-direct {p1, p5, p2, v0, p3}, Lcom/android/wm/shell/splitscreen/MainStage;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 141
    new-instance p1, Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-direct {p1, p5, p2, v1, p3}, Lcom/android/wm/shell/splitscreen/SideStage;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 142
    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    .line 143
    invoke-virtual {p4, p2, p0}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->registerListener(ILcom/android/wm/shell/RootTaskDisplayAreaOrganizer$RootTaskDisplayAreaListener;)V

    .line 144
    new-instance p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-direct {p1, p8, p7, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;-><init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 146
    invoke-virtual {p7, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/splitscreen/MainStage;Lcom/android/wm/shell/splitscreen/SideStage;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/split/SplitLayout;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 98
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    const/4 v0, 0x1

    .line 99
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    .line 112
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExitSplitScreenOnHide:Z

    const/4 v0, -0x2

    .line 119
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDismissTop:I

    .line 120
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mOnTransitionAnimationComplete:Ljava/lang/Runnable;

    .line 154
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 155
    iput p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    .line 156
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 157
    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 158
    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 159
    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 160
    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 161
    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    .line 162
    invoke-virtual {p4, p2, p0}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->registerListener(ILcom/android/wm/shell/RootTaskDisplayAreaOrganizer$RootTaskDisplayAreaListener;)V

    .line 163
    iput-object p9, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 164
    new-instance p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-direct {p1, p11, p10, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;-><init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 166
    invoke-virtual {p10, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onStageRootTaskAppeared(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onStageHasChildrenChanged(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onStageVisibilityChanged(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;IZZ)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onStageChildTaskStatusChanged(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;IZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onStageRootTaskVanished(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V

    return-void
.end method

.method private addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V
    .locals 0

    .line 289
    iget-object p0, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const-string p2, "android.activity.launchRootTaskToken"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method private addDividerBarToTransition(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 3

    .line 832
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 833
    new-instance v1, Landroid/window/TransitionInfo$Change;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    .line 834
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 835
    invoke-virtual {v1, p0}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    .line 836
    invoke-virtual {v1, p0}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    .line 837
    :goto_0
    invoke-virtual {v1, v2}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    const/16 v2, 0x20

    .line 838
    invoke-virtual {v1, v2}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    .line 841
    invoke-virtual {p1, v1}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    if-eqz p3, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 844
    invoke-virtual {p2, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const p1, 0x7fffffff

    .line 845
    invoke-virtual {p2, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 846
    iget p1, p0, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {p2, v0, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 847
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    return-void
.end method

.method private exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;)V
    .locals 5

    .line 269
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 270
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v0, v4}, Lcom/android/wm/shell/splitscreen/SideStage;->removeAllTasks(Landroid/window/WindowContainerTransaction;Z)Z

    .line 271
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/splitscreen/MainStage;->deactivate(Landroid/window/WindowContainerTransaction;Z)V

    .line 272
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 274
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    return-void
.end method

.method private getMainStageBounds()Landroid/graphics/Rect;
    .locals 1

    .line 582
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v0, :cond_0

    .line 583
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSideStageBounds()Landroid/graphics/Rect;
    .locals 1

    .line 577
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v0, :cond_0

    .line 578
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .locals 3

    .line 593
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_0

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v2, v1, :cond_0

    return-object v0

    .line 596
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_1

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    :cond_0
    const/4 v0, -0x2

    .line 128
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDismissTop:I

    return-void
.end method

.method private synthetic lambda$onBoundsChanged$3(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    const v0, 0x7fffffff

    .line 539
    invoke-virtual {p4, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 541
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 540
    invoke-virtual {p4, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object p4, p4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    .line 542
    invoke-virtual {p1, p4, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget p4, p3, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    .line 544
    invoke-virtual {p1, p2, p4, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    const/4 p3, 0x0

    .line 547
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 548
    invoke-virtual {p1, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private synthetic lambda$onBoundsChanging$2(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 508
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 507
    invoke-virtual {p4, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object p4, p4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 509
    invoke-virtual {p1, p4, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object p4, p4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 510
    invoke-virtual {p1, p4, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object p4, p4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 514
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 513
    invoke-virtual {p1, p4, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 516
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    .line 515
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private synthetic lambda$onDisplayAreaAppeared$4(Landroid/view/SurfaceControl$Builder;)V
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    return-void
.end method

.method private synthetic lambda$onStageVisibilityChanged$1(ZZLandroid/view/SurfaceControl$Transaction;)V
    .locals 6

    .line 411
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 413
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 416
    iget-boolean v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    if-eqz v3, :cond_0

    .line 417
    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    const v4, 0x7fffffff

    .line 418
    invoke-virtual {v3, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 420
    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 421
    invoke-virtual {v5}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    .line 419
    invoke-virtual {v3, v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 428
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 429
    invoke-virtual {p3, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    .line 430
    invoke-virtual {v3, v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    .line 433
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 432
    invoke-virtual {v3, v1, v4, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    .line 435
    :cond_2
    invoke-virtual {p3, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_1
    if-eqz p2, :cond_4

    .line 439
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 440
    invoke-virtual {p3, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    if-eqz p1, :cond_3

    .line 442
    iget p1, p0, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget p2, p0, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p3, v2, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 444
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 443
    invoke-virtual {p1, v2, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    .line 447
    invoke-virtual {p3, v2, p0, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    const/4 p1, 0x0

    .line 448
    invoke-virtual {p0, v2, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    .line 451
    :cond_4
    invoke-virtual {p3, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_2
    return-void
.end method

.method private onStageChildTaskStatusChanged(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;IZZ)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 330
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    if-ne p1, p3, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 336
    :goto_0
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_1
    if-ltz p3, :cond_2

    .line 337
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    invoke-interface {v0, p2, p1, p4}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onTaskStageChanged(IIZ)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private onStageHasChildrenChanged(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V
    .locals 3

    .line 457
    iget-boolean v0, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    .line 458
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz v0, :cond_1

    .line 462
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_3

    .line 463
    iget-boolean p1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz p1, :cond_3

    .line 465
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 468
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 470
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    .line 471
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->setBounds(Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    .line 475
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 476
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private onStageRootTaskAppeared(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V
    .locals 2

    .line 342
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    if-eqz p1, :cond_1

    .line 343
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x111015f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mUseLegacySplit:Z

    .line 344
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 346
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setAdjacentRoots(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 350
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mUseLegacySplit:Z

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->setLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 354
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_1
    return-void
.end method

.method private onStageRootTaskVanished(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    if-ne p1, v0, :cond_2

    .line 360
    :cond_0
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 362
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/MainStage;->deactivate(Landroid/window/WindowContainerTransaction;)V

    .line 364
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mUseLegacySplit:Z

    if-nez v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->clearLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 368
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_2
    return-void
.end method

.method private onStageVisibilityChanged(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V
    .locals 5

    .line 383
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 384
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 386
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(Z)V

    .line 388
    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExitSplitScreenOnHide:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen()V

    :cond_0
    if-eqz v0, :cond_2

    .line 395
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-eqz p1, :cond_1

    .line 399
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    const/4 v3, 0x6

    .line 400
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 399
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/wm/shell/splitscreen/MainStage;->updateConfiguration(ILandroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/wm/shell/splitscreen/MainStage;->updateConfiguration(ILandroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    .line 407
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v2, v1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 410
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;ZZ)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method private prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, p2, v3}, Lcom/android/wm/shell/splitscreen/SideStage;->removeAllTasks(Landroid/window/WindowContainerTransaction;Z)Z

    .line 280
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/android/wm/shell/splitscreen/MainStage;->deactivate(Landroid/window/WindowContainerTransaction;Z)V

    return-void
.end method

.method private sendOnStagePositionChanged()V
    .locals 5

    .line 318
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 319
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    const/4 v3, 0x0

    .line 320
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    .line 321
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setDividerVisibility(Z)V
    .locals 1

    .line 373
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 374
    :cond_0
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    if-eqz p1, :cond_1

    .line 376
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    goto :goto_0

    .line 378
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->release()V

    :goto_0
    return-void
.end method

.method private setSideStagePosition(IZ)V
    .locals 1

    .line 243
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne v0, p1, :cond_0

    return-void

    .line 244
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 245
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendOnStagePositionChanged()V

    .line 247
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 248
    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onStageVisibilityChanged(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V

    :cond_1
    return-void
.end method

.method private setSplitsVisible(Z)V
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iput-boolean p1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 872
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    iput-boolean p1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    return-void
.end method

.method private startPendingDismissAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Z
    .locals 9

    .line 781
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result p1

    const-string v0, ", "

    const-string v1, ""

    const-string v2, "] before startAnimation()."

    const-string v3, " to have been called with ["

    const-string v4, "Expected onTaskVanished on "

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    .line 782
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v5

    .line 783
    :goto_0
    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_1

    if-eqz v6, :cond_0

    move-object v7, v0

    goto :goto_1

    :cond_0
    move-object v7, v1

    .line 784
    :goto_1
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v7, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 787
    :cond_1
    sget-object v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 787
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_5

    .line 792
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v5

    .line 793
    :goto_2
    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_4

    if-eqz v6, :cond_3

    move-object v7, v0

    goto :goto_3

    :cond_3
    move-object v7, v1

    .line 794
    :goto_3
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v7, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 797
    :cond_4
    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 797
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    .line 806
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p1

    const/16 v0, 0xb

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    .line 808
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 809
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 812
    :cond_6
    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDismissTop:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    .line 817
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 818
    invoke-direct {p0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(Z)V

    .line 819
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    return v5

    .line 823
    :cond_7
    invoke-direct {p0, p2, p3, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addDividerBarToTransition(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private startPendingEnterAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Z
    .locals 7

    .line 721
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_7

    const/4 p1, 0x0

    const/4 v0, 0x0

    move v2, p1

    move-object v1, v0

    .line 725
    :goto_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 726
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 727
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 728
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 729
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v5

    if-nez v5, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    if-ne v5, v4, :cond_2

    move-object v1, v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 744
    invoke-direct {p0, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(Z)V

    .line 745
    invoke-direct {p0, v4, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IZ)V

    .line 746
    invoke-direct {p0, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    .line 748
    invoke-direct {p0, p2, p3, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addDividerBarToTransition(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 756
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result p1

    const-string p2, " before startAnimation()."

    const-string p3, " to have been called with "

    const-string v2, "Expected onTaskAppeared on "

    if-nez p1, :cond_4

    .line 757
    sget-object p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 757
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 762
    sget-object p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 762
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v4

    .line 737
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Launched 2 tasks in split, but didn\'t receive 2 tasks in transition. Possibly one of them failed to launch"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 769
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unsupported split-entry"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " mDisplayId="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 856
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mDividerVisible="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 857
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MainStage"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 858
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isActive="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-virtual {p2, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 860
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SideStage"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 861
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-virtual {p2, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 862
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mSplitLayout="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method exitSplitScreen()V
    .locals 1

    const/4 v0, 0x0

    .line 261
    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    return-void
.end method

.method exitSplitScreenOnHide(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExitSplitScreenOnHide:Z

    return-void
.end method

.method getMainStagePosition()I
    .locals 0

    .line 233
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method getSideStagePosition()I
    .locals 0

    .line 229
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    return p0
.end method

.method getSplitTransitions()Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 171
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    return-object p0
.end method

.method getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 285
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 16

    move-object/from16 v0, p0

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 614
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    :cond_0
    return-object v2

    .line 618
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v3

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v4, :cond_7

    .line 621
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v4, 0x2

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v8, v2

    invoke-static {v3}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v10

    int-to-long v10, v10

    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v12

    int-to-long v12, v12

    sget-object v14, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v15, v7

    aput-object v2, v15, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v15, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v15, v5

    const-string v2, "  split is active so using splitTransition to handle request. triggerTask=%d type=%s mainChildren=%d sideChildren=%d"

    const v5, 0x9da899c

    const/16 v8, 0x51

    invoke-static {v14, v5, v8, v2, v15}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 625
    :cond_2
    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 626
    invoke-direct {v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 629
    invoke-static {v3}, Lcom/android/wm/shell/transition/Transitions;->isClosingType(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 631
    invoke-direct {v0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v1

    if-nez v1, :cond_3

    move v1, v6

    goto :goto_0

    :cond_3
    move v1, v7

    .line 632
    :goto_0
    iput v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDismissTop:I

    goto :goto_1

    .line 635
    :cond_4
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v1

    if-ne v1, v4, :cond_5

    invoke-static {v3}, Lcom/android/wm/shell/transition/Transitions;->isOpeningType(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, -0x1

    .line 637
    iput v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDismissTop:I

    .line 640
    :cond_5
    :goto_1
    iget v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDismissTop:I

    const/4 v3, -0x2

    if-eq v1, v3, :cond_9

    .line 641
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_6

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitScreen;->stageTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x51d6a8a2

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v7

    const-string v1, "  splitTransition  deduced Dismiss from request. toTop=%s"

    invoke-static {v3, v4, v7, v1, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 644
    :cond_6
    iget v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDismissTop:I

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    .line 645
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    goto :goto_2

    :cond_7
    if-eq v3, v6, :cond_8

    if-ne v3, v5, :cond_9

    .line 651
    :cond_8
    invoke-direct {v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_9
    :goto_2
    return-object v2

    .line 652
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entering split implicitly with only one task isn\'t supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isSplitScreenVisible()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method moveToSideStage(Landroid/app/ActivityManager$RunningTaskInfo;I)Z
    .locals 2

    .line 180
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 181
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(I)V

    .line 182
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    .line 183
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/wm/shell/splitscreen/SideStage;->addTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    .line 184
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onBoundsChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V
    .locals 4

    .line 528
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 531
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 532
    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 533
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v3, v0, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->setBounds(Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    .line 534
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v3, v1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->setBounds(Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    .line 535
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v3, v2}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 537
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public onBoundsChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V
    .locals 4

    .line 501
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 503
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 504
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 506
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;)V
    .locals 7

    .line 553
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayAreaInfo:Landroid/window/DisplayAreaInfo;

    .line 554
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez p1, :cond_0

    .line 555
    new-instance p1, Lcom/android/wm/shell/common/split/SplitLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SplitDivider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayAreaInfo:Landroid/window/DisplayAreaInfo;

    iget-object v3, v0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    new-instance v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    move-object v0, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/common/split/SplitLayout;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitLayout$LayoutChangeListener;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;Lcom/android/wm/shell/common/DisplayImeController;)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    :cond_0
    return-void
.end method

.method public onDisplayAreaInfoChanged(Landroid/window/DisplayAreaInfo;)V
    .locals 1

    .line 569
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayAreaInfo:Landroid/window/DisplayAreaInfo;

    .line 570
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    .line 571
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 572
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onBoundsChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V

    :cond_0
    return-void
.end method

.method public onDisplayAreaVanished(Landroid/window/DisplayAreaInfo;)V
    .locals 0

    .line 564
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Well that was unexpected..."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDoubleTappedDivider()V
    .locals 1

    .line 522
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(I)V

    return-void
.end method

.method public onSnappedToDismiss(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 490
    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 491
    :cond_0
    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p1, :cond_1

    :goto_0
    move v0, v1

    .line 492
    :cond_1
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_2

    .line 493
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onSnappedToDismissTransition(Z)Landroid/os/IBinder;

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 496
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    return-void
.end method

.method onSnappedToDismissTransition(Z)Landroid/os/IBinder;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 482
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    xor-int/lit8 p1, p1, 0x1

    .line 483
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    .line 484
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startSnapToDismiss(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    .line 308
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    .line 309
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onSplitScreenListenerRegistered(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;I)V

    .line 310
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onSplitScreenListenerRegistered(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;I)V

    return-void
.end method

.method removeFromSideStage(I)Z
    .locals 3

    .line 189
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 195
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 196
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 195
    :goto_0
    invoke-virtual {v1, p1, v2, v0}, Lcom/android/wm/shell/splitscreen/SideStage;->removeTask(ILandroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)Z

    move-result p1

    .line 198
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return p1
.end method

.method setSideStagePosition(I)V
    .locals 1

    const/4 v0, 0x1

    .line 238
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IZ)V

    return-void
.end method

.method setSideStageVisibility(Z)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 255
    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 256
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1, p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->setVisibility(ZLandroid/window/WindowContainerTransaction;)V

    .line 257
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 11

    .line 665
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_7

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    if-eq p1, v3, :cond_7

    .line 670
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    move p1, v2

    .line 672
    :goto_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_5

    .line 673
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/window/TransitionInfo$Change;

    .line 674
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 675
    invoke-virtual {p4}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 676
    :cond_1
    invoke-direct {p0, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 678
    :cond_2
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/transition/Transitions;->isOpeningType(I)Z

    move-result v1

    const-string v3, " before startAnimation()."

    const-string v4, " to have been called with "

    if-eqz v1, :cond_3

    .line 679
    iget p3, p4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, p3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result p3

    if-nez p3, :cond_4

    .line 680
    sget-object p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected onTaskAppeared on "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 683
    :cond_3
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p3

    invoke-static {p3}, Lcom/android/wm/shell/transition/Transitions;->isClosingType(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 684
    iget p3, p4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, p3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 685
    sget-object p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected onTaskVanished on "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 690
    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result p0

    if-eqz p0, :cond_6

    return v2

    .line 692
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Somehow removed the last task in a stage outside of a proper transition"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 707
    :cond_7
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    const/4 v3, 0x1

    if-ne v0, p1, :cond_8

    .line 708
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startPendingEnterAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Z

    move-result v0

    goto :goto_2

    :cond_8
    if-ne v1, p1, :cond_9

    .line 710
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startPendingDismissAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Z

    move-result v0

    goto :goto_2

    :cond_9
    move v0, v3

    :goto_2
    if-nez v0, :cond_a

    return v2

    .line 714
    :cond_a
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->playAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)V

    return v3
.end method

.method startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;ILandroid/window/IRemoteTransition;)V
    .locals 2

    .line 206
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    if-eqz p4, :cond_1

    goto :goto_1

    .line 208
    :cond_1
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 209
    :goto_1
    invoke-virtual {p0, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(I)V

    .line 213
    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p5, v1, v0}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    .line 214
    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p5, v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->setBounds(Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    .line 217
    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-direct {p0, p2, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 218
    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-direct {p0, p4, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 221
    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 222
    invoke-virtual {v0, p3, p4}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 224
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, v0, p6, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/IRemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    return-void
.end method

.method unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method updateActivityOptions(Landroid/os/Bundle;I)V
    .locals 1

    .line 293
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 295
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result p1

    if-nez p1, :cond_1

    .line 297
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 298
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    .line 299
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->setBounds(Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    .line 300
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_1
    return-void
.end method
