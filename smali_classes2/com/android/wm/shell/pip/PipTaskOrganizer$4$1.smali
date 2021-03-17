.class Lcom/android/wm/shell/pip/PipTaskOrganizer$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PipTaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->lambda$onTransactionReady$1(Landroid/view/SurfaceControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/wm/shell/pip/PipTaskOrganizer$4;

.field final synthetic val$snapshotSurface:Landroid/view/SurfaceControl;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer$4;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 961
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4$1;->this$1:Lcom/android/wm/shell/pip/PipTaskOrganizer$4;

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4$1;->val$snapshotSurface:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 964
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4$1;->this$1:Lcom/android/wm/shell/pip/PipTaskOrganizer$4;

    iget-object p1, p1, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 965
    invoke-static {p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$1200(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 966
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4$1;->val$snapshotSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 967
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
