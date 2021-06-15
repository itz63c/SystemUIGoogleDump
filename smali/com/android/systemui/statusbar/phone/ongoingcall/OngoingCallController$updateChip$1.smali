.class final Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChip$1;
.super Ljava/lang/Object;
.source "OngoingCallController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->updateChip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $currentOngoingCallInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChip$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChip$1;->$currentOngoingCallInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChip$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->access$getLogger$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;->logChipClicked()V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChip$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->access$getActivityStarter$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object v0

    .line 166
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChip$1;->$currentOngoingCallInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    .line 167
    sget-object v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->Companion:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;->fromView(Landroid/view/View;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    move-result-object p1

    const/4 v1, 0x0

    .line 165
    invoke-interface {v0, p0, v1, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-void
.end method
