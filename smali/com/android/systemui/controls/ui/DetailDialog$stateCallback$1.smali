.class public final Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;
.super Ljava/lang/Object;
.source "DetailDialog.kt"

# interfaces
.implements Lcom/android/wm/shell/TaskView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/DetailDialog;-><init>(Landroid/content/Context;Lcom/android/wm/shell/TaskView;Landroid/content/Intent;Lcom/android/systemui/controls/ui/ControlViewHolder;)V
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

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialized()V
    .locals 6

    .line 69
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/DetailDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "controls.DISPLAY_IN_PANEL"

    const/4 v2, 0x1

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x80000

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/DetailDialog;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {v1, v3, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    .line 82
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 83
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {v4}, Lcom/android/systemui/controls/ui/DetailDialog;->getTaskView()Lcom/android/wm/shell/TaskView;

    move-result-object v4

    .line 84
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const/high16 v5, 0xc000000

    invoke-static {p0, v3, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 83
    invoke-virtual {v4, p0, v2, v1}, Lcom/android/wm/shell/TaskView;->startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public onReleased()V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/DetailDialog;->removeDetailTask()V

    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/DetailDialog;->setDetailTaskId(I)V

    return-void
.end method

.method public onTaskRemovalStarted(I)V
    .locals 1

    .line 92
    iget-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/DetailDialog;->setDetailTaskId(I)V

    .line 93
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/DetailDialog;->dismiss()V

    return-void
.end method
