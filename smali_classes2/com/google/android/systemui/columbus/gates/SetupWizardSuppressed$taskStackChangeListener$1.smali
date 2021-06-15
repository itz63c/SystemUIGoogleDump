.class public final Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$taskStackChangeListener$1;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
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

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$taskStackChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    const-string v0, "taskInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$taskStackChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;

    invoke-static {v0, p1}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->access$updateLauncherIsShowing(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 62
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$taskStackChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->access$updateBlocking(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)V

    return-void
.end method
