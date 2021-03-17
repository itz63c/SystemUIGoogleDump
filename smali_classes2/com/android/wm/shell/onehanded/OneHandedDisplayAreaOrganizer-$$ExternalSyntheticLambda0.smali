.class public final synthetic Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/window/WindowContainerTransaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iput-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda0;->f$4:Landroid/window/WindowContainerTransaction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda0;->f$3:I

    iget-object v4, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer-$$ExternalSyntheticLambda0;->f$4:Landroid/window/WindowContainerTransaction;

    move-object v5, p1

    check-cast v5, Landroid/window/WindowContainerToken;

    move-object v6, p2

    check-cast v6, Landroid/view/SurfaceControl;

    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->$r8$lambda$wPAFYEPavHWxM_k_bVczcY00CeA(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    return-void
.end method
