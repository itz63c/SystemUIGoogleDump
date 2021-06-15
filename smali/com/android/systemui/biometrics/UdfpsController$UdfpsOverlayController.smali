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

    .line 224
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public hideUdfpsOverlay(I)V
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mServerRequest:Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;

    .line 243
    invoke-static {p0}, Lcom/android/systemui/biometrics/UdfpsController;->access$600(Lcom/android/systemui/biometrics/UdfpsController;)V

    return-void
.end method

.method public onEnrollmentHelp(I)V
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mServerRequest:Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;

    if-nez p0, :cond_0

    const-string p0, "UdfpsController"

    const-string p1, "onEnrollmentHelp received but serverRequest is null"

    .line 258
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->onEnrollmentHelp()V

    return-void
.end method

.method public onEnrollmentProgress(II)V
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mServerRequest:Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;

    if-nez p0, :cond_0

    const-string p0, "UdfpsController"

    const-string p1, "onEnrollProgress received but serverRequest is null"

    .line 249
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 252
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->onEnrollmentProgress(I)V

    return-void
.end method

.method public setDebugMessage(ILjava/lang/String;)V
    .locals 0

    .line 266
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {p1}, Lcom/android/systemui/biometrics/UdfpsController;->access$700(Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/biometrics/UdfpsView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 269
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/UdfpsController;->access$700(Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/biometrics/UdfpsView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/UdfpsView;->setDebugMessage(Ljava/lang/String;)V

    return-void
.end method

.method public showUdfpsOverlay(IILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V
    .locals 2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    .line 231
    :cond_1
    :goto_0
    new-instance p1, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/UdfpsController;->access$100(Lcom/android/systemui/biometrics/UdfpsController;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;-><init>(Landroid/content/Context;I)V

    .line 236
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;

    invoke-direct {v1, p2, p3, p1}, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;-><init>(ILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;Lcom/android/systemui/biometrics/UdfpsEnrollHelper;)V

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController;->mServerRequest:Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;

    .line 237
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/UdfpsController;->access$600(Lcom/android/systemui/biometrics/UdfpsController;)V

    return-void
.end method
