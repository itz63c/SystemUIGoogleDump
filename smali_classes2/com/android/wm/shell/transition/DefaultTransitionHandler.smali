.class public Lcom/android/wm/shell/transition/DefaultTransitionHandler;
.super Ljava/lang/Object;
.source "DefaultTransitionHandler.java"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field private final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public static synthetic $r8$lambda$2O8nVzlPBo4h6gvVikrQN67Zkvk(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FLjava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->lambda$startExampleAnimation$3(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FLjava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$42XeK-NKaf8yBeFAl_GmLtqm558(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->lambda$startAnimation$0(Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e-qjZ1CjhB7mwMouWUnjHGH6UKM(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->lambda$startExampleAnimation$1(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hWUgelFdauoEj8D7CIbypZKaOgM(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->lambda$startExampleAnimation$2(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    .line 52
    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 53
    iput-object p2, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 54
    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method

.method private synthetic lambda$startAnimation$0(Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 72
    invoke-interface {p3, p0, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private static synthetic lambda$startExampleAnimation$1(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 117
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p4

    mul-float/2addr p2, v0

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    .line 118
    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 119
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private static synthetic lambda$startExampleAnimation$2(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$startExampleAnimation$3(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FLjava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .locals 0

    .line 122
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 123
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 124
    iget-object p2, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 125
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p1, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda3;

    invoke-direct {p1, p4, p5, p6}, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda3;-><init>(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startExampleAnimation(Ljava/util/ArrayList;Landroid/view/SurfaceControl;ZLjava/lang/Runnable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/SurfaceControl;",
            "Z",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p3, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    move v5, p3

    :goto_0
    sub-float/2addr v0, v5

    .line 113
    iget-object p3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p3}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    const/4 p3, 0x2

    new-array p3, p3, [F

    const/4 v1, 0x0

    aput v0, p3, v1

    const/4 v1, 0x1

    aput v5, p3, v1

    .line 114
    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    const-wide/16 v1, 0x1f4

    .line 115
    invoke-virtual {p3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 116
    new-instance v1, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda0;

    invoke-direct {v1, v3, p2, v0, v5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)V

    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 121
    new-instance v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda1;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    move-object v6, p1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FLjava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    .line 130
    new-instance p2, Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/lang/Runnable;)V

    invoke-virtual {p3, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 147
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p1, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions-$$ExternalSyntheticLambda2;

    invoke-direct {p1, p3}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions-$$ExternalSyntheticLambda2;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 6

    .line 61
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/transition/Transitions;->isOpeningType(I)Z

    move-result v1

    .line 69
    new-instance v2, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1, p4}, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 74
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p4, 0x1

    sub-int/2addr p1, p4

    :goto_0
    if-ltz p1, :cond_6

    .line 75
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 78
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    if-eqz v1, :cond_3

    if-eq v4, p4, :cond_1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 82
    :cond_1
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2

    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 87
    invoke-direct {p0, v0, v3, p4, v2}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->startExampleAnimation(Ljava/util/ArrayList;Landroid/view/SurfaceControl;ZLjava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    if-nez v1, :cond_5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 92
    :cond_4
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    const/4 v4, 0x0

    .line 91
    invoke-direct {p0, v0, v3, v4, v2}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->startExampleAnimation(Ljava/util/ArrayList;Landroid/view/SurfaceControl;ZLjava/lang/Runnable;)V

    :cond_5
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 95
    :cond_6
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 97
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return p4

    .line 62
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Got a duplicate startAnimation call for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
