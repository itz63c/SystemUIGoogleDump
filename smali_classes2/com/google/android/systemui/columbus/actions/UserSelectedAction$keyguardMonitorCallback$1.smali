.class public final Lcom/google/android/systemui/columbus/actions/UserSelectedAction$keyguardMonitorCallback$1;
.super Ljava/lang/Object;
.source "UserSelectedAction.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/UserSelectedAction;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusSettings;Ljava/util/Map;Lcom/google/android/systemui/columbus/actions/TakeScreenshot;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/google/android/systemui/columbus/PowerManagerWrapper;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$keyguardMonitorCallback$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardShowingChanged()V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$keyguardMonitorCallback$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->access$updateAvailable(Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)V

    return-void
.end method