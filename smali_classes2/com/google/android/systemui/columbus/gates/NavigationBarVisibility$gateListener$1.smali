.class public final Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$gateListener$1;
.super Ljava/lang/Object;
.source "NavigationBarVisibility.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/gates/Gate$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/systemui/assist/AssistManager;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;Lcom/android/systemui/statusbar/CommandQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGateChanged(Lcom/google/android/systemui/columbus/gates/Gate;)V
    .locals 1

    const-string v0, "gate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->access$getKeyguardGate$p(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;)Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->access$updateKeyguardState(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->access$getNavigationModeGate$p(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;)Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 47
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->access$updateNavigationModeState(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;)V

    :cond_1
    :goto_0
    return-void
.end method
