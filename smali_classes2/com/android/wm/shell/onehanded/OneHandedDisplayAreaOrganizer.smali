.class public Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;
.super Landroid/window/DisplayAreaOrganizer;
.source "OneHandedDisplayAreaOrganizer.java"


# instance fields
.field private mAnimationController:Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

.field private mBackgroundPanelOrganizer:Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;

.field private final mDefaultDisplayBounds:Landroid/graphics/Rect;

.field mDisplayAreaTokenMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/window/WindowContainerToken;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private mEnterExitAnimationDurationMs:I

.field private mIsInOneHanded:Z

.field private final mLastVisualDisplayBounds:Landroid/graphics/Rect;

.field mOneHandedAnimationCallback:Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;

.field private mSurfaceControlTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

.field private mTransitionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;


# direct methods
.method public static synthetic $r8$lambda$uJs5R5QYHL56EwVda5i2UqoBl0Q(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->lambda$resetWindowsOffset$1(Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wPAFYEPavHWxM_k_bVczcY00CeA(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->lambda$scheduleOffset$0(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/onehanded/OneHandedAnimationController;Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    .line 119
    invoke-direct {p0, p6}, Landroid/window/DisplayAreaOrganizer;-><init>(Ljava/util/concurrent/Executor;)V

    .line 63
    new-instance p6, Landroid/graphics/Rect;

    invoke-direct {p6}, Landroid/graphics/Rect;-><init>()V

    iput-object p6, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mLastVisualDisplayBounds:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mDefaultDisplayBounds:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mDisplayAreaTokenMap:Landroid/util/ArrayMap;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mTransitionCallbacks:Ljava/util/List;

    .line 79
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mOneHandedAnimationCallback:Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;

    .line 120
    iput-object p3, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mAnimationController:Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    .line 121
    iput-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 122
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p6, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$integer;->config_one_handed_translate_animation_duration:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const-string p2, "persist.debug.one_handed_translate_animation_duration"

    .line 126
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mEnterExitAnimationDurationMs:I

    .line 128
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator-$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator-$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 129
    iput-object p4, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    .line 130
    iput-object p5, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mBackgroundPanelOrganizer:Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mAnimationController:Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->resetWindowsOffsetInternal(I)V

    return-void
.end method

.method private animateWindows(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mAnimationController:Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    .line 244
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->getAnimator(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p1, p5}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mOneHandedAnimationCallback:Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;

    .line 247
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->addOneHandedAnimationCallback(Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    .line 248
    invoke-virtual {p2}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->getAnimationCallback()Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->addOneHandedAnimationCallback(Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mBackgroundPanelOrganizer:Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;

    .line 250
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->getOneHandedAnimationCallback()Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;

    move-result-object p0

    .line 249
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->addOneHandedAnimationCallback(Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    move-result-object p0

    int-to-long p1, p6

    .line 251
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 252
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private getDisplayBounds()Landroid/graphics/Rect;
    .locals 3

    .line 294
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 295
    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 296
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 298
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v1, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private synthetic lambda$resetWindowsOffset$1(Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V
    .locals 1

    .line 225
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mAnimationController:Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    .line 226
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->getAnimatorMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    if-eqz p0, :cond_0

    .line 227
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 p0, 0x0

    .line 230
    invoke-virtual {p1, p4, p0, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    const/4 p1, -0x1

    .line 231
    invoke-virtual {p0, p4, p1, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    .line 234
    invoke-virtual {p2, p3, p0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :cond_1
    return-void
.end method

.method private synthetic lambda$scheduleOffset$0(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V
    .locals 7

    .line 203
    iget v6, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mEnterExitAnimationDurationMs:I

    move-object v0, p0

    move-object v1, p5

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->animateWindows(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 205
    invoke-virtual {p4, p5, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method private resetWindowsOffset(Landroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 222
    invoke-interface {v0}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mDisplayAreaTokenMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 237
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private resetWindowsOffsetInternal(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 215
    :cond_0
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 216
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->resetWindowsOffset(Landroid/window/WindowContainerTransaction;)V

    .line 217
    invoke-virtual {p0, p1}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "OneHandedDisplayAreaOrganizerstates: "

    .line 310
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mIsInOneHanded="

    .line 311
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mIsInOneHanded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mDisplayAreaTokenMap="

    .line 313
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mDisplayAreaTokenMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mDefaultDisplayBounds="

    .line 315
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mDefaultDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mLastVisualDisplayBounds="

    .line 317
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mLastVisualDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  getDisplayBounds()="

    .line 319
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method finishOffset(II)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gtz p1, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 261
    :goto_1
    iput-boolean v2, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mIsInOneHanded:Z

    .line 262
    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mLastVisualDisplayBounds:Landroid/graphics/Rect;

    if-ne p2, v1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    invoke-virtual {v2, v0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 264
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mTransitionCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_3
    if-ltz p1, :cond_4

    .line 265
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mTransitionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;

    if-ne p2, v1, :cond_3

    .line 267
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->getLastVisualDisplayBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;->onStartFinished(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 269
    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->getLastVisualDisplayBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;->onStopFinished(Landroid/graphics/Rect;)V

    :goto_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public getLastVisualDisplayBounds()Landroid/graphics/Rect;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mLastVisualDisplayBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public isInOneHanded()Z
    .locals 0

    .line 280
    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mIsInOneHanded:Z

    return p0
.end method

.method public onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mDisplayAreaTokenMap:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDisplayAreaVanished(Landroid/window/DisplayAreaInfo;)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mDisplayAreaTokenMap:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onRotateDisplay(IILandroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mDefaultDisplayBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sub-int/2addr p1, p2

    .line 174
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 p2, 0x2

    rem-int/2addr p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 177
    invoke-direct {p0, p3}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->resetWindowsOffset(Landroid/window/WindowContainerTransaction;)V

    .line 178
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mDefaultDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 179
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mLastVisualDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 180
    invoke-virtual {p0, v1, p2}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->finishOffset(II)V

    :cond_1
    return-void
.end method

.method public registerOrganizer(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/window/DisplayAreaAppearedInfo;",
            ">;"
        }
    .end annotation

    .line 147
    invoke-super {p0, p1}, Landroid/window/DisplayAreaOrganizer;->registerOrganizer(I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 148
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 149
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/DisplayAreaAppearedInfo;

    .line 150
    invoke-virtual {v1}, Landroid/window/DisplayAreaAppearedInfo;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v2

    invoke-virtual {v1}, Landroid/window/DisplayAreaAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mDefaultDisplayBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method public registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mTransitionCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public scheduleOffset(II)V
    .locals 7

    .line 189
    new-instance v3, Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mDefaultDisplayBounds:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-direct {v3, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 193
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->getLastVisualDisplayBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->getLastVisualDisplayBounds()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mDefaultDisplayBounds:Landroid/graphics/Rect;

    :goto_0
    move-object v2, p1

    if-lez p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    :goto_1
    move v4, p1

    .line 200
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 201
    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mDisplayAreaTokenMap:Landroid/util/ArrayMap;

    new-instance v6, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/window/WindowContainerTransaction;)V

    invoke-virtual {p2, v6}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 207
    invoke-virtual {p0, p1}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public unregisterOrganizer()V
    .locals 1

    .line 158
    invoke-super {p0}, Landroid/window/DisplayAreaOrganizer;->unregisterOrganizer()V

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->resetWindowsOffset(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method
