.class public final Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$gateListener$1;
.super Ljava/lang/Object;
.source "SetupWizardSuppressed.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/gates/Gate$Listener;


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

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGateChanged(Lcom/google/android/systemui/columbus/gates/Gate;)V
    .locals 2

    const-string v0, "gate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->access$getKeyguardVisibility$p(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->isKeyguardShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->access$updateCurrentDefaultLauncher(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)V

    .line 54
    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->updateLauncherIsShowing$default(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;Landroid/app/ActivityManager$RunningTaskInfo;ILjava/lang/Object;)V

    .line 55
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->access$updateBlocking(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)V

    :cond_0
    return-void
.end method
