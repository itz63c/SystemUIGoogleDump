.class public final synthetic Lcom/android/wm/shell/apppairs/AppPair-$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/apppairs/AppPair;

.field public final synthetic f$1:Landroid/view/SurfaceControl;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:Landroid/graphics/Rect;

.field public final synthetic f$4:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/apppairs/AppPair;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair-$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/apppairs/AppPair;

    iput-object p2, p0, Lcom/android/wm/shell/apppairs/AppPair-$$ExternalSyntheticLambda3;->f$1:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/apppairs/AppPair-$$ExternalSyntheticLambda3;->f$2:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/wm/shell/apppairs/AppPair-$$ExternalSyntheticLambda3;->f$3:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/wm/shell/apppairs/AppPair-$$ExternalSyntheticLambda3;->f$4:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair-$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/apppairs/AppPair;

    iget-object v1, p0, Lcom/android/wm/shell/apppairs/AppPair-$$ExternalSyntheticLambda3;->f$1:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/apppairs/AppPair-$$ExternalSyntheticLambda3;->f$2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/apppairs/AppPair-$$ExternalSyntheticLambda3;->f$3:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/apppairs/AppPair-$$ExternalSyntheticLambda3;->f$4:Landroid/graphics/Rect;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/apppairs/AppPair;->$r8$lambda$uRZuGY1fq7AGLFpbZ839RXghMy4(Lcom/android/wm/shell/apppairs/AppPair;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
