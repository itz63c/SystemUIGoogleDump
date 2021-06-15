.class public final Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SetupWizardSuppressed.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/actions/SetupWizardAction;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$broadcastReceiver$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;

    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 45
    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$broadcastReceiver$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->access$updateCurrentDefaultLauncher(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)V

    .line 46
    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$broadcastReceiver$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p2, v0, p2}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->updateLauncherIsShowing$default(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;Landroid/app/ActivityManager$RunningTaskInfo;ILjava/lang/Object;)V

    .line 47
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$broadcastReceiver$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->access$updateBlocking(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)V

    return-void
.end method
