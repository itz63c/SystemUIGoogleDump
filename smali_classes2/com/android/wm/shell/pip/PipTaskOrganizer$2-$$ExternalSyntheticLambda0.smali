.class public final synthetic Lcom/android/wm/shell/pip/PipTaskOrganizer$2-$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/PipTaskOrganizer$2;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer$2;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2-$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/PipTaskOrganizer$2;

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2-$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2-$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2-$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2-$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2-$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/PipTaskOrganizer$2;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2-$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2-$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2-$$ExternalSyntheticLambda0;->f$3:I

    iget p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2-$$ExternalSyntheticLambda0;->f$4:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;->$r8$lambda$cuq5stLADUAZTPwNq--C3h0Or8Q(Lcom/android/wm/shell/pip/PipTaskOrganizer$2;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V

    return-void
.end method
