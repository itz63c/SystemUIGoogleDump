.class Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;
.super Ljava/lang/Object;
.source "UdfpsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/UdfpsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServerRequest"
.end annotation


# instance fields
.field final mCallback:Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;

.field final mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

.field final mRequestReason:I


# direct methods
.method constructor <init>(ILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;Lcom/android/systemui/biometrics/UdfpsEnrollHelper;)V
    .locals 0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->mRequestReason:I

    .line 199
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->mCallback:Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;

    .line 200
    iput-object p3, p0, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    return-void
.end method


# virtual methods
.method onEnrollmentHelp()V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    if-eqz p0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->onEnrollmentHelp()V

    :cond_0
    return-void
.end method

.method onEnrollmentProgress(I)V
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    if-eqz p0, :cond_0

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->onEnrollmentProgress(I)V

    :cond_0
    return-void
.end method

.method onUserCanceled()V
    .locals 2

    .line 217
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->mCallback:Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;

    invoke-interface {p0}, Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;->onUserCanceled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "UdfpsController"

    const-string v1, "Remote exception"

    .line 219
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
