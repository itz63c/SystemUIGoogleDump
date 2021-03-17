.class Lcom/android/wm/shell/pip/PipTaskOrganizer$4;
.super Landroid/window/WindowContainerTransactionCallback;
.source "PipTaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResize(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field final synthetic val$destinationBounds:Landroid/graphics/Rect;

.field final synthetic val$snapshotSurface:Landroid/view/SurfaceControl;


# direct methods
.method public static synthetic $r8$lambda$AyShQKBMVLH9zTN80QBNFK9W-T0(Lcom/android/wm/shell/pip/PipTaskOrganizer$4;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->lambda$onTransactionReady$0(Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cZ642MiF7gaLPdBXlboJgITw1-k(Lcom/android/wm/shell/pip/PipTaskOrganizer$4;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->lambda$onTransactionReady$1(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V
    .locals 0

    .line 939
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->val$snapshotSurface:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->val$destinationBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/window/WindowContainerTransactionCallback;-><init>()V

    return-void
.end method

.method private synthetic lambda$onTransactionReady$0(Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 955
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 956
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 957
    invoke-static {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$1200(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 958
    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 959
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private synthetic lambda$onTransactionReady$1(Landroid/view/SurfaceControl;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 952
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 953
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$1100(Lcom/android/wm/shell/pip/PipTaskOrganizer;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 954
    new-instance v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$4-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$4-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer$4;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 961
    new-instance v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$4$1;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$4$1;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer$4;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 970
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 4

    .line 943
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->val$snapshotSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->val$snapshotSurface:Landroid/view/SurfaceControl;

    .line 944
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 945
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->val$destinationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->val$destinationBounds:Landroid/graphics/Rect;

    .line 946
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 947
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$1000(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->val$snapshotSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p2, v2, p1, v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 948
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 950
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object p1, p1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->val$snapshotSurface:Landroid/view/SurfaceControl;

    new-instance v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer$4-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer$4;Landroid/view/SurfaceControl;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
