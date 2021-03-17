.class public final Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;
.super Ljava/lang/Object;
.source "DetailDialog.kt"

# interfaces
.implements Lcom/android/wm/shell/TaskView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/DetailDialog;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/wm/shell/TaskView;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/DetailDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/DetailDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialized()V
    .locals 4

    .line 67
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/DetailDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "controls.DISPLAY_IN_PANEL"

    const/4 v2, 0x1

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x80000

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/DetailDialog;->getActivityView()Lcom/android/wm/shell/TaskView;

    move-result-object v1

    .line 75
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 77
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v2, 0x0

    .line 74
    invoke-virtual {v1, p0, v2, v0}, Lcom/android/wm/shell/TaskView;->startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public onReleased()V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/DetailDialog;->removeDetailTask()V

    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/DetailDialog;->setDetailTaskId(I)V

    return-void
.end method

.method public onTaskRemovalStarted(I)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/DetailDialog;->setDetailTaskId(I)V

    .line 82
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/DetailDialog;->dismiss()V

    return-void
.end method
