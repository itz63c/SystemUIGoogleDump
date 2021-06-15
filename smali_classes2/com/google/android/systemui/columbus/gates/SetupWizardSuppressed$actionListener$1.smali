.class public final Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$actionListener$1;
.super Ljava/lang/Object;
.source "SetupWizardSuppressed.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/actions/Action$Listener;


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

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$actionListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionAvailabilityChanged(Lcom/google/android/systemui/columbus/actions/Action;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$actionListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->access$getSetupWizardAction$p(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)Lcom/google/android/systemui/columbus/actions/SetupWizardAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$actionListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->access$onSetupWizardActionAvailable(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$actionListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->access$onSetupWizardActionUnavailable(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)V

    .line 40
    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$actionListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->access$updateBlocking(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)V

    return-void
.end method
