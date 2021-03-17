.class Lcom/android/wm/shell/pip/PipTaskOrganizer$3;
.super Landroid/window/WindowContainerTransactionCallback;
.source "PipTaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyEnterPipSyncTransaction(Landroid/graphics/Rect;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$gYcmjAP5ulYY8F7LoLC28GRRBEw(Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$3;->lambda$onTransactionReady$0(Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Ljava/lang/Runnable;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$3;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$3;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/window/WindowContainerTransactionCallback;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onTransactionReady$0(Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .locals 0

    .line 506
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    if-eqz p1, :cond_0

    .line 508
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 505
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$3;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object p1, p1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$3;->val$runnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$3-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$3-$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
