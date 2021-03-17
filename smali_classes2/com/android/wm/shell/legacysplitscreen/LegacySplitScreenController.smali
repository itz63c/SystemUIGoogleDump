.class public Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;
.super Ljava/lang/Object;
.source "LegacySplitScreenController.java"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;
    }
.end annotation


# instance fields
.field private volatile mAdjustedForIme:Z

.field private final mBoundsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/function/BiConsumer<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDividerState:Lcom/android/wm/shell/legacysplitscreen/DividerState;

.field private final mDockedStackExistsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mForcedResizableController:Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;

.field private mHomeStackResizable:Z

.field private final mImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field private final mImePositionProcessor:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

.field private final mImpl:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;

.field private mIsKeyguardShowing:Z

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private volatile mMinimized:Z

.field private mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

.field private final mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

.field private final mSfVsyncAnimationHandler:Landroid/animation/AnimationHandler;

.field private mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

.field private final mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

.field private final mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

.field private final mTaskOrganizer:Landroid/window/TaskOrganizer;

.field final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

.field private mVisible:Z

.field private mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

.field private final mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;


# direct methods
.method public static synthetic $r8$lambda$50gcVHlpDQ1E1_9QCC0r8sJi_c0(ZLjava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->lambda$updateVisibility$3(ZLjava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9EYmUBsEF_it_S8ibgScrymG8OE(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;IIILandroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->lambda$new$0(IIILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FKf63KvhjUKDJsaiGiJvv8TKgkk(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->lambda$setMinimized$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$g5KVTQJtsoxpXRsG8thcwW_yn20(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->lambda$notifyBoundsChanged$5(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ynmwYIs8XmKNvUB2Ju3PxcuJA6Q(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->lambda$updateVisibility$1(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zqt9AKn8sH32s__3TfRFkJvcs2U(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->lambda$updateVisibility$2(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SystemWindows;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;Landroid/animation/AnimationHandler;)V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/DividerState;

    invoke-direct {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerState;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerState:Lcom/android/wm/shell/legacysplitscreen/DividerState;

    .line 93
    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImpl:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;

    .line 95
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDockedStackExistsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mBoundsChangedListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mVisible:Z

    .line 114
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    .line 115
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mAdjustedForIme:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    .line 124
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 126
    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 127
    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImeController:Lcom/android/wm/shell/common/DisplayImeController;

    .line 128
    iput-object p10, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 129
    iput-object p11, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSfVsyncAnimationHandler:Landroid/animation/AnimationHandler;

    .line 130
    new-instance p4, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;

    invoke-direct {p4, p1, p0, p10}, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mForcedResizableController:Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;

    .line 132
    iput-object p5, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 133
    new-instance p1, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    invoke-direct {p1, p7, p6}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;-><init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/window/TaskOrganizer;)V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    .line 134
    iput-object p6, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    .line 135
    new-instance p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-direct {p1, p0, p6, p9, p7}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    .line 137
    new-instance p4, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    invoke-direct {p4, p1, p5, p10, p6}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/window/TaskOrganizer;)V

    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImePositionProcessor:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    .line 139
    new-instance p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController-$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    .line 178
    new-instance p1, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    invoke-direct {p1, p3}, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;-><init>(Lcom/android/wm/shell/common/SystemWindows;)V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    .line 179
    invoke-virtual {p2, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 182
    new-instance p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$1;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    invoke-virtual {p8, p1}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mForcedResizableController:Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method private synthetic lambda$new$0(IIILandroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 141
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->isSplitScreenSupported()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 144
    :cond_0
    new-instance p2, Landroid/window/WindowContainerTransaction;

    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 145
    new-instance v0, Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 146
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 147
    new-instance p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-direct {p1, v1, v0, v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;)V

    .line 149
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->rotateTo(I)V

    .line 150
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    .line 151
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerVisible()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 152
    iget-boolean p3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-object p3, p3, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget p3, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    .line 153
    :cond_1
    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {p3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getCurrentPosition()I

    move-result p3

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p3

    iget p3, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 156
    :goto_0
    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p3

    .line 159
    iget p3, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {p1, p3, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->resizeSplits(ILandroid/window/WindowContainerTransaction;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isSplitActive()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-boolean p3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    if-eqz p3, :cond_3

    .line 162
    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 163
    invoke-virtual {p3, p1, v0, p2}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->applyHomeTasksMinimized(Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)Z

    .line 165
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->queueSyncTransactionIfWaiting(Landroid/window/WindowContainerTransaction;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "SplitScreenCtrl"

    const-string p1, "Screen rotated while other operations were pending, this may result in some graphical artifacts."

    .line 171
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/4 p0, 0x1

    .line 174
    invoke-virtual {p4, p2, p0}, Landroid/window/WindowContainerTransaction;->merge(Landroid/window/WindowContainerTransaction;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method private static synthetic lambda$notifyBoundsChanged$5(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    .line 538
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/function/BiConsumer;

    if-eqz p2, :cond_0

    .line 539
    invoke-interface {p2, p0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$setMinimized$4(Z)V
    .locals 1

    .line 386
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 389
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->setHomeMinimized(Z)V

    return-void
.end method

.method private synthetic lambda$updateVisibility$1(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setMinimizedDockStack(ZZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$updateVisibility$2(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setMinimizedDockStack(ZZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private static synthetic lambda$updateVisibility$3(ZLjava/lang/ref/WeakReference;)Z
    .locals 0

    .line 374
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Consumer;

    if-eqz p1, :cond_0

    .line 375
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addDivider(Landroid/content/res/Configuration;)V
    .locals 13

    .line 313
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    .line 315
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$layout;->docked_stack_divider:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 316
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSfVsyncAnimationHandler:Landroid/animation/AnimationHandler;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setAnimationHandler(Landroid/animation/AnimationHandler;)V

    .line 317
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v1

    .line 318
    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-object v6, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    iget-object v7, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerState:Lcom/android/wm/shell/legacysplitscreen/DividerState;

    iget-object v8, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mForcedResizableController:Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;

    iget-object v9, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v10, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v11, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImePositionProcessor:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    iget-object v12, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    move-object v5, p0

    invoke-virtual/range {v4 .. v12}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->injectDependencies(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;Lcom/android/wm/shell/legacysplitscreen/DividerState;Lcom/android/wm/shell/legacysplitscreen/DividerView$DividerCallbacks;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Lcom/android/wm/shell/legacysplitscreen/DividerImeController;Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;)V

    .line 320
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-boolean v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mVisible:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 321
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-boolean v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    iget-boolean v6, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    invoke-virtual {v2, v4, v6, v3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setMinimizedDockStack(ZZLandroid/view/SurfaceControl$Transaction;)V

    .line 322
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1050126

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 324
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 v5, 0x1

    :cond_1
    if-eqz v5, :cond_2

    move p1, v0

    goto :goto_1

    .line 325
    :cond_2
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result p1

    :goto_1
    if-eqz v5, :cond_3

    .line 326
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v0

    .line 327
    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {v1, v2, p1, v0, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->add(Landroid/view/View;III)V

    return-void
.end method

.method public asLegacySplitScreen()Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImpl:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "  mVisible="

    .line 459
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mMinimized="

    .line 460
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mAdjustedForIme="

    .line 461
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mAdjustedForIme:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public ensureMinimizedSplit()V
    .locals 2

    const/4 v0, 0x1

    .line 592
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->setHomeMinimized(Z)V

    .line 593
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 598
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->updateVisibility(Z)V

    :cond_0
    return-void
.end method

.method public ensureNormalSplit()V
    .locals 1

    const/4 v0, 0x0

    .line 603
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->setHomeMinimized(Z)V

    .line 604
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 609
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->updateVisibility(Z)V

    :cond_0
    return-void
.end method

.method public finishEnterSplitTransition(Z)V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    .line 559
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 558
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 558
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->update(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->ensureMinimizedSplit()V

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->ensureNormalSplit()V

    :goto_0
    return-void
.end method

.method public getAnimDuration()J
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    .line 467
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x10500a2

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    const-string v1, "transition_animation_scale"

    .line 465
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    const/high16 v0, 0x43a80000    # 336.0f

    mul-float/2addr p0, v0

    float-to-long v0, p0

    return-wide v0
.end method

.method public getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    return-object p0
.end method

.method public getSecondaryRoot()Landroid/window/WindowContainerToken;
    .locals 0

    .line 622
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez p0, :cond_0

    goto :goto_0

    .line 625
    :cond_0
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSplitLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;
    .locals 0

    .line 614
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    return-object p0
.end method

.method public getWmProxy()Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;
    .locals 0

    .line 618
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    return-object p0
.end method

.method public isDividerVisible()Z
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHomeStackResizable()Z
    .locals 0

    .line 290
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    return p0
.end method

.method public isMinimized()Z
    .locals 0

    .line 286
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    return p0
.end method

.method public isSplitActive()Z
    .locals 1

    .line 307
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_1

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-nez v0, :cond_0

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mBoundsChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 537
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mBoundsChangedListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController-$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController-$$ExternalSyntheticLambda4;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 542
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onAppTransitionFinished()V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-nez v0, :cond_0

    return-void

    .line 455
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mForcedResizableController:Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->onAppTransitionFinished()V

    return-void
.end method

.method public onDismissSplit()V
    .locals 2

    const/4 v0, 0x0

    .line 582
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->updateVisibility(Z)V

    .line 583
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    .line 586
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerState:Lcom/android/wm/shell/legacysplitscreen/DividerState;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/wm/shell/legacysplitscreen/DividerState;->mRatioPositionBeforeMinimized:F

    .line 587
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->removeDivider()V

    .line 588
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImePositionProcessor:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->reset()V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    .line 245
    :cond_0
    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 246
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    .line 247
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImePositionProcessor:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DisplayImeController;->addPositionProcessor(Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;)V

    .line 248
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    .line 249
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->removeDivider()V

    return-void

    .line 254
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "SplitScreenCtrl"

    const-string v1, "Failed to register docked stack listener"

    .line 256
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->removeDivider()V

    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 3

    if-nez p1, :cond_3

    .line 264
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->isSplitScreenSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 267
    :cond_0
    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 268
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    .line 269
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    if-nez p1, :cond_1

    .line 270
    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 271
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 272
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v1, p1, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->resizeSplits(ILandroid/window/WindowContainerTransaction;)V

    .line 273
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_0

    .line 274
    :cond_1
    iget-object p1, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->rotation()I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 275
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->rotation()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 276
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    .line 277
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 278
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    .line 280
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isSplitActive()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 281
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->update(Landroid/content/res/Configuration;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    .line 230
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isSplitActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setHidden(Z)V

    if-nez p1, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImePositionProcessor:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateAdjustForIme()V

    .line 237
    :cond_1
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsKeyguardShowing:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onSplitScreenSupported()V
    .locals 3

    .line 223
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 224
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 225
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v2, v1, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->resizeSplits(ILandroid/window/WindowContainerTransaction;)V

    .line 226
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public onTaskVanished()V
    .locals 0

    .line 351
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->removeDivider()V

    return-void
.end method

.method public onUndockingTask()V
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-eqz p0, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->onUndockingTask()V

    :cond_0
    return-void
.end method

.method public prepareEnterSplitTransition(Landroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 554
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->buildEnterSplit(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    return-void
.end method

.method public registerBoundsChangeListener(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mBoundsChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 493
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mBoundsChangedListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerInSplitScreenListener(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 475
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerVisible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDockedStackExistsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 477
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDockedStackExistsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeDivider()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->onDividerRemoved()V

    .line 334
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->remove()V

    return-void
.end method

.method public setAdjustedForIme(Z)V
    .locals 1

    .line 434
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mAdjustedForIme:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 437
    :cond_0
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mAdjustedForIme:Z

    .line 438
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->updateTouchable()V

    return-void
.end method

.method public setHomeMinimized(Z)V
    .locals 6

    .line 398
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 399
    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 402
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    .line 405
    :cond_1
    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v4, v4, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-boolean v5, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    xor-int/2addr v2, v5

    invoke-virtual {v0, v4, v2}, Landroid/window/WindowContainerTransaction;->setFocusable(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 408
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-eqz v2, :cond_5

    .line 409
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 410
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 412
    :cond_2
    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    if-eqz v2, :cond_3

    .line 413
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImePositionProcessor:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->pause(I)V

    :cond_3
    if-eqz v1, :cond_4

    .line 417
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getAnimDuration()J

    move-result-wide v4

    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    invoke-virtual {v1, p1, v4, v5, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setMinimizedDockStack(ZJZ)V

    .line 419
    :cond_4
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    if-nez p1, :cond_5

    .line 421
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImePositionProcessor:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    invoke-virtual {p1, v3}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->resume(I)V

    .line 424
    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->updateTouchable()V

    .line 428
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->queueSyncTransactionIfWaiting(Landroid/window/WindowContainerTransaction;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 429
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_6
    return-void
.end method

.method public setMinimized(Z)V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController-$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController-$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Z)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public splitPrimaryTask()Z
    .locals 5

    const/4 v0, 0x0

    .line 499
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->getLockTaskModeState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 500
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isSplitActive()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 510
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 514
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 515
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v4

    if-eq v4, v2, :cond_4

    const/4 v2, 0x3

    if-ne v4, v2, :cond_2

    goto :goto_0

    .line 520
    :cond_2
    iget-boolean v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    if-nez v2, :cond_3

    .line 521
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/wm/shell/R$string;->dock_non_resizeble_failed_to_dock_text:I

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 522
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v0

    .line 526
    :cond_3
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object p0

    iget v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v0, v3}, Landroid/app/ActivityTaskManager;->setTaskWindowingModeSplitScreenPrimary(IZ)Z

    move-result p0

    return p0

    :catch_0
    :cond_4
    :goto_0
    return v0
.end method

.method public startDismissSplit(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 568
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->startDismissSplit(ZZ)V

    return-void
.end method

.method public startDismissSplit(ZZ)V
    .locals 2

    .line 572
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getSplitTransitions()Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->dismissSplit(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;ZZ)V

    goto :goto_0

    .line 576
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->applyDismissSplit(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Z)V

    .line 577
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->onDismissSplit()V

    :goto_0
    return-void
.end method

.method public startEnterSplit()V
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    .line 547
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 546
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 546
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->update(Landroid/content/res/Configuration;)V

    .line 549
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->applyEnterSplit(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    return-void
.end method

.method public update(Landroid/content/res/Configuration;)V
    .locals 4

    .line 338
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 340
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->removeDivider()V

    .line 341
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->addDivider(Landroid/content/res/Configuration;)V

    .line 343
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    if-eqz p1, :cond_1

    .line 344
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setMinimizedDockStack(ZZLandroid/view/SurfaceControl$Transaction;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->updateTouchable()V

    .line 347
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setHidden(Z)V

    return-void
.end method

.method public updateTouchable()V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mAdjustedForIme:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->setTouchable(Z)V

    return-void
.end method

.method public updateVisibility(Z)V
    .locals 2

    .line 356
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mVisible:Z

    if-eq v0, p1, :cond_2

    .line 357
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mVisible:Z

    .line 358
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->enterSplitMode(Z)V

    .line 363
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_1

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->exitSplitMode()V

    .line 368
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController-$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 372
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDockedStackExistsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 373
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDockedStackExistsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController-$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController-$$ExternalSyntheticLambda5;-><init>(Z)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 378
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method
