.class public Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;
.super Ljava/lang/Object;
.source "SplitScreenTransitions.java"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field private mAnimatingTransition:Landroid/os/IBinder;

.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDismissFromSnap:Z

.field private mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field private mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mListener:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

.field private mPendingDismiss:Landroid/os/IBinder;

.field private mPendingEnter:Landroid/os/IBinder;

.field private final mSplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public static synthetic $r8$lambda$8Q-Jr2R3j-h-fydXaYm0iiGcrIw(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->lambda$startExampleAnimation$0(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BTtS3FTlTKGpm_nCwGCcC0lSpyg(Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;ZLandroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->lambda$dismissSplit$6(ZLandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EeHOr6SLzoEhgAoRB3Pj_fO8HgI(Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->lambda$startExampleAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GGffrWhjXHznRPSpfjBGSj-Wom0(Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->lambda$startExampleAnimation$2(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QTeN9JtNqPdci0m-0ykG5xM_pkQ(Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->lambda$startExampleResizeAnimation$5(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$__9UHj5-IuXAyf36N1ySgO6kezY(Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->lambda$startExampleResizeAnimation$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cxVeV6nuz0VzknVW7xINaEgPh7E(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->lambda$startExampleResizeAnimation$3(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    const/4 v1, 0x0

    .line 60
    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mDismissFromSnap:Z

    .line 61
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    .line 62
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 67
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 73
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 74
    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 75
    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mSplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    .line 76
    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mListener:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    return-void
.end method

.method private synthetic lambda$dismissSplit$6(ZLandroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 324
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mDismissFromSnap:Z

    .line 325
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/16 v0, 0x14

    invoke-virtual {p1, v0, p2, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    return-void
.end method

.method private static synthetic lambda$startExampleAnimation$0(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 128
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p4

    mul-float/2addr p2, v0

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    .line 129
    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 130
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private synthetic lambda$startExampleAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 138
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->onFinish()V

    return-void
.end method

.method private synthetic lambda$startExampleAnimation$2(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 133
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 134
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 135
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 136
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p2, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions-$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p4}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions-$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;Landroid/animation/ValueAnimator;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$startExampleResizeAnimation$3(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 169
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p4

    .line 171
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p4

    mul-float/2addr v0, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p4

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 172
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 173
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p4

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 170
    invoke-virtual {p0, p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 174
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v2, p3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, p4

    add-float/2addr v0, v2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    mul-float/2addr p2, v1

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 177
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private synthetic lambda$startExampleResizeAnimation$4(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 186
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->onFinish()V

    return-void
.end method

.method private synthetic lambda$startExampleResizeAnimation$5(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p1, p2, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 181
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, v0, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 182
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 183
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 184
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p2, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions-$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p4}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions-$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;Landroid/animation/ValueAnimator;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onFinish()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 332
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    .line 333
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 334
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-interface {v1, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 335
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 336
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    if-ne v1, v2, :cond_1

    .line 337
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    .line 339
    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    if-ne v1, v2, :cond_2

    .line 340
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mSplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->onDismissSplit()V

    .line 341
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    :cond_2
    const/4 v1, 0x0

    .line 343
    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mDismissFromSnap:Z

    .line 344
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    return-void
.end method

.method private startExampleAnimation(Landroid/view/SurfaceControl;Z)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move v5, p2

    :goto_0
    sub-float/2addr v0, v5

    .line 124
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p2}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v1, 0x1

    aput v5, p2, v1

    .line 125
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v1, 0x1f4

    .line 126
    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 127
    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions-$$ExternalSyntheticLambda0;

    invoke-direct {v1, v3, p1, v0, v5}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions-$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 132
    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions-$$ExternalSyntheticLambda5;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions-$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FLandroid/animation/ValueAnimator;)V

    .line 141
    new-instance p1, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions$1;

    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions$1;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;Ljava/lang/Runnable;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/Transitions;->getAnimExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    new-instance p1, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions-$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions-$$ExternalSyntheticLambda2;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startExampleResizeAnimation(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    .line 165
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 166
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 168
    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions-$$ExternalSyntheticLambda1;

    invoke-direct {v1, v3, p1, p2, p3}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions-$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 179
    new-instance p2, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions-$$ExternalSyntheticLambda6;

    move-object v1, p2

    move-object v2, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions-$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    .line 189
    new-instance p1, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions$2;

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions$2;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/Transitions;->getAnimExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    new-instance p1, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions-$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions-$$ExternalSyntheticLambda2;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method dismissSplit(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;ZZ)V
    .locals 1

    .line 321
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 322
    invoke-static {v0, p1, p2, p3}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->buildDismissSplit(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Z)V

    .line 323
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p2, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions-$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p4, v0}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions-$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;ZLandroid/window/WindowContainerTransaction;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 6

    .line 83
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 84
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p2

    .line 85
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mSplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerVisible()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    .line 87
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-eqz v0, :cond_a

    const/4 v4, 0x2

    if-eq p2, v4, :cond_0

    const/4 v4, 0x4

    if-ne p2, v4, :cond_1

    .line 89
    :cond_0
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mListener:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v5, v5, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v4, v5, :cond_4

    :cond_1
    if-eq p2, v3, :cond_2

    if-ne p2, v2, :cond_3

    :cond_2
    iget-boolean v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    move v4, v3

    :goto_1
    if-eqz v4, :cond_a

    .line 99
    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mListener:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mSplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    .line 100
    invoke-virtual {v5}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getSplitLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object v5

    .line 99
    invoke-static {v1, v4, v5, v3}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->buildDismissSplit(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Z)V

    if-eq p2, v3, :cond_5

    if-ne p2, v2, :cond_6

    .line 102
    :cond_5
    iget-object p2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, p2, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 104
    :cond_6
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_9

    if-eq p2, v3, :cond_8

    if-ne p2, v2, :cond_9

    .line 109
    :cond_8
    iget-object p2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 110
    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p2

    if-ne p2, v2, :cond_9

    .line 112
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 113
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mSplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p2, v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->prepareEnterSplitTransition(Landroid/window/WindowContainerTransaction;)V

    .line 114
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_2
    return-object v1
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 208
    iget-object v3, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v1, v3, :cond_7

    iget-object v3, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    if-eq v1, v3, :cond_7

    .line 210
    iget-object v1, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mSplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerVisible()Z

    move-result v1

    if-nez v1, :cond_0

    return v7

    .line 212
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v8

    :goto_0
    if-ltz v1, :cond_6

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 214
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 215
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v3

    if-eq v3, v6, :cond_1

    goto :goto_2

    .line 216
    :cond_1
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    if-eq v3, v8, :cond_4

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    if-ne v3, v5, :cond_2

    goto :goto_1

    .line 218
    :cond_2
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    if-eq v3, v6, :cond_3

    .line 219
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 220
    :cond_3
    iget-object v2, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mSplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->ensureNormalSplit()V

    goto :goto_2

    .line 217
    :cond_4
    :goto_1
    iget-object v2, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mSplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->ensureMinimizedSplit()V

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    return v7

    :cond_7
    move-object/from16 v3, p4

    .line 227
    iput-object v3, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 228
    iget-object v3, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 229
    iput-object v1, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v8

    :goto_3
    const/4 v9, 0x6

    if-ltz v3, :cond_15

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/window/TransitionInfo$Change;

    .line 234
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v12

    if-ne v12, v9, :cond_b

    .line 238
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 240
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v9

    move-object/from16 v13, p2

    invoke-virtual {v13, v9}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v9

    .line 241
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 242
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v2, v14, v15}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v14

    invoke-virtual {v2, v11, v14}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v3

    invoke-virtual {v2, v11, v14}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 248
    iget-object v14, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v14, v11, v9}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 249
    iget-object v9, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 250
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    .line 249
    invoke-virtual {v9, v11, v14, v15}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_4

    :cond_8
    move-object/from16 v13, p2

    .line 253
    :goto_4
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-direct {v9, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 254
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 255
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v14

    if-ne v14, v6, :cond_9

    move v14, v8

    goto :goto_5

    :cond_9
    move v14, v7

    .line 256
    :goto_5
    iget-object v15, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    if-ne v15, v1, :cond_a

    iget-boolean v15, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mDismissFromSnap:Z

    if-eqz v15, :cond_a

    if-nez v14, :cond_a

    .line 259
    invoke-virtual {v9, v7, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 261
    :cond_a
    new-instance v14, Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootOffset()Landroid/graphics/Point;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Point;->x:I

    neg-int v15, v15

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootOffset()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    neg-int v7, v7

    invoke-virtual {v9, v15, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootOffset()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    neg-int v7, v7

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootOffset()Landroid/graphics/Point;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Point;->y:I

    neg-int v15, v15

    invoke-virtual {v14, v7, v15}, Landroid/graphics/Rect;->offset(II)V

    .line 264
    invoke-direct {v0, v11, v9, v14}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->startExampleResizeAnimation(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_b
    move-object/from16 v13, p2

    .line 266
    :goto_6
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v7

    if-eqz v7, :cond_d

    :cond_c
    :goto_7
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 270
    :cond_d
    iget-object v7, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    if-ne v1, v7, :cond_e

    iget-object v7, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mListener:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v7, v7, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 271
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    :cond_e
    iget-object v7, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mListener:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v7, v7, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 272
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 273
    :cond_f
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 274
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 273
    invoke-virtual {v2, v11, v7, v9}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 275
    iget-object v7, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mListener:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v7, v7, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v8

    invoke-virtual {v2, v11, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 281
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v7

    invoke-static {v7}, Lcom/android/wm/shell/transition/Transitions;->isOpeningType(I)Z

    move-result v7

    if-eqz v7, :cond_12

    if-eq v12, v8, :cond_11

    if-ne v12, v5, :cond_12

    .line 284
    :cond_11
    invoke-direct {v0, v11, v8}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->startExampleAnimation(Landroid/view/SurfaceControl;Z)V

    goto :goto_7

    :cond_12
    if-nez v7, :cond_c

    if-eq v12, v6, :cond_13

    if-ne v12, v4, :cond_c

    .line 287
    :cond_13
    iget-object v7, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    if-ne v1, v7, :cond_14

    iget-boolean v7, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mDismissFromSnap:Z

    if-eqz v7, :cond_14

    const/4 v7, 0x0

    .line 291
    invoke-virtual {v2, v11, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_7

    :cond_14
    const/4 v7, 0x0

    .line 293
    invoke-direct {v0, v11, v7}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->startExampleAnimation(Landroid/view/SurfaceControl;Z)V

    :goto_8
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_3

    :cond_15
    move-object/from16 v13, p2

    .line 297
    iget-object v3, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    if-ne v1, v3, :cond_1a

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v8

    :goto_9
    if-ltz v1, :cond_19

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 302
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 303
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v4

    if-eq v4, v6, :cond_16

    goto :goto_a

    .line 306
    :cond_16
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    if-eq v1, v8, :cond_17

    .line 307
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    if-eq v1, v5, :cond_17

    .line 308
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    if-ne v1, v9, :cond_19

    :cond_17
    move v7, v8

    goto :goto_b

    :cond_18
    :goto_a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 311
    :cond_19
    :goto_b
    iget-object v1, v0, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->mSplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v1, v7}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->finishEnterSplitTransition(Z)V

    .line 313
    :cond_1a
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/legacysplitscreen/SplitScreenTransitions;->onFinish()V

    return v8
.end method
