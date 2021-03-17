.class public interface abstract Lcom/android/systemui/plugins/FalsingManager;
.super Ljava/lang/Object;
.source "FalsingManager.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x6
.end annotation


# static fields
.field public static final VERSION:I = 0x6


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract isClassifierEnabled()Z
.end method

.method public abstract isFalseDoubleTap()Z
.end method

.method public abstract isFalseTap(Z)Z
.end method

.method public abstract isFalseTouch(I)Z
.end method

.method public abstract isReportingEnabled()Z
.end method

.method public abstract isUnlockingDisabled()Z
.end method

.method public abstract onProximityEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
.end method

.method public abstract onSuccessfulUnlock()V
.end method

.method public abstract reportRejectedTouch()Landroid/net/Uri;
.end method

.method public abstract shouldEnforceBouncer()Z
.end method
