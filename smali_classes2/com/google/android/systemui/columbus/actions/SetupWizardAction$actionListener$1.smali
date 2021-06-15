.class public final Lcom/google/android/systemui/columbus/actions/SetupWizardAction$actionListener$1;
.super Ljava/lang/Object;
.source "SetupWizardAction.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/actions/Action$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/SetupWizardAction;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/actions/SettingsAction;Lcom/google/android/systemui/columbus/gates/DeferredSetup;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/actions/SetupWizardAction;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/actions/SetupWizardAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction$actionListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/SetupWizardAction;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionAvailabilityChanged(Lcom/google/android/systemui/columbus/actions/Action;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction$actionListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/SetupWizardAction;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->access$updateAvailable(Lcom/google/android/systemui/columbus/actions/SetupWizardAction;)V

    return-void
.end method
