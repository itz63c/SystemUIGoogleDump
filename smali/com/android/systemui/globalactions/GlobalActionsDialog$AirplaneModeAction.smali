.class Lcom/android/systemui/globalactions/GlobalActionsDialog$AirplaneModeAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirplaneModeAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 7

    .line 1892
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AirplaneModeAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const v2, 0x10803cd

    const v3, 0x10803cf

    const v4, 0x10403a4

    const v5, 0x10403a3

    const v6, 0x10403a2

    move-object v0, p0

    move-object v1, p1

    .line 1893
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;IIIII)V

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2

    .line 1916
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AirplaneModeAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3300(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1919
    :cond_0
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->in_ecm_mode()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 1920
    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->TurningOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->TurningOff:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    .line 1921
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AirplaneModeAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3602(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    :cond_2
    return-void
.end method

.method onToggle(Z)V
    .locals 2

    .line 1902
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AirplaneModeAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3300(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->in_ecm_mode()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1903
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AirplaneModeAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3402(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z

    .line 1905
    new-instance p1, Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 1907
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1908
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AirplaneModeAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1900(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1910
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AirplaneModeAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3500(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)V

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
