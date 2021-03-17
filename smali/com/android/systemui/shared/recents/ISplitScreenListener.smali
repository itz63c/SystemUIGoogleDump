.class public interface abstract Lcom/android/systemui/shared/recents/ISplitScreenListener;
.super Ljava/lang/Object;
.source "ISplitScreenListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/ISplitScreenListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onStagePositionChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTaskStageChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
