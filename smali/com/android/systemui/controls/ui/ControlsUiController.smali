.class public interface abstract Lcom/android/systemui/controls/ui/ControlsUiController;
.super Ljava/lang/Object;
.source "ControlsUiController.kt"


# virtual methods
.method public abstract closeDialogs(Z)V
.end method

.method public abstract hide()V
.end method

.method public abstract onActionResponse(Landroid/content/ComponentName;Ljava/lang/String;I)V
.end method

.method public abstract onRefreshState(Landroid/content/ComponentName;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract show(Landroid/view/ViewGroup;Ljava/lang/Runnable;Z)V
.end method
