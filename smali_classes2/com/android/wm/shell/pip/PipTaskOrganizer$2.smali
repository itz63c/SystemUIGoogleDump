.class Lcom/android/wm/shell/pip/PipTaskOrganizer$2;
.super Landroid/window/WindowContainerTransactionCallback;
.source "PipTaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/PipTaskOrganizer;->exitPip(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field final synthetic val$animationDurationMs:I

.field final synthetic val$destinationBounds:Landroid/graphics/Rect;

.field final synthetic val$direction:I


# direct methods
.method public static synthetic $r8$lambda$cuq5stLADUAZTPwNq--C3h0Or8Q(Lcom/android/wm/shell/pip/PipTaskOrganizer$2;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;->lambda$onTransactionReady$0(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;II)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;->val$destinationBounds:Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;->val$direction:I

    iput p4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;->val$animationDurationMs:I

    invoke-direct {p0}, Landroid/window/WindowContainerTransactionCallback;-><init>()V

    return-void
.end method

.method private synthetic lambda$onTransactionReady$0(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V
    .locals 8

    .line 340
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 343
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 344
    invoke-static {p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$500(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Landroid/app/PictureInPictureParams;

    move-result-object p1

    .line 343
    invoke-static {p1, p2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 345
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$600(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v7}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$700(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;IILjava/util/function/Consumer;)V

    .line 348
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    sget-object p1, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->EXITING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$802(Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    return-void
.end method


# virtual methods
.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 7

    .line 339
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object p1, p1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;->val$destinationBounds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;->val$direction:I

    iget v5, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;->val$animationDurationMs:I

    new-instance v6, Lcom/android/wm/shell/pip/PipTaskOrganizer$2-$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/pip/PipTaskOrganizer$2-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer$2;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V

    invoke-interface {p1, v6}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
