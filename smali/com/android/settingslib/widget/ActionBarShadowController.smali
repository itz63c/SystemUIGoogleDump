.class public Lcom/android/settingslib/widget/ActionBarShadowController;
.super Ljava/lang/Object;
.source "ActionBarShadowController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;
    }
.end annotation


# static fields
.field static final ELEVATION_HIGH:F = 8.0f

.field static final ELEVATION_LOW:F


# instance fields
.field private mIsScrollWatcherAttached:Z

.field mScrollChangeWatcher:Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;

.field private mScrollView:Landroid/view/View;


# direct methods
.method private attachScrollWatcher()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 79
    iget-boolean v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mIsScrollWatcherAttached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mIsScrollWatcherAttached:Z

    .line 81
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mScrollView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mScrollChangeWatcher:Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    const/4 p0, 0x0

    .line 82
    throw p0
.end method

.method private detachScrollWatcher()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mScrollView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mIsScrollWatcherAttached:Z

    return-void
.end method
