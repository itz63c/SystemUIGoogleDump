.class public interface abstract Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
.super Ljava/lang/Object;
.source "DragDownHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/DragDownHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DragDownCallback"
.end annotation


# virtual methods
.method public abstract canDragDown()Z
.end method

.method public abstract isDragDownAnywhereEnabled()Z
.end method

.method public abstract isDragDownEnabledForView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
.end method

.method public abstract isFalsingCheckNeeded()Z
.end method

.method public abstract onCrossedThreshold(Z)V
.end method

.method public abstract onDragDownReset()V
.end method

.method public abstract onDraggedDown(Landroid/view/View;I)V
.end method

.method public abstract onTouchSlopExceeded()V
.end method

.method public abstract setEmptyDragAmount(F)V
.end method
