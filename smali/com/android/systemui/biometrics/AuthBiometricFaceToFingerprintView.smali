.class public Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView;
.super Lcom/android/systemui/biometrics/AuthBiometricFaceView;
.source "AuthBiometricFaceToFingerprintView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView$UdfpsIconController;
    }
.end annotation


# instance fields
.field private mActiveSensorType:I

.field mUdfpsMeasureAdapter:Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricFaceView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 88
    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView;->mActiveSensorType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    .line 88
    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView;->mActiveSensorType:I

    return-void
.end method


# virtual methods
.method protected getDelayAfterAuthenticatedDurationMs()I
    .locals 2

    .line 112
    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView;->mActiveSensorType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 113
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/biometrics/AuthBiometricFaceView;->getDelayAfterAuthenticatedDurationMs()I

    move-result p0

    :goto_0
    return p0
.end method

.method protected getIconController()Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;
    .locals 4

    .line 124
    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView;->mActiveSensorType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView;->mIconController:Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;

    instance-of v0, v0, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView$UdfpsIconController;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView$UdfpsIconController;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView$UdfpsIconController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView;->mIconController:Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;

    .line 128
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView;->mIconController:Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;

    return-object p0

    .line 130
    :cond_1
    invoke-super {p0}, Lcom/android/systemui/biometrics/AuthBiometricFaceView;->getIconController()Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;

    move-result-object p0

    return-object p0
.end method

.method onMeasureInternal(II)Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;
    .locals 1

    .line 145
    invoke-super {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;->onMeasureInternal(II)Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    move-result-object v0

    .line 146
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView;->mUdfpsMeasureAdapter:Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;

    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->onMeasureInternal(IILcom/android/systemui/biometrics/AuthDialog$LayoutParams;)Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method setFingerprintSensorProps(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 1

    .line 101
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView;->mUdfpsMeasureAdapter:Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getSensorProps()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 106
    :cond_1
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;-><init>(Landroid/view/ViewGroup;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView;->mUdfpsMeasureAdapter:Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;

    :cond_2
    return-void
.end method

.method protected supportsManualRetry()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateState(I)V
    .locals 2

    .line 135
    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 136
    iput v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView;->mActiveSensorType:I

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->setRequireConfirmation(Z)V

    .line 139
    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricFaceView;->updateState(I)V

    return-void
.end method
