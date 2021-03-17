.class public abstract Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;
.super Landroid/animation/ValueAnimator;
.source "OneHandedAnimationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/onehanded/OneHandedAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OneHandedTransitionAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/animation/ValueAnimator;",
        "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
        "Landroid/animation/Animator$AnimatorListener;"
    }
.end annotation


# instance fields
.field private mCurrentValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mEndValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mLeash:Landroid/view/SurfaceControl;

.field private final mOneHandedAnimationCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mStartValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mSurfaceControlTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

.field private mSurfaceTransactionHelper:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

.field private final mToken:Landroid/window/WindowContainerToken;

.field private mTransitionDirection:I


# direct methods
.method public static synthetic $r8$lambda$EUrx6T7Q9ydI7H6VPE28bjRwF1o(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->lambda$onAnimationStart$0(Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GCo_9R6VcHU9xRAwsPr47pAW6Vo(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->lambda$onAnimationCancel$2(Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p_o51OfbNbUHK9H6Yl0mi0jiKKQ(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->lambda$onAnimationUpdate$3(Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zrnyzPCbv6rlW9fVdwXMoUSzLMc(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->lambda$onAnimationEnd$1(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V

    return-void
.end method

.method private constructor <init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/WindowContainerToken;",
            "Landroid/view/SurfaceControl;",
            "TT;TT;)V"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mOneHandedAnimationCallbacks:Ljava/util/List;

    .line 135
    iput-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 136
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mToken:Landroid/window/WindowContainerToken;

    .line 137
    iput-object p3, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mStartValue:Ljava/lang/Object;

    .line 138
    iput-object p4, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mEndValue:Ljava/lang/Object;

    .line 139
    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 140
    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 141
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator-$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator-$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    const/4 p1, 0x0

    .line 142
    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mTransitionDirection:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/wm/shell/onehanded/OneHandedAnimationController$1;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onAnimationCancel$2(Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V
    .locals 0

    .line 172
    invoke-interface {p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;->onOneHandedAnimationCancel(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$1(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V
    .locals 0

    .line 162
    invoke-interface {p2, p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;->onOneHandedAnimationEnd(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V

    return-void
.end method

.method private synthetic lambda$onAnimationStart$0(Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V
    .locals 0

    .line 150
    invoke-interface {p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;->onOneHandedAnimationStart(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V

    return-void
.end method

.method private synthetic lambda$onAnimationUpdate$3(Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-interface {p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;->onTutorialAnimationUpdate(I)V

    return-void
.end method

.method static ofBounds(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/WindowContainerToken;",
            "Landroid/view/SurfaceControl;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ")",
            "Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0
.end method


# virtual methods
.method addOneHandedAnimationCallback(Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;",
            ")",
            "Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator<",
            "TT;>;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mOneHandedAnimationCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method abstract applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V
.end method

.method getDestinationOffset()I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mEndValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mStartValue:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    return v0
.end method

.method getEndValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 242
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mEndValue:Ljava/lang/Object;

    return-object p0
.end method

.method getStartValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 238
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mStartValue:Ljava/lang/Object;

    return-object p0
.end method

.method getSurfaceTransactionHelper()Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    return-object p0
.end method

.method getToken()Landroid/window/WindowContainerToken;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mToken:Landroid/window/WindowContainerToken;

    return-object p0
.end method

.method getTransitionDirection()I
    .locals 0

    .line 229
    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mTransitionDirection:I

    return p0
.end method

.method newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    invoke-interface {p0}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 169
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mEndValue:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    .line 170
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mOneHandedAnimationCallbacks:Ljava/util/List;

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator-$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator-$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 157
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mEndValue:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    .line 158
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 159
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->onEndTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 160
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mOneHandedAnimationCallbacks:Ljava/util/List;

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator-$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator-$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;Landroid/view/SurfaceControl$Transaction;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 147
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mStartValue:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    .line 148
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mOneHandedAnimationCallbacks:Ljava/util/List;

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 184
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 183
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V

    .line 185
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mOneHandedAnimationCallbacks:Ljava/util/List;

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator-$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator-$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method onEndTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    return-void
.end method

.method setCurrentValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    return-void
.end method

.method setSurfaceTransactionHelper(Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    return-void
.end method

.method setTransitionDirection(I)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator<",
            "TT;>;"
        }
    .end annotation

    .line 233
    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mTransitionDirection:I

    return-object p0
.end method

.method updateEndValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mEndValue:Ljava/lang/Object;

    return-void
.end method
