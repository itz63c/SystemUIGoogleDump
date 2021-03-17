.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

.field public final synthetic f$1:Landroid/app/PendingIntent;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Landroid/app/PendingIntent;IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda2;->f$1:Landroid/app/PendingIntent;

    iput p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda2;->f$3:I

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda2;->f$4:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda2;->f$1:Landroid/app/PendingIntent;

    iget v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda2;->f$2:I

    iget v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda2;->f$3:I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda2;->f$4:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->$r8$lambda$SgHLaVoae9kNRIWhfPJhpcHtMRc(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Landroid/app/PendingIntent;IILandroid/os/Bundle;)V

    return-void
.end method
