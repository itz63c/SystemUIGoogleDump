.class final Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;
.super Ljava/lang/Object;
.source "SplashScreenExitAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShiftUpAnimation"
.end annotation


# instance fields
.field private final mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field private final mFromYDelta:F

.field private final mOccludeHoleView:Landroid/view/View;

.field private final mTmpTransform:Landroid/graphics/Matrix;

.field private final mToYDelta:F

.field final synthetic this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;FFLandroid/view/View;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mTmpTransform:Landroid/graphics/Matrix;

    .line 231
    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mFromYDelta:F

    .line 232
    iput p3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mToYDelta:F

    .line 233
    iput-object p4, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mOccludeHoleView:Landroid/view/View;

    .line 234
    new-instance p1, Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-direct {p1, p4}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    return-void
.end method


# virtual methods
.method finish()V
    .locals 6

    .line 266
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->access$100(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->access$100(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->access$300(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 270
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 273
    new-instance v1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    .line 274
    invoke-static {v2}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->access$100(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    const/4 v2, 0x0

    .line 275
    invoke-virtual {v1, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v1

    .line 276
    invoke-virtual {v1, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v1

    .line 278
    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 279
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    invoke-static {v1}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->access$300(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 281
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    const/4 v1, 0x4

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    .line 282
    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->access$100(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl;)V

    .line 281
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method onAnimationProgress(F)V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->access$100(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->access$100(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->access$200()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 243
    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mFromYDelta:F

    iget v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mToYDelta:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 245
    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mOccludeHoleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 246
    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mTmpTransform:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 249
    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->access$300(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 250
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 251
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mTmpTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    invoke-static {v1}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->access$400(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    .line 252
    invoke-static {v2}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->access$400(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    invoke-static {v3}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->access$500(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 251
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 255
    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    .line 256
    invoke-static {v1}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->access$100(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mTmpTransform:Landroid/graphics/Matrix;

    .line 257
    invoke-virtual {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    .line 258
    invoke-virtual {v0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 262
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->access$300(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_1
    :goto_0
    return-void
.end method
