.class public Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;
.super Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;
.source "KeyguardIndicationControllerGoogle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GoogleKeyguardCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;


# direct methods
.method protected constructor <init>(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/settingslib/fuelgauge/BatteryStatus;)V
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    iget v1, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$402(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Z)Z

    .line 282
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    iget v1, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    invoke-static {v0, v1}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$502(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;I)I

    .line 283
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->onRefreshBatteryInfo(Lcom/android/settingslib/fuelgauge/BatteryStatus;)V

    .line 285
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$400(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 286
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-static {p0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$000(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)V

    goto :goto_1

    .line 288
    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-static {p0, v2}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$102(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Z)Z

    :goto_1
    return-void
.end method
