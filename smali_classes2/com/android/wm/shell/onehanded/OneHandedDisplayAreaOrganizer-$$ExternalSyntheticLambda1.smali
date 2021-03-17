.class public final synthetic Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$2:Landroid/window/WindowContainerTransaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iput-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda1;->f$1:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda1;->f$2:Landroid/window/WindowContainerTransaction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda1;->f$1:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda1;->f$2:Landroid/window/WindowContainerTransaction;

    check-cast p1, Landroid/window/WindowContainerToken;

    check-cast p2, Landroid/view/SurfaceControl;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->$r8$lambda$uJs5R5QYHL56EwVda5i2UqoBl0Q(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    return-void
.end method
