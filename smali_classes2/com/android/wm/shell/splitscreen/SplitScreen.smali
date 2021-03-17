.class public interface abstract Lcom/android/wm/shell/splitscreen/SplitScreen;
.super Ljava/lang/Object;
.source "SplitScreen.java"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;
    }
.end annotation


# virtual methods
.method public abstract exitSplitScreen()V
.end method

.method public abstract exitSplitScreenOnHide(Z)V
.end method

.method public abstract registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
.end method

.method public abstract setSideStageVisibility(Z)V
.end method

.method public abstract startIntent(Landroid/app/PendingIntent;IILandroid/os/Bundle;)V
.end method

.method public abstract startShortcut(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Landroid/os/UserHandle;)V
.end method

.method public abstract startTask(IIILandroid/os/Bundle;)V
.end method

.method public abstract unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
.end method
