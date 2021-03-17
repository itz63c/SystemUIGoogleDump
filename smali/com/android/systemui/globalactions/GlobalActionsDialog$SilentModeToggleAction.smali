.class Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 7

    .line 1935
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const v2, 0x108032f

    const v3, 0x108032e

    const v4, 0x104039f

    const v5, 0x104039e

    const v6, 0x104039d

    move-object v0, p0

    move-object v1, p1

    .line 1936
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;IIIII)V

    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1945
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/media/AudioManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 1947
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/media/AudioManager;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    :goto_0
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showDuringKeyguard()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
