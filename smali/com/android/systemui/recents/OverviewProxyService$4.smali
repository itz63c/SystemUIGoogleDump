.class Lcom/android/systemui/recents/OverviewProxyService$4;
.super Ljava/lang/Object;
.source "OverviewProxyService.java"

# interfaces
.implements Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/OverviewProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStagePositionChanged(II)V
    .locals 1

    .line 783
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1200(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/shared/recents/ISplitScreenListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 784
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1200(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/shared/recents/ISplitScreenListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/ISplitScreenListener;->onStagePositionChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "OverviewProxyService"

    const-string p2, "onStagePositionChanged"

    .line 787
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onTaskStageChanged(II)V
    .locals 1

    .line 794
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1200(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/shared/recents/ISplitScreenListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 795
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1200(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/shared/recents/ISplitScreenListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/ISplitScreenListener;->onTaskStageChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "OverviewProxyService"

    const-string p2, "onTaskStageChanged"

    .line 798
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
