.class public Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;
.super Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;
.source "UdfpsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/UdfpsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UdfpsOverlayController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsController;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public hideUdfpsOverlay(I)V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/UdfpsController;->access$100(Lcom/android/systemui/biometrics/UdfpsController;)V

    return-void
.end method

.method public onEnrollmentHelp(I)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/UdfpsController;->access$200(Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/biometrics/UdfpsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsView;->onEnrollmentHelp()V

    return-void
.end method

.method public onEnrollmentProgress(II)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/UdfpsController;->access$200(Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/biometrics/UdfpsView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/UdfpsView;->onEnrollmentProgress(I)V

    return-void
.end method

.method public setDebugMessage(ILjava/lang/String;)V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/UdfpsController;->access$200(Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/biometrics/UdfpsView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/UdfpsView;->setDebugMessage(Ljava/lang/String;)V

    return-void
.end method

.method public showUdfpsOverlay(II)V
    .locals 1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/biometrics/UdfpsController;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    goto :goto_1

    .line 101
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    invoke-direct {v0, p2}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;-><init>(I)V

    iput-object v0, p1, Lcom/android/systemui/biometrics/UdfpsController;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    .line 105
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {p0, p2}, Lcom/android/systemui/biometrics/UdfpsController;->access$000(Lcom/android/systemui/biometrics/UdfpsController;I)V

    return-void
.end method
