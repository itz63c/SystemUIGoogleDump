.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

.field public final synthetic f$1:Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda3;->f$1:Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda3;->f$1:Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    invoke-static {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->$r8$lambda$HPOqgEzLO0gLhLsLR4QO3f8xbVM(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    return-void
.end method
